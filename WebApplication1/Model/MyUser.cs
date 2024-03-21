
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication1.Model
{
    public class MyUser
    {
        public static string GetConnString()
        {
            return @"Data Source=SARAMO\SQLEXPRESS;Initial Catalog=ASPRegister;Integrated Security=True";
        }
        public static int Login(string username, string password, string type)
        {
            int ID = -1;
            int PID = -1;
            SqlConnection conn = new SqlConnection(GetConnString());
            string query = "SELECT Email, Password,Type FROM Login WHERE (Username = N'" + username + "') AND (Password = N'" + password + "')";
            SqlCommand comm = new SqlCommand(query, conn);
            conn.Open();
            //int ID = int.Parse(comm.ExecuteScalar().ToString());
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                ID = int.Parse(r[0].ToString());
                PID = int.Parse(r[1].ToString());
            }
            return PID;
        }
    }
}



