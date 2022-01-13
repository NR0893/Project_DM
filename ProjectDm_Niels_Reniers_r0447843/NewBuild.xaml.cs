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
using ProjectDM_DAL;

namespace ProjectDm_Niels_Reniers_r0447843
{
    /// <summary>
    /// Interaction logic for NewBuild.xaml
    /// </summary>
    public partial class NewBuild : Window
    {
        public NewBuild()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            lblDate.Content = DateTime.Today;
            cmbUsers.DisplayMemberPath = "username";
            cmbUsers.ItemsSource = DatabaseOperations.OphalenUsers();
            datagridGods.ItemsSource = DatabaseOperations.OphalenGods();
        }

        private void btnCreate_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("Username");
            foutmeldingen += Valideer("GameMode");
            foutmeldingen += Valideer("BuildName");
            foutmeldingen += Valideer("God");
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                Build build = new Build();
                User user = cmbUsers.SelectedItem as User;
                God god = datagridGods.SelectedItem as God;
                build.gameMode = cmbGameMode.Text;
                build.godId = god.id;
                build.userId = user.id;
                build.dateCreated = DateTime.Today;
                build.buildName = txtBuildName.Text;
                int ok = DatabaseOperations.ToevoegenBuilds(build);
                if (ok == 0)
                {
                    MessageBox.Show("Build niet toegevoegd!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    MessageBox.Show($"Build van {user.username} is toegevoegd:\n{txtBuildName.Text}\n{god.godName} - {god.title}\n{cmbGameMode.Text}\n{DateTime.Now}", "Toegevoegd!", MessageBoxButton.OK, MessageBoxImage.Information);

                }
            }
            else
            {
                MessageBox.Show(foutmeldingen);
            }
         
        }
        private string Valideer(string columnName)
        {
            if (columnName == "Username" && cmbUsers.SelectedItem==null)
            {
                return "Gelieve een user aan te duiden!"+Environment.NewLine;
            }
            if (columnName == "GameMode"&&cmbGameMode.SelectedItem==null)
            {
                return "Gelieve een Game Mode aan te duiden!"+Environment.NewLine;
            }
            if (columnName == "BuildName" && string.IsNullOrWhiteSpace(txtBuildName.Text))
            {
                return "Gelieve je build een naam te geven!" + Environment.NewLine;
            }
            if (columnName=="BuildName"&&txtBuildName.Text.Count()>50)
            {
                return "De Build Name mag niet groter zijn dan 50 karakters!"+ Environment.NewLine;
            }
            if (columnName=="God"&&datagridGods.SelectedItem==null)
            {
                return "Gelieve een God aan te duiden!"+ Environment.NewLine;
            }
            return "";
        }
    }
}
