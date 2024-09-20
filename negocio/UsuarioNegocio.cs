using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace negocio
{
    public class UsuarioNegocio
    {
       public bool Loguear(Trainee trainee)
        {
			AccesoDatos datos = new AccesoDatos();
			try
			{
				datos.SetearConsulta("Select id,email,Nombre,Apellido,FechaNacimiento,Pass, tipouser from Usuarios Where Email = @email AND Pass = @pass");
				datos.SetearParametro("@email", trainee.Email);
				datos.SetearParametro("@pass", trainee.Pass);


				datos.EjecutarLectura();

				while (datos.Lector.Read())
				{
					trainee.Id = (int)datos.Lector["id"];
					trainee.Email = (string)datos.Lector["email"];
					trainee.Nombre = (string)datos.Lector["Nombre"];
					trainee.Apellido = (string)datos.Lector["Apellido"];
					trainee.FechaNacimiento = (DateTime)datos.Lector["FechaNacimiento"];
					trainee.Pass = (string)datos.Lector["pass"];
					trainee.TipoUsuario = (int)datos.Lector["TipoUser"] == 2 ? TipoUsuario.ADMIN : TipoUsuario.NORMAL;
					return true;
				}
				return false;
			}
			catch (Exception ex)
			{

				throw ex;
			}
			finally{
				
				datos.CerrarConexion();	
			}
			
        }
    }
}
