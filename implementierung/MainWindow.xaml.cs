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
    public partial class MainWindow : Window
    {
        Login login;
        home home;
        public MainWindow()
        {
            InitializeComponent();
            LoginAnzeigen();
        }

        public void LoginAnzeigen()
        {
            login = new Login(this);
            UserControl.Content = login;
        }

        public void Home()
        {
            home = new home(this);
            UserControl.Content = home;
        }

        internal void Ausloggen()
        {
            home = new home(this);
            UserControl.Content = login;
        }

        public void PlanAnzeigen()
        {
            PlanAnzeigen p1 = new PlanAnzeigen(this);
            UserControl.Content = p1;
        }

        public void Homezurück()
        {
            home hz = new home(this);
            UserControl.Content = hz;
        }


    }
}
