using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Volunteers : System.Web.UI.Page
    {
        //connect to DB
        //server   database name     authentication  sspi for windows authentication

        SqlConnection con = new SqlConnection(@"Data Source=SARAMO\SQLEXPRESS;Initial Catalog=Pets;Integrated Security=sspi");

        protected void Page_Load(object sender, EventArgs e)
        {
            //Test my connection when I load my page 
            con.Open(); //open connection
            Response.Write(con.State.ToString());
            con.Close();
            btn_signup0.Visible = false;
        }


        protected void btn1Report_Click(object sender, EventArgs e)
        {

            string sql_ins = "insert into [Voulnteers] values(@Name,@Email,@Address,@Experience,@Reason,@SSD,@PhoneNumber,@Age,@IsAvailable)";
            //sqlCon->link to db
            //sqlCmd->interact with db
            SqlCommand cmd_add = new SqlCommand(sql_ins, con);

            cmd_add.Parameters.AddWithValue("@Name", TextName.Text);
            cmd_add.Parameters.AddWithValue("@Email", TextEmail.Text);
            cmd_add.Parameters.AddWithValue("@Address", TextAddress.Text);
            cmd_add.Parameters.AddWithValue("@Experience", TextExperience.Text);
            cmd_add.Parameters.AddWithValue("@Reason", TextReason.Text);
            cmd_add.Parameters.AddWithValue("@SSD", TextSSD.Text);
            cmd_add.Parameters.AddWithValue("@PhoneNumber", TextPhone.Text);
            cmd_add.Parameters.AddWithValue("@Age", TextAge.Text);
            cmd_add.Parameters.AddWithValue("@IsAvailable", DropDownList1.Text);
            con.Open();
            cmd_add.ExecuteNonQuery();
            con.Close();
            LabelMsg.Text = "successed";

        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {

            string sql_ins = "insert into [Voulnteers] values(@Name,@Email,@Address,@Experience,@Reason,@SSD,@PhoneNumber,@Age,@IsAvailable)";
            //sqlCon->link to db
            //sqlCmd->interact with db
            SqlCommand cmd_add = new SqlCommand(sql_ins, con);

            cmd_add.Parameters.AddWithValue("@Name", TextName.Text);
            cmd_add.Parameters.AddWithValue("@Email", TextEmail.Text);
            cmd_add.Parameters.AddWithValue("@Address", TextAddress.Text);
            cmd_add.Parameters.AddWithValue("@Experience", TextExperience.Text);
            cmd_add.Parameters.AddWithValue("@Reason", TextReason.Text);
            cmd_add.Parameters.AddWithValue("@SSD", TextSSD.Text);
            cmd_add.Parameters.AddWithValue("@PhoneNumber", TextPhone.Text);
            cmd_add.Parameters.AddWithValue("@Age", TextAge.Text);
            cmd_add.Parameters.AddWithValue("@IsAvailable", DropDownList1.Text);
            con.Open();
            cmd_add.ExecuteNonQuery();
            con.Close();
            LabelMsg.Text = "successed";

        }

        protected void TextSSD_TextChanged(object sender, EventArgs e)
        {

        }
    }
}