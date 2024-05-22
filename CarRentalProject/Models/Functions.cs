using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;

namespace CarRentalProject.Models
{
    public class Functions
    {
        private SqlConnection Conn;
        private SqlCommand cmd;
        private DataTable dt;
        private string ConnectionString;
        private SqlDataAdapter sda;

        public Functions()
        {

            ConnectionString = "";
            Conn = new SqlConnection(ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = Conn;
        }

        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, ConnectionString);
            sda.Fill(dt);
            return dt;
        }
        public int SetData(string Query)
        {
            int rcnt = 0;
            if (Conn.State == ConnectionState.Closed) { Conn.Open(); }

            cmd.CommandText = Query;
            rcnt = cmd.ExecuteNonQuery();
            Conn.Close();
            return rcnt;
        }
    }
}