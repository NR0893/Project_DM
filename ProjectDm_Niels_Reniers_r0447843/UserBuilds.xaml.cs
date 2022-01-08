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

namespace ProjectDm_Niels_Reniers_r0447843
{
    /// <summary>
    /// Interaction logic for UserBuilds.xaml
    /// </summary>
    public partial class UserBuilds : Window
    {
        public UserBuilds()
        {
            InitializeComponent();
        }

        private void btnItems_Click(object sender, RoutedEventArgs e)
        {
            AddItem window = new AddItem();
            window.Show();
        }

        private void btnNewBuild_Click(object sender, RoutedEventArgs e)
        {
            NewBuild window = new NewBuild();
            window.Show();
        }
    }
}
