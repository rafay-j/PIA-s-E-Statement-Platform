using System;
using System.Configuration;
using System.Data.SqlClient;

namespace login
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string designation = txtDesig.Text.Trim();

            string connectionString = ConfigurationManager.ConnectionStrings["LoginDBConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // Check if user already exists
                string checkQuery = "SELECT COUNT(*) FROM Table_1 WHERE Username = @Username";
                SqlCommand checkCmd = new SqlCommand(checkQuery, conn);
                checkCmd.Parameters.AddWithValue("@Username", username);

                conn.Open();
                int userExists = (int)checkCmd.ExecuteScalar();

                if (userExists > 0)
                {
                    lblMessage.Text = "Username already exists.";
                    conn.Close();
                    return;
                }

                string insertQuery = "INSERT INTO Table_1 (Username, Password, Designation) VALUES (@Username, @Password, @Designation)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Designation", designation);

                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    lblMessage.Text = "Registration successful. Go to Login.";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Registration failed. Try again.";
                }

                conn.Close();
            }
        }
    }
}

