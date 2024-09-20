using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace negocio
{
    public class TraineeNegocio
    {
        public int insertarNuevo(Trainee nuevo)
        {
			AccesoDatos datos = new AccesoDatos();


			try
			{
				datos.setearProcedimiento("insertarNuevo");
				datos.SetearParametro("@email", nuevo.Email);
				datos.SetearParametro("@pass", nuevo.Pass);
				return datos.EjecutarAccionScalar(); 
			}
			catch (Exception ex)
			{

				throw ex;
			}
			finally
			{
				datos.CerrarConexion();
			}
        }
    }
}
