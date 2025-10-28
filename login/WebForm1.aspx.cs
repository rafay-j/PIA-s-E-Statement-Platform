using System;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace login
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "";
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string designation = txtdesig.Text.Trim();

            string connectionString = ConfigurationManager.ConnectionStrings["LoginDBConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
        {
        string query = "SELECT COUNT(*) FROM Table_1 WHERE Username = @Username AND Password = @Password";

         using (SqlCommand cmd = new SqlCommand(query, conn))
                  {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);

                    conn.Open();
                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    if (count == 1)
                    {
                        lblMessage.Text = "Login successful!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        Session["Username"] = username;
                        Response.Redirect("estateform.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Invalid username or password.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }
    }
}
