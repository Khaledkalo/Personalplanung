using Perso.Datenbank;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity;
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
    public partial class PlanAnzeigen : UserControl
    {
        MainWindow mainWindow;
        private PersonalPlanungEntities1 Context = new PersonalPlanungEntities1();
        ICollectionView CollectionView;
        public PlanAnzeigen(MainWindow _mainWindow)
        {
            InitializeComponent();
            mainWindow = _mainWindow;

            Context.Plann.Load();
            CollectionView = CollectionViewSource.GetDefaultView(Context.Plann.Local);
            MainGrid.DataContext = CollectionView;
        }

        private void home_Click(object sender, RoutedEventArgs e)
        {
            mainWindow.Homezurück();
        }

        private void ausloggen(object sender, RoutedEventArgs e)
        {
            mainWindow.Ausloggen();
        }
    }
}
