using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;




namespace login
{
    public partial class estatefomr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["LoginDBConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Table_2"; // Fetch all rows
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["date"] = txtDate.Text;
            Response.Redirect("eStatement.aspx");

        }

        protected void btn_upl1(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(FileUpload1.FileName);
            string savePath = Server.MapPath("~/Uploads/" + fileName);
            FileUpload1.SaveAs(savePath);
            Session["userImage"] = "~/Uploads/" + fileName;

            string fileName2 = Path.GetFileName(FileUpload2.FileName);
            string savePath2 = Server.MapPath("~/Uploads/" + fileName2);
            FileUpload2.SaveAs(savePath2);
            Session["userImage2"] = "~/Uploads/" + fileName2;

        }
    }
}

