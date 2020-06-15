using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Empresas.Datos;

namespace Empresas.Negocio
{
    /// <summary>
    /// Representa los datos de una Empresa
    /// </summary>
    public class Empresa
    {
        /// <summary>
        /// Retorna o asigna el Rut
        /// </summary>
        public int Rut { get; set; }

        /// <summary>
        /// Retorna o asigna el Dígito Verificador
        /// </summary>
        public string Dv { get; set; }

        /// <summary>
        /// Retorna o asigna la Razón Social
        /// </summary>
        public string RazonSocial { get; set; }

        /// <summary>
        /// Constructor por defecto de la clase EMpresa
        /// </summary>
        public Empresa()
        {
            this.Init();
        }

        /// <summary>
        /// Inicializa las instancias privadas de la clase 
        /// </summary>
        private void Init()
        {
            Rut = 0;
            Dv = string.Empty;
            RazonSocial = string.Empty;
        }

        /* OPERACIONES DE MANTENCION */

        /// <summary>
        /// Crea un registro de empresa en la BBDD
        /// </summary>
        /// <returns></returns>
        public bool Create()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();

            Datos.Empresa emp = new Datos.Empresa();

            try
            {
                CommonBC.Syncronize(this, emp);

                bbdd.Empresa.Add(emp);
                bbdd.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                bbdd.Empresa.Remove(emp);
                return false;
            }

        }

        /// <summary>
        /// Lee un registro de empresa en la BBDD
        /// </summary>
        /// <returns></returns>
        public bool Read()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();

            try
            {
                /* Se obtiene el primer registro coincidente con el Rut */
                Datos.Empresa emp = bbdd.Empresa.First( e => e.Rut == Rut);

                /* Se copian las propiedades de datos al negocio */
                CommonBC.Syncronize(emp, this);

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        /// <summary>
        /// Actualiza un registro de empresa en la BBDD
        /// </summary>
        /// <returns></returns>
        public bool Update()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();

            try
            {
                /* Se obtiene el primer registro coincidente con el Rut */
                Datos.Empresa emp = bbdd.Empresa.First(e => e.Rut == Rut);

                /* Se copian las propiedades del negocio a los datos */
                CommonBC.Syncronize(this, emp);

                bbdd.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        /// <summary>
        /// Elimina un registro de empresa en la BBDD
        /// </summary>
        /// <returns></returns>
        public bool Delete()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();

            try
            {
                /* Se obtiene el primer registro coincidente con el Rut */
                Datos.Empresa emp = bbdd.Empresa.First(e => e.Rut == Rut);

                /* Se elimina el registro del EDM */
                bbdd.Empresa.Remove(emp);

                bbdd.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }


        /// <summary>
        /// Lee todos los registros de empresa
        /// </summary>
        /// <returns></returns>
        public List<Empresa> ReadAll()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();

            try
            {
                /* Se obtiene todos los registro desde la tabla */
                List<Datos.Empresa> listadoDatos = bbdd.Empresa.ToList<Datos.Empresa>();

                /* Se convierte el listado de datos en un listado de negocio */
                List<Empresa> listadoNegocio = GenerarListado(listadoDatos);

                /* Se retorna la lista */
                return listadoNegocio;
            }
            catch (Exception ex)
            {
                return new List<Empresa>();
            }
        }

        /// <summary>
        /// Convierte un listado de objetos de datos en un listado de objetos de negocio
        /// </summary>
        /// <param name="listadoDatos"></param>
        /// <returns></returns>
        private List<Empresa> GenerarListado(List<Datos.Empresa> listadoDatos)
        {
            List<Empresa> listadoEmpresa = new List<Empresa>();

            foreach (Datos.Empresa dato in listadoDatos)
            {

                Empresa negocio = new Empresa();
                CommonBC.Syncronize(dato, negocio);

                listadoEmpresa.Add(negocio);
            }

            return listadoEmpresa;
        }
    }

}

