﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarClienteNatural.aspx.cs" Inherits="Ucabmart.Views.RegistrarClienteNatural" %>


<!DOCTYPE html>
<html lang="es">
    <head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Ucabmart - Registrar Cliente Natural</title>
        <link rel="icon" type="image/x-icon" href="../../Content/assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../Content/css/RegistroCliente.css" rel="stylesheet" />
    </head>

      <body id="page-top" class="bg-gradient-primary">

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top"><img class="Icon" src="../../Content/assets/img/Ucabmart-Logo.png" alt="" /></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ml-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">      
                   <!-- Topbar Search -->
                       
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"> <a class="nav-item">      </a>     </li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Views/Clientes_Admin.aspx">Clientes</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Views/Tiendas-Admin.aspx">Tiendas</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Views/Productos_Admin.aspx">Productos</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Views/Proveedores.aspx">Proveedores</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Views/Nomina_Admin.aspx">Nomina</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Views/Inicio_Admin.aspx">Inicio</a></li>
                    </ul>  
                </div>
            </div>
        </nav>
       
          <!-- Top Frame -->
          <div class="Top-Frame">
              <ul class="Ordened">
                  <li class="li-1"></li>
                  <li class="li-2">
                      <ul class="Ordened">
                          <li class="li-4" >CLIENTES-UCABMART</li>
                          <li><img src="../Content/assets/img/Client/Client-Icono.png" height="80px"/>  </li>
                      </ul>
                  </li>
                  <li class="li-3"></li>
              </ul>
          </div>

        <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Registrar Cliente - Persona Natural</h1>
                            </div>
                            <form id="form1" runat="server">

                                 <%--<Campo de texto del nombre >--%>

                                <br/>
                                 <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                         <asp:Label ID="Nombre" runat="server" Text="Nombres"></asp:Label>
                                        <asp:TextBox ID="Nombre1" runat="server" type="name" name="name" data-parsley-trigger="change"  
                                            placeholder="Ingrese su 1er Nombre" autocomplete="off" class="form-control">
                                        </asp:TextBox>
                                    </div>
                                    <div class="col-sm-6" style="margin-top:24px">
                                       <asp:TextBox ID="Nombre2" runat="server" type="name" name="name" data-parsley-trigger="change"  
                                            placeholder="Ingrese su 2do Nombre" autocomplete="off" class="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>


                                 <%--<Campo de texto del apellido >--%>

                                 <div class="form-group row" style="margin-bottom:-10px">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                         <asp:Label ID="Apellido" runat="server" Text="Apellidos"></asp:Label>
                                        <asp:TextBox ID="Apellido1" runat="server" type="name" name="name" data-parsley-trigger="change"  
                                            placeholder="Ingrese su 1er Apellido" autocomplete="off" class="form-control">
                                        </asp:TextBox>
                                    </div>
                                    <div class="col-sm-6" style="margin-top:24px">
                                       <asp:TextBox ID="Apellido2" runat="server" type="name" name="name" data-parsley-trigger="change"  
                                            placeholder="Ingrese su 2do Apellido" autocomplete="off" class="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>



                                 <%--<Campo de texto del Rif >--%>
                                 <asp:Label ID="lblRif" runat="server" Text="Rif"></asp:Label>
                                 <div class="form-group row" style="margin-bottom:-10px">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <br >
                                        <div class="input-group mb-3"><span class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user-times"></i></span></span>
                                            <asp:DropDownList ID="dplRif" runat="server" style="padding:10px 50px 10px 50px; text-align: left;" class="input-group-prepend be-addon">
                                                <asp:ListItem>V</asp:ListItem>
                                                <asp:ListItem>E</asp:ListItem>
                                                <asp:ListItem>P</asp:ListItem>
                                              </asp:DropDownList>
                                        </div>
                                     </div>
                                    <div class="col-sm-6">
                                        <br >
                                        <asp:TextBox ID="txtRif" runat="server" type="text" name="name" data-parsley-trigger="change"  
                                            placeholder="Ingrese nº de Rif " autocomplete="off" class="form-control" style="height: 45px;width: 330px;margin-left: -70px;">
                                         </asp:TextBox>
                                    </div>
                                </div>
                                <%--<Campo de texto de la cédula>--%>
                                <asp:Label ID="lblCedula" runat="server" Text="Cédula"></asp:Label>
                                <div class="form-group row" style="margin-bottom:-10px">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <br >
                                        <div class="input-group mb-3"><span class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user-times"></i></span></span>
                                            <asp:DropDownList ID="dplCedula" runat="server" style="padding:10px 50px 10px 50px; text-align: left;" class="input-group-prepend be-addon">
                                                <asp:ListItem>V</asp:ListItem>
                                                <asp:ListItem>E</asp:ListItem>
                                                <asp:ListItem>P</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <br >
                                        <asp:TextBox ID="txtCedula" runat="server" type="text" name="name" data-parsley-trigger="change"  
                                            placeholder="Ingrese su cédula " autocomplete="off" class="form-control" style="height: 45px;width: 330px;margin-left: -70px;">
                                        </asp:TextBox>
                                    </div>
                                </div>
                                <%--<Campo de texto del correo >--%>
                                <div class="form-group">
                                    <asp:Label ID="Label14" runat="server" Text="Correo Electrónico"></asp:Label>
                                    <asp:TextBox ID="txtCorreo" runat="server" type="text" name="name" data-parsley-trigger="change"  
                                          placeholder="Ingrese su correo electrónico" autocomplete="off" class="form-control">
                                     </asp:TextBox>
                                </div>
                                 <%--<Campo de texto de los telefonos >--%>
                                <br >
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <asp:Label ID="Label1" runat="server" Text="Telefonos"></asp:Label>
                                        <asp:TextBox ID="txtTelefono1" runat="server" type="text" name="name" data-parsley-trigger="change"  
                                            placeholder="Teléfono 1 " autocomplete="off" class="form-control">
                                        </asp:TextBox>
                                    </div>
                                    <div class="col-sm-6" style="margin-top:24px">
                                        <asp:TextBox ID="txtTelefono2" runat="server" type="text" name="name" data-parsley-trigger="change"  
                                            placeholder="Teléfono 2" autocomplete="off" class="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                                <%--<Campo de texto de la dirección >--%>
                                <div class="form-group">
                                    <asp:Label ID="Label6" for="txtDireccion" runat="server" Text="Dirección"></asp:Label>
                                    <div class="input-group mb-3"><span class="input-group-prepend"><span class="input-group-text"><i class="fa fa-user"></i></span></span>
                                        <asp:TextBox ID="txtDireccion" runat="server" type="text" name="name" data-parsley-trigger="change"  
                                            placeholder="Ingrese su dirección" autocomplete="off" class="form-control" Height="87px" Width="361px"></asp:TextBox>
                                    </div>
                                </div>
                                 <%--<Campo de la contraseña >--%>
                                <br >
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                         <asp:Label ID="Label12" runat="server" Text="Contraseña"></asp:Label>
                                        <asp:TextBox ID="txtContraseña" runat="server" type="password" name="name" data-parsley-trigger="change"  
                                            placeholder="Ingrese contraseña " autocomplete="off" class="form-control">
                                        </asp:TextBox>
                                    </div>
                                    <div class="col-sm-6" style="margin-top:24px">
                                       <asp:TextBox ID="txtRepetirContraseña" runat="server" type="password" name="name" data-parsley-trigger="change"  
                                            placeholder="Repetir Contraseña " autocomplete="off" class="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <asp:Button ID="btnRegistrar" runat="server" class="btn btn-primary btn-user btn-block" Text="Registrar Cuenta" OnClick="btnRegistrar_Click" />

                                <div>
                                    <img runat="server" id ="imgCtrl"/>
                                </div>                            
                            
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-left">Copyright © Your Website 2020</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-right">
                        <a class="mr-3" href="#!">Privacy Policy</a>
                        <a href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="../../Content/assets/mail/jqBootstrapValidation.js"></script>
        <script src="../../Content/assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="../../Content/js/scripts.js"></script>
    </body>
</html>
