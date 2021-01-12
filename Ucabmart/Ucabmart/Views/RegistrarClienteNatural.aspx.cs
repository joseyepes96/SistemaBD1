﻿using MessagingToolkit.QRCode.Codec;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ucabmart.Controller;
using Ucabmart.Engine;

namespace Ucabmart.Views
{
    public partial class RegistrarClienteNatural : System.Web.UI.Page
    {
        Lugar nombreLugar = new Lugar(0);
        int  codigoEstado = -1, codigoMunicipio = -1;

        public void cargarPagina(Boolean flag) {
           List<Lugar> listaLugar = new List<Lugar>(); 
            listaLugar = nombreLugar.Todos();
            
            if (flag)
            {
                foreach (Lugar item in listaLugar)
                {
                    if (item.Tipo == "Estado")
                        dplEstado.Items.Add(item.Nombre);
                }

                foreach (Lugar item in listaLugar)
                {
                    if (dplEstado.SelectedValue == item.Nombre && item.CodigoUbicacion == 1)
                        codigoEstado = item.Codigo;
                      //almacena el codigo del estado
                }

                foreach (Lugar item in listaLugar)
                {
                    if (item.CodigoUbicacion == codigoEstado)   //compara el codigo del estado con el codigo del municipio
                        dplMunicipio.Items.Add(item.Nombre);      //agrega los municipios                       
                }

                foreach (Lugar item in listaLugar)
                {
                    if (dplMunicipio.SelectedValue == item.Nombre && codigoEstado == item.CodigoUbicacion)   //compara el codigo del estado con el codigo del municipio
                        codigoMunicipio = item.Codigo;
                      //almacena el codigo del municipio 
                }

                foreach (Lugar item in listaLugar)
                {
                    if (item.CodigoUbicacion == codigoMunicipio)  //compara el codigo del municipio con el codigo de la parroquia
                        dplParroquia.Items.Add(item.Nombre);
                }
            }
            else
            {

                foreach (Lugar item in listaLugar)
                {
                    if (dplEstado.SelectedValue == item.Nombre && item.CodigoUbicacion == 1)
                        codigoEstado = item.Codigo;
                }
                dplMunicipio.Items.Clear();
                dplParroquia.Items.Clear();

                foreach (Lugar item in listaLugar)
                {
                    if (codigoEstado == item.CodigoUbicacion)
                        dplMunicipio.Items.Add(item.Nombre);
                }

                foreach (Lugar item in listaLugar)
                {
                    if (dplMunicipio.SelectedValue == item.Nombre && codigoEstado == item.CodigoUbicacion)
                        codigoMunicipio = item.Codigo;

                }

                foreach (Lugar item in listaLugar)
                {
                    if (codigoMunicipio == item.CodigoUbicacion)
                        dplParroquia.Items.Add(item.Nombre);
                     
                }
            }
        }
        

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarPagina(true);

        }

        public string cadena;

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try {
                CorreoElectronico ctrlCorreo = new CorreoElectronico(txtCorreo.Text);
                ctrlCorreo.Insertar();
             //   List<CorreoElectronico> listaCorreo = new List<CorreoElectronico>();
             //   int codigoCorreo = -1; 
             //   foreach (CorreoElectronico item in listaCorreo)   //Busca obtener el codigo de correo que se acaba de agregar
             //   {
             //       if (item.Direccion == txtCorreo.Text)
             //           codigoCorreo = item.Codigo;
             //   }

                Cliente datosCliente = new Cliente(dplRif.SelectedValue + txtRif.Text, txtContraseña.Text, ctrlCorreo,null);
             //   datosCliente.RIF = dplRif.SelectedValue + txtRif.Text;
             //   datosCliente.Password = txtContraseña.Text;
             //   datosCliente.CodigoCorreoElectronico = codigoCorreo;
             //   datosCliente.CodigoTienda = 0;
                datosCliente.Insertar();

                Natural datosNatural = new Natural();
                datosNatural.RIF = dplRif.SelectedValue + txtRif.Text;
                datosNatural.Nombre1 = Nombre1.Text;
                datosNatural.Nombre2 = Nombre2.Text;
                datosNatural.Apellido1 = Apellido1.Text;
                datosNatural.Apellido2 = Apellido2.Text;
                datosNatural.Cedula = dplCedula.SelectedValue + txtCedula.Text;

                // buscamos el codigo de los lugares para hallar el codigo de la parroquia y guardarla
                List<Lugar> listaLugar2 = new List<Lugar>();
                listaLugar2 = nombreLugar.Todos();
                int codigoParroquia = -1;

                foreach (Lugar item in listaLugar2)
                {
                    if (dplEstado.SelectedValue == item.Nombre && item.CodigoUbicacion == 1)
                        codigoEstado = item.Codigo;
                }
                foreach (Lugar item in listaLugar2)
                {
                    if (dplMunicipio.SelectedValue == item.Nombre && codigoEstado == item.CodigoUbicacion)
                        codigoMunicipio = item.Codigo;
                }
                foreach (Lugar item in listaLugar2)
                {
                    if (dplParroquia.SelectedValue == item.Nombre && item.Tipo == "Parroquia" && codigoMunicipio == item.CodigoUbicacion)
                        codigoParroquia= item.Codigo;
                }

                datosNatural.Direccion = codigoParroquia;
                datosNatural.Insertar();

                Telefono telefono1 = new Telefono(int.Parse(CodigoPais1.SelectedValue), int.Parse(CodAre.Text), int.Parse(txtTelefono1.Text), TipoTelf.Text, datosCliente);
                telefono1.Insertar();
                Telefono telefono2 = new Telefono(int.Parse(CodigoPais2.SelectedValue), int.Parse(CodAre2.Text), int.Parse(txtTelefono2.Text), TipoTelf2.Text, datosCliente);
                telefono2.Insertar();
            }
            catch (Exception ex)
            {

                Session["mensajeError"] = "Ha ocurrido un error al registrar la persona. " + ex;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('NO DEBE HABER CAMPOS VACÍOS');", true);
            }
            
        }

        

        protected void dplEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarPagina(false);

        }

        protected void dplMunicipio_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<Lugar> listaLugar2 = new List<Lugar>();
            listaLugar2 = nombreLugar.Todos();

            foreach (Lugar item in listaLugar2)
            {
                if (dplEstado.SelectedValue == item.Nombre && item.CodigoUbicacion == 1)
                    codigoEstado = item.Codigo;
            }
            dplParroquia.Items.Clear();

            foreach (Lugar item in listaLugar2)
            {
                if (dplMunicipio.SelectedValue == item.Nombre && codigoEstado == item.CodigoUbicacion)
                    codigoMunicipio = item.Codigo;
            }

            foreach (Lugar item in listaLugar2)
            {
                if (codigoMunicipio == item.CodigoUbicacion)
                    dplParroquia.Items.Add(item.Nombre);
            }
        }
    }
}