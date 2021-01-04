﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ucabmart.Engine
{
    public class Telefono
    {
        public int CodigoPais { get; set; }
        public int CodigoArea { get; set; }
        public int Numero { get; set; }
        public string Tipo { get; set; }
        public string CodigoCliente { get; set; }
        public string CodigoPersonaContacto { get; set; }
        public string RifProveedor { get; set; }
        public int CodigoEmpleado { get; set; }

        public Telefono(int codigoPais, int codigoArea, int numero, TipoTelefono tipo, 
            Cliente cliente, PersonaContacto personaContacto, Proveedor proveedor, Empleado empleado)
        {
            CodigoPais = codigoPais;
            CodigoArea = codigoArea;
            Numero = numero;
            switch (tipo)
            {
                case TipoTelefono.Fijo:
                    Tipo = "Fijo";
                    break;
                case TipoTelefono.Movil:
                    Tipo = "Movil";
                    break;
                default:
                    Tipo = null;
                    break;
            }
            CodigoCliente = cliente.Codigo;
            CodigoPersonaContacto = personaContacto.Codigo;
            RifProveedor = proveedor.RIF;
            CodigoEmpleado = empleado.Codigo;
        }

        public Telefono(int codigoPais, int codigoArea, int numero, TipoTelefono tipo,
            Cliente cliente)
        {
            CodigoPais = codigoPais;
            CodigoArea = codigoArea;
            Numero = numero;
            switch (tipo)
            {
                case TipoTelefono.Fijo:
                    Tipo = "Fijo";
                    break;
                case TipoTelefono.Movil:
                    Tipo = "Movil";
                    break;
                default:
                    Tipo = null;
                    break;
            }
            CodigoCliente = cliente.Codigo;
            CodigoPersonaContacto = null;
            RifProveedor = null;
            CodigoEmpleado = -1;
        }

        public Telefono(int codigoPais, int codigoArea, int numero, TipoTelefono tipo,
            PersonaContacto personaContacto)
        {
            CodigoPais = codigoPais;
            CodigoArea = codigoArea;
            Numero = numero;
            switch (tipo)
            {
                case TipoTelefono.Fijo:
                    Tipo = "Fijo";
                    break;
                case TipoTelefono.Movil:
                    Tipo = "Movil";
                    break;
                default:
                    Tipo = null;
                    break;
            }
            CodigoCliente = null;
            CodigoPersonaContacto = personaContacto.Codigo;
            RifProveedor = null;
            CodigoEmpleado = -1;
        }

        public Telefono(int codigoPais, int codigoArea, int numero, TipoTelefono tipo,
            Proveedor proveedor)
        {
            CodigoPais = codigoPais;
            CodigoArea = codigoArea;
            Numero = numero;
            switch (tipo)
            {
                case TipoTelefono.Fijo:
                    Tipo = "Fijo";
                    break;
                case TipoTelefono.Movil:
                    Tipo = "Movil";
                    break;
                default:
                    Tipo = null;
                    break;
            }
            CodigoCliente = null;
            CodigoPersonaContacto = null;
            RifProveedor = proveedor.RIF;
            CodigoEmpleado = -1;
        }

        public Telefono(int codigoPais, int codigoArea, int numero, TipoTelefono tipo,
            Empleado empleado)
        {
            CodigoPais = codigoPais;
            CodigoArea = codigoArea;
            Numero = numero;
            switch (tipo)
            {
                case TipoTelefono.Fijo:
                    Tipo = "Fijo";
                    break;
                case TipoTelefono.Movil:
                    Tipo = "Movil";
                    break;
                default:
                    Tipo = null;
                    break;
            }
            CodigoCliente = null;
            CodigoPersonaContacto = null;
            RifProveedor = null;
            CodigoEmpleado = empleado.Codigo;
        }

        public Cliente Cliente()
        {
            DBConnection connection = new DBConnection();
            Cliente cliente = null;
            return cliente;
        }

        public PersonaContacto PersonaContacto()
        {
            DBConnection connection = new DBConnection();
            PersonaContacto personaContacto = null;
            return personaContacto;
        }

        public Proveedor Proveedor()
        {
            DBConnection connection = new DBConnection();
            Proveedor proveedor = null;
            return proveedor;
        }

        public Empleado Empleado()
        {
            DBConnection connection = new DBConnection();
            Empleado empleado = null;
            return empleado;
        }
    }
}