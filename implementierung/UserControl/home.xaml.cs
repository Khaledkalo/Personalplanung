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

namespace Personalplanung
{
    public partial class home : UserControl
    {
        MainWindow mainWindow;
        public home(MainWindow _mainWindow)
        {
            InitializeComponent();
            mainWindow = _mainWindow;
        }

        private void plan_click(object sender, RoutedEventArgs e)
        {
            mainWindow.PlanAnzeigen();
        }

        private void ausloggen(object sender, RoutedEventArgs e)
        {
            mainWindow.Ausloggen();
        }
    }
}
