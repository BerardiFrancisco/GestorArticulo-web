using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using static System.Net.Mime.MediaTypeNames;

namespace GestorArticulo_web
{
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Trainee trainee = new Trainee();
            ArticuloNegocio negocio = new ArticuloNegocio();
            trainee = (Trainee)Session["trainee"];

            if (!(IsPostBack) && Seguridad.sesionActiva(trainee) )
            {
                txtEmail.Text = trainee.Email;
                txtNombre.Text = trainee.Nombre;
                txtApellido.Text = trainee.Apellido;

                if (trainee.FechaNacimiento != null)
                {
                    txtFechaNacimiento.Text = trainee.FechaNacimiento.ToString("dd/MM/yyyy");
                }
                else
                {
                    txtFechaNacimiento.Text = "";
                }

            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            Trainee trainee = new Trainee();
            trainee = (Trainee)Session["trainee"];

            trainee.Email = txtEmail.Text;
            trainee.Nombre = txtNombre.Text;
            trainee.Apellido = txtApellido.Text;
            trainee.FechaNacimiento = DateTime.Parse(txtFechaNacimiento.Text);



            negocio.Actualizar(trainee);

            Response.Redirect("MenuLogin.aspx", false);
        }
    }
}