using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace My_Project
{
    public partial class Login : System.Web.UI.Page
    {
        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
          messagelabel.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection("Data Source=(local); Initial Catalog=Vehicle2; Integrated Security=True;"))
            {
                sqlcon.Open();
                string query = "select count (1) from Users where username=@username AND password=@password";
                SqlCommand sqlcmd = new SqlCommand(query,sqlcon);
                sqlcmd.Parameters.AddWithValue("@username", username1.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@password",password1.Text.Trim());
                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = username1.Text.Trim();
                    Response.Redirect("View Details Page.aspx");
                }
                else {
                    messagelabel.Visible = true;
                }
            }
        }

        private void Hide()
        {
            throw new NotImplementedException();
        }
    }
}