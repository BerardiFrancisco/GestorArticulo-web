﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using Dominio;

namespace GestorArticulo_web
{
    public partial class ListadoArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            Session.Add("listaArticulos", negocio.listarConSP());
            dgvArticulos.DataSource = Session["listaArticulos"] ;
            dgvArticulos.DataBind();

            if (!(Session["trainee"] != null && ((Dominio.Trainee)Session["trainee"]).TipoUsuario == Dominio.TipoUsuario.ADMIN))
            {
                Session.Add("error", "No tenes permisos");
                Response.Redirect("Error.aspx", false);
            }
        }


        protected void dgvArticulos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvArticulos.PageIndex = e.NewPageIndex;
            dgvArticulos.DataBind();
        }
        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvArticulos.SelectedDataKey.Value.ToString();
            Response.Redirect("FormularioArticulo.aspx?id=" + id);
        }

        protected void txtImagenUrl_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtImagenUrl.Text))
            {
                imgArticulo.ImageUrl = txtImagenUrl.Text;
            }
        }

        protected void filtro_TextChanged(object sender, EventArgs e)
        {
            List<Articulo> lista = (List<Articulo>)Session["listaArticulos"];
            List<Articulo> listaFiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(txtFiltro.Text.ToUpper()));
            dgvArticulos.DataSource = listaFiltrada;
            dgvArticulos.DataBind();
        }

        protected void ddlFiltroCategoria_SelectedIndexChanged(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            string CategoriaFiltrada;
            List<Articulo> lista = new List<Articulo>();
            CategoriaFiltrada = ddlFiltroCategoria.SelectedValue;
            lista = negocio.filtrarPorCategoria(CategoriaFiltrada);

            dgvArticulos.DataSource = lista;
            dgvArticulos.DataBind();
        }
    }
}