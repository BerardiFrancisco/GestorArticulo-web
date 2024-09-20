using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace GestorArticulo_web
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                Trainee user = new Trainee();
                TraineeNegocio negocio = new TraineeNegocio();

                user.Email = txtEmail.Text;
                user.Pass = txtPassword.Text;
                user.Id = negocio.insertarNuevo(user);
                Session.Add("trainee", user);

                Response.Redirect("Home.aspx", false);
            }
            catch (Exception)
            {

                Session.Add("Error","error en pagina de registro");
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}