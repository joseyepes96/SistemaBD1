﻿using System;

namespace Ucabmart.Views
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public string nombreUsuario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.nombreUsuario = Session["NombreLogin"].ToString();
        }
    }
}