//using WebApplication1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Login
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SARAMO\SQLEXPRESS;Initial Catalog=Pets;Integrated Security=sspi");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "select * from Login where @email=EMAIL and @pass=PASSWORD";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@email", TextBoxUsername.Text);
            cmd.Parameters.AddWithValue("@pass", TextBoxPass.Text);

            SqlDataReader r; //SqlDataReader Provides a way of reading rows from a SQL Server database

            con.Open();
            r = cmd.ExecuteReader(); //instead of ExecuteNonQuery()
            if (r.HasRows) //HasRows --> Gets a value that indicates whether the SqlDataReader contains one or more rows.


            {
                string user_type = " ";
                while (r.Read())
                {
                    user_type = r["Type"].ToString();
                }
                if (user_type == "0")
                {
                    Response.Redirect("../Admin.aspx");
                }
                else if (user_type == "1")
                {
                    Response.Redirect("../Team.aspx");
                }
            }
            else
            {
                Label1.Text = "Invalid username or password";
                Label1.Visible = true;
                
            }
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Home.aspx");
        }
    }
}