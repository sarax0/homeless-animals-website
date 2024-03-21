using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AddAccess : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SARAMO\SQLEXPRESS;Initial Catalog=Pets;Integrated Security=sspi");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Test my connection when I load my page 
            Random rnd = new Random();
            //TextPass.Text = rnd.Next(100, 1000).ToString();
            GridView2.Visible = true;

            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringChars = new char[8];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            string finalString = new String(stringChars);
            TextPass.Text = finalString.ToString();
        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string sql_del = "delete from [Login] where(@id=ID) ";
            con.Open();
            SqlCommand cmd_add = new SqlCommand(sql_del, con);
            cmd_add.Parameters.AddWithValue("@id", TextID.Text);
            cmd_add.ExecuteNonQuery();
            LabelMsg.Text = "Deleted";
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string sql_upd = "update [Login] set Password = @pass where(@id=ID) ";
            con.Open();
            SqlCommand cmd_add = new SqlCommand(sql_upd, con);
            cmd_add.Parameters.AddWithValue("@id", TextID.Text);
            cmd_add.Parameters.AddWithValue("@pass", TextPass.Text);
            

            cmd_add.ExecuteNonQuery();
            LabelMsg.Text = "Updated";
            con.Close();
        }


        protected void btnAccess_Click(object sender, EventArgs e)
        {
            string sql_ins = @"insert into [Login] values(@Email,@Password,@Type)";
            con.Open();
            SqlCommand cmd_add = new SqlCommand(sql_ins, con);
            cmd_add.Parameters.AddWithValue("@Email", TextEmail.Text);
            cmd_add.Parameters.AddWithValue("@Password", TextPass.Text);
            cmd_add.Parameters.AddWithValue("@Type", DropDownList1.SelectedValue);
            cmd_add.ExecuteNonQuery();
            LabelMsg.Text = "Added";
            con.Close();
            GridView2.Visible = true;
        }


    }
}