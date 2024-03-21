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
    public partial class Team : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SARAMO\SQLEXPRESS;Initial Catalog=Pets;Integrated Security=sspi");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Test my connection when I load my page 
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string sql_ins = "delete from [Reports] where(@id=ID) ";
            con.Open();
            SqlCommand cmd_add = new SqlCommand(sql_ins, con);
            cmd_add.Parameters.AddWithValue("@id", TextID.Text);

            cmd_add.ExecuteNonQuery();
            LabelMsg.Text = "Case Removed";
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string sql_ins = "update [Reports] set CaseStatus = @CaseStatus, PetStatus=@PetStatus  where(@id=ID) ";
            con.Open();
            SqlCommand cmd_add = new SqlCommand(sql_ins, con);
            cmd_add.Parameters.AddWithValue("@id", TextID.Text);
            cmd_add.Parameters.AddWithValue("@CaseStatus", DropDownList1.Text);
            cmd_add.Parameters.AddWithValue("@PetStatus", DropDownList2.Text);

            cmd_add.ExecuteNonQuery();
            LabelMsg.Text = "Updated";
            con.Close();
        }
    }
}