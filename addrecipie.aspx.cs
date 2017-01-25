using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace FoodWorld
{
    public partial class addrecipie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void onClick(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=foodworld.mssql.somee.com;Initial Catalog = foodworld; User ID = akshaygrover588_SQLLogin_1; Password = 8rmbp676tc; Integrated Security=False"); ;
                SqlCommand cmd = new SqlCommand("addrdata", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("rid", t3.Text);
               
                cmd.Parameters.AddWithValue("rname", t1.Text);
                cmd.Parameters.AddWithValue("rdata", t2.Text);
               

                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i != 0)
                {
                    Label1.Text = "SuccessfullyAdded !";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = "Error " + ex;
            }

        }
    }
}