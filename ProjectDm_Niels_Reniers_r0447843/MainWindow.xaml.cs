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
            this.WindowState = WindowState.Maximized;
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
            foutmeldingen += Valideer("user");
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                #region Nieuwe user toevoegen
                User user = new User();
                user.username = txtUsername.Text;
               int ok= DatabaseOperations.ToevoegenUsers(user);
                if (ok==0)
                {
                    MessageBox.Show("User niet toegevoegd!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                #endregion
            }
            else
            {
                MessageBox.Show(foutmeldingen,"Error",MessageBoxButton.OK,MessageBoxImage.Error);
            }
        }

       

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtUsername.Text))
            {
               
                #region Builds zoeken via user
                List<User> users = DatabaseOperations.OphalenUserviaUsername(txtUsername.Text);
                foreach (var user in users)
                {
                    int userid = user.id;
                    List<Build> builds = DatabaseOperations.OphalenBuildsViaUserID(userid);
                    if (builds!=null)
                    {
                        datagridBuild.ItemsSource = builds;
                        Reset();
                        txtUsername.Text = "";
                    }
                    else
                    {
                        MessageBox.Show("Er zijn geen builds voor deze user!");
                    }
                }

                #endregion
            }
            else
            {
                MessageBox.Show("Je moet een username invullen!","Error",MessageBoxButton.OK,MessageBoxImage.Error);
            }
        }

        private void btnDeleteBuild_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("Build");
      
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                #region Verwijder Build
                Build build = datagridBuild.SelectedItem as Build;

                if (MessageBox.Show($"Je staat op het punt de build: {build.buildName} te verwijderen!\nWeet je het zeker?", "Warning", MessageBoxButton.YesNo, MessageBoxImage.Warning)==MessageBoxResult.Yes)
                {
                    
                    int.TryParse(build.userId.ToString(), out int userid); //build.userId is van het type int?, veranderen naar type int

                    int ok = DatabaseOperations.VerwijderenBuilds(build);
                    if (ok > 0)
                    {
                        datagridBuild.ItemsSource = DatabaseOperations.OphalenBuildsViaUserID(userid);
                        Reset();
                    }
                    else
                    {
                        MessageBox.Show("Build is niet verwijderd!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                #endregion
            }

            else
            {
                MessageBox.Show(foutmeldingen,"Error",MessageBoxButton.OK,MessageBoxImage.Error);
            }
        }

        private void datagridBuild_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
          
          Build build = datagridBuild.SelectedItem as Build;
            
            if (build!=null) //Nodig als iets in build veranderd springt deze eerst op null, waardoor er een error
                             //optreed System.NullReferenceException: 'Object reference not set to an instance of an object.'!
            {
                int buildId = build.id;
                datagridBuildItems.ItemsSource = DatabaseOperations.OphalenItemsViaBuildID(buildId);
              
                int.TryParse(build.godId.ToString(), out int godId);
                datagridBuildStats.ItemsSource = DatabaseOperations.OphalenGodStatsViaGodId(godId);
            }
        }

        
        private void btnItems_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("Item");
            foutmeldingen += Valideer("Build");
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                #region Toevoegen items aan build
                BuildItem buildItem = new BuildItem();
                Item item = cmbItems.SelectedItem as Item;
                Build build = datagridBuild.SelectedItem as Build;
                buildItem.itemId = item.id;
                buildItem.buildId = build.id;
               
                int buildId = build.id;
                List<BuildItem> buildItems = DatabaseOperations.OphalenItemsViaBuildID(buildId);
               
                if (buildItems.Count() >= 6)
                {
                    MessageBox.Show("Je kan niet meer dan 6 items toevoegen per build!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }             
                else
                {
                    int ok = DatabaseOperations.ToevoegenBuildItem(buildItem);
                    if (ok == 0)
                    {
                        MessageBox.Show("Item is niet toegevoegd aan build!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    else
                    {
                        datagridBuildItems.ItemsSource = DatabaseOperations.OphalenItemsViaBuildID(buildId);
                    }
                }

                #endregion
            }

            else
            {
                MessageBox.Show(foutmeldingen, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        
        private void btnDeleteItem_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("BuildItem");
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                #region Verwijder Item van build
                BuildItem buildItem = datagridBuildItems.SelectedItem as BuildItem;
                int.TryParse(buildItem.buildId.ToString(), out int buildId);
                int ok = DatabaseOperations.VerwijderenBuildItems(buildItem);
                if (ok == 0)
                {
                    MessageBox.Show("Item is niet verwijderd van build!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);

                }
                else
                {
                    datagridBuildItems.ItemsSource = DatabaseOperations.OphalenItemsViaBuildID(buildId);
                    
                }
                #endregion
            }
            else
            {
                MessageBox.Show(foutmeldingen, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            
        }

       

        private void btnChangeBuild_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("BuildNaam");
            foutmeldingen += Valideer("Build");
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                #region Verander naam van de build
                Build build = datagridBuild.SelectedItem as Build;
                build.buildName = txtBuildName.Text;
                int ok = DatabaseOperations.AanpassenBuild(build);
                
                int.TryParse(build.userId.ToString(), out int userid);
                if (ok>0)
                {
                    datagridBuild.ItemsSource = DatabaseOperations.OphalenBuildsViaUserID(userid);
                    txtBuildName.Text = "";
                }
                else
                {
                    MessageBox.Show("Build naam is niet aangepast!");
                }
                #endregion
            }
            else
            {
                MessageBox.Show(foutmeldingen, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private string Valideer(string columnName)
        {
            List<User> users = DatabaseOperations.OphalenUsers();

            if (columnName == "userName" && string.IsNullOrWhiteSpace(txtUsername.Text))
            {
                return "Gelieve een username in te vullen!" + Environment.NewLine;
            }
            if (columnName == "userName" && txtUsername.Text.Count() > 15)
            {
                return "Username mag niet meer dan 15 karakters bevatten!" + Environment.NewLine;
            }
            if (columnName == "user")
            {
                foreach (var user in users)
                {
                    if (user.username == txtUsername.Text)
                    {
                        return "User Bestaat al! Kies een ander naam!" + Environment.NewLine;
                    }
                }
            }
            if (columnName == "Build" && datagridBuild.SelectedItem == null)
            {
                return "Selecteer een Build!" + Environment.NewLine;
            }
           
            if (columnName == "Item" && cmbItems.SelectedItem == null)
            {
                return "Selecteer een item om toe te voegen!" +Environment.NewLine;
            }
           
            if (columnName == "BuildItem" && datagridBuildItems.SelectedItem == null)
            {
                return "Selecteer een item in de build om te verwijderen!" + Environment.NewLine;
            }
           
            if (columnName == "BuildNaam" && string.IsNullOrWhiteSpace(txtBuildName.Text))
            {
                return "Vul een build naam in!"+ Environment.NewLine;
            }


            return "";
        }

        private void btnWin_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("Build");
           
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                #region Verander aantal gewonnen van de build
                Build build = datagridBuild.SelectedItem as Build;
                build.wins += 1;
                int ok = DatabaseOperations.AanpassenBuild(build);

                int.TryParse(build.userId.ToString(), out int userid);
                if (ok > 0)
                {
                    datagridBuild.ItemsSource = DatabaseOperations.OphalenBuildsViaUserID(userid);
                }
                else
                {
                    MessageBox.Show("Build win is niet aangepast!");
                }
                #endregion
            }
            else
            {
                MessageBox.Show(foutmeldingen, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btnLoss_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("Build");

            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                #region Verander aantal verloren van de build
                Build build = datagridBuild.SelectedItem as Build;
                build.losses += 1;
                int ok = DatabaseOperations.AanpassenBuild(build);

                int.TryParse(build.userId.ToString(), out int userid);
                if (ok > 0)
                {
                    datagridBuild.ItemsSource = DatabaseOperations.OphalenBuildsViaUserID(userid);
                }
                else
                {
                    MessageBox.Show("Build loss is niet aangepast!");
                }
                #endregion
            }
            else
            {
                MessageBox.Show(foutmeldingen, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Reset()
        {
            datagridBuildItems.ItemsSource = "";
            datagridBuildStats.ItemsSource = "";
        }

        private void btnDeleteUser_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("userName");
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                #region Delete User
                List<User> users = DatabaseOperations.OphalenUserviaUsername(txtUsername.Text);
                foreach (var user in users)
                {
                    if (MessageBox.Show($"Je staat op het punt de user: {user.username} te verwijderen!\nWeet je het zeker?", "Warning", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
                    {
                        int ok = DatabaseOperations.VerwijderenUsers(user);
                        if (ok > 0)
                        {
                            datagridBuild.ItemsSource = "";
                            Reset();
                            txtUsername.Text = "";
                        }
                        else
                        {
                            MessageBox.Show("User is niet verwijderd!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                  
                }
                #endregion
            }
            else
            {
                MessageBox.Show(foutmeldingen, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
         
        }
    }
    
}
