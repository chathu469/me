using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace My_Project
{
    public partial class View_Details_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ATMlabel.Visible = true;
        }

        internal void show()
        {
            throw new NotImplementedException();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon2 = new SqlConnection("Data Source=(local); Initial Catalog=Vehicle; Integrated Security=True;"))
            {
                sqlcon2.Open();
                string query = "select ATM from details where Nozzle=@nozzle";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon2);
                sqlcmd.Parameters.AddWithValue("@nozzle", enginedetails.Text.Trim());

                SqlDataReader data = sqlcmd.ExecuteReader();
                if (data.Read())
                {
                    LabelATMvalue.Text = data["ATM"].ToString();
                }
                else
                {
                    LabelATMvalue.Text = "There is no ATM. Please enter a correct value";
                }
                data.Close();

                
            }
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}