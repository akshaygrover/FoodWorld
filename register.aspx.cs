using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;

namespace FoodWorld
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void onCLick(object sender, EventArgs e)
        {
            string em = t2.Text;
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=foodworld.mssql.somee.com;Initial Catalog = foodworld; User ID = akshaygrover588_SQLLogin_1; Password = 8rmbp676tc; Integrated Security=False");
                    SqlCommand cmd = new SqlCommand("insertdata", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("name", t1.Text);
                    cmd.Parameters.AddWithValue("email", t2.Text);
                    cmd.Parameters.AddWithValue("contact", t3.Text);
                    cmd.Parameters.AddWithValue("gender", t4.Text);
                    cmd.Parameters.AddWithValue("address", t5.Text);
                    cmd.Parameters.AddWithValue("password", t6.Text);


                    con.Open();
                    int i = cmd.ExecuteNonQuery();
                    if (i != 0)
                    {
                        Label1.Text = "Successfully Registered !";
                        Session["emailtemp"] = em;
                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(em, true);
                        Response.Redirect("Login.aspx");
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                   Debug.WriteLine(ex);
                }
            
        }
       
    }
}