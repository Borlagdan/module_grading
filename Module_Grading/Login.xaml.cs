using System.Windows;
using MahApps.Metro.Controls;
using MySql.Data.MySqlClient;
using MahApps.Metro.Controls.Dialogs;

namespace Module_Grading
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : MetroWindow
    {
        private static string dbLocation = "server=localhost;user id=root;database=cfcsf_capstone";
        private string dbQuery;
        
        public Login()
        {
            InitializeComponent();

            txt_UserName.Focus();
        }

        private void btn_Login_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if(txt_UserName.Text == null)
            {
                this.ShowMessageAsync("Enter Username to login.", "Error");
                txt_UserName.Focus();
            }

            else if (txt_PassWord.Password.ToString() == null)
            {
                this.ShowMessageAsync("Enter Password to login.", "Error");
                txt_PassWord.Focus();
            }

            else
            {
                db_ValidateLoginInformation();
            }
        }

        private void db_ValidateLoginInformation()
        {
            MySqlConnection dbConnection = new MySqlConnection(dbLocation);

            dbQuery = "SELECT username, password FROM useraccounts WHERE username = '" + txt_UserName.Text + "' AND password = '" + txt_PassWord.Password.ToString() + "' AND usertype = 'Grade Encoder'";

            MySqlCommand dbCommand = new MySqlCommand(dbQuery, dbConnection);

            try
            {
                dbConnection.Open();

                MySqlDataReader dbDataReader = dbCommand.ExecuteReader();

                if (dbDataReader.Read() == true)
                {
                    dbConnection.Close();

                    // this.ShowMessageAsync("Welcome " + txt_UserName.Text, "Login successful");

                    MainWindow mainWindow = new MainWindow();
                    mainWindow.Show();

                    this.Close();
                }

                else
                {
                    dbConnection.Close();

                    // this.ShowMessageAsync("Incorrect Login credentials.", "Error");
                    txt_UserName.Focus();
                }
            }

            catch (MySqlException ex)
            {

                MessageBox.Show(ex.Message);
                dbConnection.Close();
            }

            finally
            {
                dbConnection.Close();
            }
        }
    }
}
