using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace login
{
    public partial class eStatement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdissue.Text = Session["date"]?.ToString();
            imgBanner1.ImageUrl = Session["userImage"].ToString();
            imgBanner2.ImageUrl = Session["userImage2"].ToString();

            string connectionString = ConfigurationManager.ConnectionStrings["LoginDBConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString)){
                conn.Open();
                string query = " SELECT Name, Member_No FROM Table_2 WHERE Name = 'Rafay'";
                SqlCommand cmd = new SqlCommand(query, conn);   // command uses the same connection
                SqlDataReader reader = cmd.ExecuteReader();     // execute query on that connection

                if (reader.Read())
                {
                    lblMemberName.Text = reader["Name"].ToString();
                    lblMembership.Text = reader["Member_No"].ToString();
                }




            }

            }


    }
}