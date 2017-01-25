using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace FoodWorld
{
    public partial class remove : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void onClick(object sender, EventArgs e)
        {
            string temp = t3.Text;
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=foodworld.mssql.somee.com;Initial Catalog = foodworld; User ID = akshaygrover588_SQLLogin_1; Password = 8rmbp676tc; Integrated Security=False");

                SqlCommand cmd = new SqlCommand("delete FROM adddata where rid='"+temp+"'", con);
                cmd.CommandType = CommandType.Text;
               

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
            }
            Label1.Text = "Removed Data";
        }
    }
}