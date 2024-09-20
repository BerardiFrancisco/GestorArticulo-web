using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestorArticulo_web
{
    public partial class Pagina2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!(Session["trainee"] != null && ((Dominio.Trainee)Session["trainee"]).TipoUsuario == Dominio.TipoUsuario.ADMIN))
            {
                Session.Add("error","No tenes permisos");
                Response.Redirect("Error.aspx", false); 
            }
        }
    }
}