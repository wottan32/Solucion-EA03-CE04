using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

/* Add's */
using Empresas.Negocio;

namespace EmpresasWPF
{
    /// <summary>
    /// Lógica de interacción para CRUDEmpleados.xaml
    /// </summary>
    public partial class CRUDEmpleados : Window
    {
        public CRUDEmpleados()
        {
            InitializeComponent();
            LimpiarControles();
        }

        private void LimpiarControles()
        {
            /* Limpia los controles de texto */
            txtRut.Text = string.Empty;
            txtDv.Text = string.Empty;
            txtNombres.Text = string.Empty;
            txtApellidos.Text = string.Empty;

            CargarEmpresas();

            CargarEmpleados();

        }

        private void CargarEmpleados()
        {
            /* Carga todos los Empleados */
            Empleado empleados = new Empleado();
            gdEmpleados.ItemsSource = empleados.ReadAll();
        }

        private void CargarEmpresas()
        {
            /* Carga todas las empresas */
            Empresa empresas = new Empresa();
            cboEmpresa.ItemsSource = empresas.ReadAll();

            /* Configura los datos en el ComboBOx */
            cboEmpresa.DisplayMemberPath = "RazonSocial"; //Propiedad para mostrar
            cboEmpresa.SelectedValuePath = "Rut"; //Propiedad con el valor a rescatar

            cboEmpresa.SelectedIndex = 0; //Posiciona en el primer registro

        }

        private void btnAgregar_Click(object sender, RoutedEventArgs e)
        {
            Empleado emp = new Empleado()
            {
                Rut = int.Parse(txtRut.Text),
                Dv = txtDv.Text,
                Nombres = txtNombres.Text,
                Apellidos = txtApellidos.Text,
                RutEmpresa = (int)cboEmpresa.SelectedValue
            };

            if (emp.Create())
            {
                MessageBox.Show("Empleado registrado", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                LimpiarControles();
            }
            else
            {
                MessageBox.Show("Empleado no pudo ser registrado", "Atención", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }

        }

        private void btnConsultar_Click(object sender, RoutedEventArgs e)
        {
            Empleado emp = new Empleado()
            {
                Rut = int.Parse(txtRut.Text)
            };

            if (emp.Read())
            {
                txtDv.Text = emp.Dv;
                txtNombres.Text = emp.Nombres;
                txtApellidos.Text = emp.Apellidos;

                cboEmpresa.SelectedValue = emp.RutEmpresa; //Ubica el item con este Rut

                MessageBox.Show("Empleado leído", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Empleado no pudo ser leído", "Atención", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }

        private void btnActualizar_Click(object sender, RoutedEventArgs e)
        {
            Empleado emp = new Empleado()
            {
                Rut = int.Parse(txtRut.Text),
                Dv = txtDv.Text,
                Nombres = txtNombres.Text,
                Apellidos = txtApellidos.Text,
                RutEmpresa = (int)cboEmpresa.SelectedValue
            };

            if (emp.Update())
            {
                MessageBox.Show("Empleado actualizado", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                LimpiarControles();
            }
            else
            {
                MessageBox.Show("Empleado no pudo ser actualizado", "Atención", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }

        private void btnEliminar_Click(object sender, RoutedEventArgs e)
        {
            Empleado emp = new Empleado()
            {
                Rut = int.Parse(txtRut.Text)
            };

            if (emp.Delete())
            {
                MessageBox.Show("Empleado eliminado", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                LimpiarControles();
            }
            else
            {
                MessageBox.Show("Empleado no pudo ser eliminado", "Atención", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }
    }
}
