using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestorArticulo_web
{
    public partial class MenuLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["trainee"] == null)
            {
                Session.Add("error", "Debes loguearte");
                Response.Redirect("Error.aspx",false);
            }
        }
    }
}