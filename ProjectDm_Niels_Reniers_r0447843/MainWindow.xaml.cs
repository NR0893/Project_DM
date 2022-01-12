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
using ProjectDM_DAL;
using ProjectDM_Models;

namespace ProjectDm_Niels_Reniers_r0447843
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnNewBuild_Click(object sender, RoutedEventArgs e)
        {
            NewBuild window = new NewBuild();
            window.Show();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            cmbItems.DisplayMemberPath = "itemName";
            cmbItems.ItemsSource = DatabaseOperations.OphalenItems();
        }

        private void btnNewUser_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("userName");
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                User user = new User();
                user.username = txtUsername.Text;
               int ok= DatabaseOperations.ToevoegenUsers(user);
                if (ok==0)
                {
                    MessageBox.Show("User niet toegevoegd!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show(foutmeldingen);
            }
        }

        private string Valideer(string columnName)
        {
            if (columnName == "userName"&& string.IsNullOrWhiteSpace(txtUsername.Text))
            {
                return "Gelieve een username in te vullen!";
            }
            if (columnName=="userName"&&txtUsername.Text.Count()>15)
            {
                return "Username mag niet meer dan 15 karakters bevatten!";
            }
            return "";
        }
    }
}
