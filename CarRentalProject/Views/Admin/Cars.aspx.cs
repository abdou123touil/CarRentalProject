using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing.Drawing2D;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CarRentalProject.Views.Admin
{
    public partial class Cars : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e) {

            Conn = new Models.Functions();
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            ErrorMsg.InnerText = "Button clicked";

            try
            {

                if (string.IsNullOrEmpty(Lnumber.Value) || string.IsNullOrEmpty(brand.Value) || string.IsNullOrEmpty(model.Value) || string.IsNullOrEmpty(price.Value) || string.IsNullOrEmpty(color.Value))
                {
                    ErrorMsg.InnerText = "missing information";
                }
                else
                {
                    String Lnum = Lnumber.Value.ToString();
                    String brn = brand.Value;
                    String mod = model.Value;
                    int prx = Convert.ToInt32(price.Value.ToString());
                    String col = color.Value;

                    string Status = avilable.SelectedValue;
                    string Query = "insert into CarT values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = String.Format(Query,Lnum,brn,mod,prx,col,Status);
                    Conn.SetData(Query);
                    ErrorMsg.InnerText = "car add";
                }
            }
            catch (SqlException Ex) { ErrorMsg.InnerText = Ex.Message; }




        }
    }
}