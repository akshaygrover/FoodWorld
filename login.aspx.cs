using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

using System.Configuration;
using System.Collections;

using System.Web.Security;

using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace FoodWorld
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string data = (string)Session["emailtemp"];
            if (data == null)
            {
                Label1.Text = data;
            }
            else
            {
                email1.Text = data;
            }
        }
        protected void onCLick(object sender, EventArgs e)
        {
    
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=foodworld.mssql.somee.com;Initial Catalog = foodworld; User ID = akshaygrover588_SQLLogin_1; Password = 8rmbp676tc; Integrated Security=False");
                    SqlCommand cmd = new SqlCommand("CheckUser", con);
                    con.Open();
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("username", email1.Text);
                    SqlParameter p2 = new SqlParameter("password", password1.Text);
                    cmd.Parameters.Add(p1);
                    cmd.Parameters.Add(p2);
                    SqlDataReader rd = cmd.ExecuteReader();

                    if (rd.HasRows)
                    {
                        rd.Read();
                        Session["user"] = email1.Text;
                        FormsAuthentication.RedirectFromLoginPage(email1.Text, true);
                        Response.Redirect("userhome.aspx");
                    }
                    else
                    {
                        Label1.Text = "Invalid username or password.";
                    }

                }
                catch (Exception ex)
                {
                    Label1.Text = "Error " + ex;
                }
            

        }
       
    }
}