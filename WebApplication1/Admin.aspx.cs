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
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SARAMO\SQLEXPRESS;Initial Catalog=Pets;Integrated Security=sspi");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Test my connection when I load my page 
            con.Open(); //open connection
            Response.Write(con.State.ToString());
            con.Close();
            //GridView1.Visible = false;
            GridView1.Visible = true;
            GridView2.Visible = false;
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            string sql_ins = "insert into [Team] select * from [Voulnteers] where(@id=ID) ";

            SqlCommand check_User_Name = new SqlCommand("SELECT id FROM [Team] WHERE ([id] = @id)", con);
            cmd   = new SqlCommand("SELECT id FROM [Team] WHERE Id='"+TextID.Text+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i > 0)
            {
                LabelMsg.Text = "already exist";
                ds.Clear();
            }
            

            //con.Open();
            //check_User_Name.Parameters.AddWithValue("@id", TextID.Text);
            //int UserExist = (int)check_User_Name.ExecuteScalar();

            //if (UserExist > 0)
            //{
            //    LabelMsg.Text = "already exist";
            //}
            //else
            //{

            //    SqlCommand cmd_add = new SqlCommand(sql_ins, con);
            //    cmd_add.Parameters.AddWithValue("@id", TextID.Text);
            //    con.Open();
            //    cmd_add.ExecuteNonQuery();
            //    LabelMsg.Text = "successed";
            //    con.Close();

            //}
            //    if id of txtbox == id found in  team decline
            //string sql_ins = "insert into [Team] select * from [Voulnteers] where(@id=ID) ";
            //string sql_select = "select * from [Team]  where([user] = '" + txtBox_UserName.Text + "'", sqlConnection));
            //sqlCon->link to db
            //sqlCmd->interact with db

            //   WORKINGGGGGGGGGGGGGGGGGGGGGGGGGGGG
            //string sql_ins = "insert into [Team] select * from [Voulnteers] where(@id=ID) ";

            //SqlCommand cmd_add = new SqlCommand(sql_ins, con);
            //cmd_add.Parameters.AddWithValue("@id", TextID.Text);
            //con.Open();
            //cmd_add.ExecuteNonQuery();
            //LabelMsg.Text = "successed";
            //con.Close();





        }

        protected void btnView_Click(object sender, EventArgs e)
        {

            GridView1.Visible = false;
            GridView2.Visible = true;
            string sql_ins = "update into [Team] select * from [Voulnteers] where(@id=ID) ";
          
            SqlCommand cmd_add = new SqlCommand(sql_ins, con);

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string sql_ins = "delete from [Team] where(@id=ID) ";
            con.Open();
            SqlCommand cmd_add = new SqlCommand(sql_ins, con);
            cmd_add.Parameters.AddWithValue("@id", TextID.Text);

            cmd_add.ExecuteNonQuery();
            LabelMsg.Text = "Deleted";
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string sql_ins = "update [Team] set IsAvailable = @IsAvailable where(@id=ID) ";
            con.Open();
            SqlCommand cmd_add = new SqlCommand(sql_ins, con);
            cmd_add.Parameters.AddWithValue("@id", TextID.Text);
            cmd_add.Parameters.AddWithValue("@IsAvailable", DropDownList1.Text);

            cmd_add.ExecuteNonQuery();
            LabelMsg.Text = "Updated";
            con.Close();
        }

        protected void btnAddMem_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAccess.aspx");
        }
    }
}