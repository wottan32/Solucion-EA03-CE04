using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Empresas.Datos;

namespace Empresas.Negocio
{
    public class Empleado
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
        /// Retorna o asigna los Nombres
        /// </summary>
        public string Nombres { get; set; }

        /// <summary>
        /// Retorna o asigna los Apellidos
        /// </summary>
        public string Apellidos { get; set; }

        /// <summary>
        /// Retorna o asigna el Rut de la Empresa a la que pertenece
        /// </summary>
        public int RutEmpresa { get; set; }

        /// <summary>
        /// Constructor por defecto de la clase Empleado
        /// </summary>
        public Empleado()
        {
            this.Init();
        }

        /// <summary>
        /// Inicializa instacias privadas y propiedades
        /// </summary>
        private void Init()
        {
            Rut = 0;
            Dv = string.Empty;
            Nombres = string.Empty;
            Apellidos = string.Empty;
            RutEmpresa = 0;
        }

        /// <summary>
        /// Crea un nuevo registro de Empleado
        /// </summary>
        /// <returns></returns>
        public bool Create()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();
            Datos.Empleado emp = new Datos.Empleado();

            try
            {
                CommonBC.Syncronize(this, emp);

                bbdd.Empleado.Add(emp);
                bbdd.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                bbdd.Empleado.Remove(emp);
                return false;
            }
        }

        /// <summary>
        /// Lee un registro de Empleado
        /// </summary>
        /// <returns></returns>
        public bool Read()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();

            try
            {
                Datos.Empleado emp = bbdd.Empleado.First(e => e.Rut == Rut);

                CommonBC.Syncronize(emp , this);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        /// <summary>
        /// Actualiza un registro de Empleado
        /// </summary>
        /// <returns></returns>
        public bool Update()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();

            try
            {
                Datos.Empleado emp = bbdd.Empleado.First(e => e.Rut == Rut);

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
        /// Elimna un registro de Empleado
        /// </summary>
        /// <returns></returns>
        public bool Delete()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();

            try
            {
                Datos.Empleado emp = bbdd.Empleado.First(e => e.Rut == Rut);

                bbdd.Empleado.Remove(emp);
                bbdd.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        /// <summary>
        /// Lee todos los registros de Empleado
        /// </summary>
        /// <returns></returns>
        public List<Empleado> ReadAll()
        {
            Datos.EmpresasEntities bbdd = new Datos.EmpresasEntities();

            try
            {
                List<Datos.Empleado> listaDatos = bbdd.Empleado.ToList<Datos.Empleado>();

                List<Empleado> listaNegocio = GenerarListado(listaDatos);

                return listaNegocio;

            }
            catch (Exception ex)
            {
                return new List<Empleado>();
            }
        }

        private List<Empleado> GenerarListado(List<Datos.Empleado> listaDatos)
        {
            List<Empleado> listaNegocio = new List<Empleado>();

            foreach (Datos.Empleado dato in listaDatos)
            {
                Empleado negocio = new Empleado();
                CommonBC.Syncronize(dato, negocio);

                listaNegocio.Add(negocio);
            }


            return listaNegocio;
        }
    }
}
