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
            List<User> users = DatabaseOperations.OphalenUsers();
            if (columnName == "userName"&& string.IsNullOrWhiteSpace(txtUsername.Text))
            {
                return "Gelieve een username in te vullen!" + Environment.NewLine;
            }
            if (columnName=="userName"&&txtUsername.Text.Count()>15)
            {
                return "Username mag niet meer dan 15 karakters bevatten!" +Environment.NewLine;
            }
            if (columnName=="userName")
            {
                foreach (var user in users)
                {
                    if (user.username==txtUsername.Text)
                    {
                        return "User Bestaat al! Kies een ander naam!" + Environment.NewLine;
                    }
                }
            }
            if (columnName=="Build"&&datagridBuild.SelectedItem==null)
            {
                return "Selecteer de build die je wilt verwijderen!" + Environment.NewLine;
            }
           
            
          
            return "";
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtUsername.Text))
            {
                List<User> users = DatabaseOperations.OphalenUserviaUsername(txtUsername.Text);
                foreach (var user in users)
                {
                    int userid = user.id;
                    List<Build> builds = DatabaseOperations.OphalenBuildsViaUserID(userid);
                    if (builds!=null)
                    {
                        datagridBuild.ItemsSource = builds;
                    }
                    else
                    {
                        MessageBox.Show("Er zijn geen builds voor deze user!");
                    }
                }
               
                
            }
            else
            {
                MessageBox.Show("Je moet een username invullen!");
            }
        }

        private void btnDeleteBuild_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("Build");
      
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                Build build = datagridBuild.SelectedItem as Build;

                if (MessageBox.Show($"Je staat op het punt de build: {build.buildName} te verwijderen!\nWeet je het zeker?", "Warning", MessageBoxButton.YesNo, MessageBoxImage.Warning)==MessageBoxResult.Yes)
                {
                    
                    int.TryParse(build.userId.ToString(), out int userid);

                    int ok = DatabaseOperations.VerwijderenBuilds(build);
                    if (ok > 0)
                    {
                        datagridBuild.ItemsSource = DatabaseOperations.OphalenBuildsViaUserID(userid);

                    }
                    else
                    {
                        MessageBox.Show("Build is niet verwijderd!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            else
            {
                MessageBox.Show(foutmeldingen);
            }
        }
    }
}
