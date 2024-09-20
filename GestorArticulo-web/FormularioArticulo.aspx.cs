using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;


namespace GestorArticulo_web
{
    public partial class FormularioArticulo : System.Web.UI.Page
    {
        public bool ConfirmarEliminacion { get; set; }
        ArticuloNegocio Artnegocio = new ArticuloNegocio();
        CategoriaNegocio Catnegocio = new CategoriaNegocio();
        MarcaNegocio MarNegocio = new MarcaNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                txtId.Enabled = false;
                ConfirmarEliminacion = false;


                if (!IsPostBack)
                {
                    List<Articulo> listaArticulo = Artnegocio.listarConSP();
                    Session["listaArticulo"] = listaArticulo;

                    List<Categoria> listaCategoria = Catnegocio.listar();
                    List<Marca> listaMarca = MarNegocio.listar();

                    ddlCategoria.DataSource = listaCategoria;
                    ddlCategoria.DataTextField = "Descripcion";
                    ddlCategoria.DataValueField = "Id";
                    ddlCategoria.DataBind();

                    ddlMarca.DataSource = listaMarca;
                    ddlMarca.DataTextField = "Descripcion";
                    ddlMarca.DataValueField = "Id";
                    ddlMarca.DataBind();

                    cargarValoresArticulo();
                }   

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        
        private void cargarValoresArticulo()
        {
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";

            if (id != null && id != "")
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                //List<Articulo> lista = negocio.listar(Request.QueryString["id"].ToString());
                //Articulo seleccionado = lista[0];
                Articulo seleccionado = (negocio.listar(id)[0]);

                txtId.Text = id;
                txtCodigo.Text = seleccionado.Codigo;
                txtNombre.Text = seleccionado.Nombre;
                txtDescripcion.Text = seleccionado.Descripcion;
                txtImagenUrl.Text = seleccionado.UrlImagen;

                ddlCategoria.SelectedValue = seleccionado.Categoria.Id.ToString();
                ddlMarca.SelectedValue = seleccionado.Marca.Id.ToString();
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Articulo nuevo = new Articulo();
                nuevo.Codigo = txtCodigo.Text;
                nuevo.Nombre = txtNombre.Text;
                nuevo.Descripcion = txtDescripcion.Text;
                nuevo.UrlImagen = txtImagenUrl.Text;
                nuevo.Marca = new Marca();
                nuevo.Marca.Id = int.Parse(ddlMarca.SelectedValue);
                nuevo.Categoria = new Categoria();
                nuevo.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);

                if (Request.QueryString["id"] != null)
                {
                    nuevo.Id = int.Parse(txtId.Text);
                    Artnegocio.modificarConSP(nuevo);
                }
                else
                {
                    Artnegocio.agregarconSP(nuevo);
                }

                Response.Redirect("ListadoArticulo.aspx",false);

            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }
        }

        protected void txtImagenUrl_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtImagenUrl.Text))
            {
                imgArticulo.ImageUrl = txtImagenUrl.Text;
                UpdatePanel1.Update();
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ConfirmarEliminacion = true;
        }

        protected void btnConfirmarEliminacion_Click(object sender, EventArgs e)
        {
            try
            {
                if (chkConfirmarEliminacion.Checked)
                {
                    ArticuloNegocio negocio = new ArticuloNegocio();
                    negocio.eliminar(int.Parse(txtId.Text));
                    Response.Redirect("ListadoArticulo.aspx");
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }
        }

    }
}