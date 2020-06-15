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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace EmpresasWPF
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnEmpresas_Click(object sender, RoutedEventArgs e)
        {
            /* Crea una instancia de la ventana y la muestra Modal */
            CRUDEmpresas empresas = new CRUDEmpresas();
            empresas.Owner = this;
            empresas.ShowDialog();
        }

        private void btnEmpleados_Click(object sender, RoutedEventArgs e)
        {
            /* Crea una instancia de la ventana y la muestra Modal */
            CRUDEmpleados empleados = new CRUDEmpleados();
            empleados.Owner = this;
            empleados.ShowDialog();
        }
    }
}
