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
    /// Lógica de interacción para CRUDEmpresas.xaml
    /// </summary>
    public partial class CRUDEmpresas : Window
    {
        public CRUDEmpresas()
        {
            InitializeComponent();
            LimpiarControles();
        }

        private void LimpiarControles()
        {
            /* Limpia los controles de la UI */
            txtRut.Text = string.Empty;
            txtDv.Text = string.Empty;
            txtRazonSocial.Text = string.Empty;

            /* Carga los regsitrso actuales */
            LeerEmpresas();
        }

        private void LeerEmpresas()
        {
            Empresa emp = new Empresa();
            gdEmpresas.ItemsSource = emp.ReadAll();
        }

        private void btnAgregar_Click(object sender, RoutedEventArgs e)
        {
            /* Crea y carga objeto empresa */
            Empresa emp = new Empresa()
            {
                Rut = int.Parse(txtRut.Text),
                Dv = txtDv.Text,
                RazonSocial = txtRazonSocial.Text
            };

            /* Solicita la creación del registro */
            if (emp.Create())
            {
                MessageBox.Show("Empresa creada", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                LimpiarControles();
            }
            else
            {
                MessageBox.Show("Empresa no pudo ser creada", "Atención", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }

        private void btnConsultar_Click(object sender, RoutedEventArgs e)
        {
            /* Crea y carga objeto empresa */
            Empresa emp = new Empresa()
            {
                Rut = int.Parse(txtRut.Text),
            };

            /* Solicita la lectura del registro */
            if (emp.Read())
            {
                txtDv.Text = emp.Dv;
                txtRazonSocial.Text = emp.RazonSocial;

                MessageBox.Show("Empresa leída", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Empresa no pudo ser leída o no existe", "Atención", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }

        private void btnActualizar_Click(object sender, RoutedEventArgs e)
        {
            /* Crea y carga objeto empresa */
            Empresa emp = new Empresa()
            {
                Rut = int.Parse(txtRut.Text),
                Dv = txtDv.Text,
                RazonSocial = txtRazonSocial.Text
            };

            /* Solicita la actualización del registro */
            if (emp.Update())
            {
                MessageBox.Show("Empresa modificada", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                LimpiarControles();
            }
            else
            {
                MessageBox.Show("Empresa no pudo ser modificada", "Atención", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }

        private void btnEliminar_Click(object sender, RoutedEventArgs e)
        {
            /* Crea y carga objeto empresa */
            Empresa emp = new Empresa()
            {
                Rut = int.Parse(txtRut.Text),
            };

            /* Solicita la eliminación  del registro */
            if (emp.Delete())
            {
                MessageBox.Show("Empresa eliminada", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                LimpiarControles();
            }
            else
            {
                MessageBox.Show("Empresa no pudo ser leída o no existe", "Atención", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }
    }
}
