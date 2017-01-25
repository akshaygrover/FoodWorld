using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
namespace FoodWorld
{
    public partial class searchrecipie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string data = (string)Session["user"];

            //   user.Text = data;
            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetData();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
                html.Append("<table  style='width:100%; border:groove;'>");

                //Building the Header row.
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("</tr>");

                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</td>");
                    }
                    html.Append("<td> <a href='viewrecipie.aspx'>View</a> </td>");
                    html.Append("</tr>");

                }

                //Table end.
                html.Append("</table>");

                //Append the HTML string to Placeholder.
                placeholder1.Controls.Add(new Literal { Text = html.ToString() });
            }
        }
        private void search(string temp)
        {
            //Populating a DataTable from database.
            DataTable dt = this.searchData(temp);

            //Building an HTML string.
            StringBuilder html = new StringBuilder();

            //Table start.
            html.Append("<table  style='width:100%; border:groove;'>");

            //Building the Header row.
            html.Append("<tr>");
            try
            {
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
            }
            catch (Exception e)
            {
                Debug.Write(e);
            }
            html.Append("</tr>");

            //Building the Data rows.
            try
            {
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</td>");
                    }
                    html.Append("<td> <a href='viewrecipie.aspx'>View</a> </td>");
                    html.Append("</tr>");

                }
            }
            catch (Exception ex)
            {
                Debug.Write(ex);
            }

            //Table end.
            html.Append("</table>");

            //Append the HTML string to Placeholder.
            placeholder1.Controls.Add(new Literal { Text = html.ToString() });
        }
        private DataTable GetData()
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=foodworld.mssql.somee.com;Initial Catalog = foodworld; User ID = akshaygrover588_SQLLogin_1; Password = 8rmbp676tc; Integrated Security=False"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM adddata"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        private DataTable searchData(string temp)
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=foodworld.mssql.somee.com;Initial Catalog = foodworld; User ID = akshaygrover588_SQLLogin_1; Password = 8rmbp676tc; Integrated Security=False"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM adddata WHERE rid='" + temp + "'"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            try
                            {
                                sda.Fill(dt);
                                Label1.Text = "successfull";
                                return dt;
                            }
                            catch(Exception e)
                            {
                                Debug.Write(e);
                                return null;
                            }

                            
                        }
                    }
                }
            }
        }
        protected void onClick(object sender, EventArgs e)
        {
            search(t3.Text);
        }
    }
}