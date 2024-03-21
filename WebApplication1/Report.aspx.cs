﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class Report : System.Web.UI.Page
    {
        //connect to DB
        //server   database name     authentication  sspi for windows authentication

        SqlConnection con = new SqlConnection(@"Data Source=SARAMO\SQLEXPRESS;Initial Catalog=Pets;Integrated Security=sspi");

        protected void Page_Load(object sender, EventArgs e)
        {
            //Test my connection when I load my page 
            con.Open(); //open connection
            con.Close();
        }

        protected void btn1Report_Click(object sender, EventArgs e)
        {
            string sql_ins = "insert into [Reports] values(@Name,@Age,@Address,@PhoneNumber,@Species,@Amount)";
            //sqlCon->link to db
            //sqlCmd->interact with db
            SqlCommand cmd_add = new SqlCommand(sql_ins, con);

            cmd_add.Parameters.AddWithValue("@Name", TextName.Text);
            cmd_add.Parameters.AddWithValue("@Age", TextAge.Text);
            cmd_add.Parameters.AddWithValue("@Address", TextAddress.Text);
            cmd_add.Parameters.AddWithValue("@PhoneNumber", TextPhone.Text);
            cmd_add.Parameters.AddWithValue("@Species", DDListType.Text);
            cmd_add.Parameters.AddWithValue("@Amount", TextAmount.Text);
            con.Open();
            cmd_add.ExecuteNonQuery();
            con.Close();
            LabelMsg.Text = "successed";
        }
    }
}