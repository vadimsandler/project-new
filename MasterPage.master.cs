using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBPath2"].ConnectionString;
            conn.Open();
            SqlCommand comm = new SqlCommand();
            comm.Connection = conn;
            comm.CommandText = "SELECT ID, NAME FROM VADIMSERVICES ORDER BY ID";
            SqlDataReader reader = comm.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    services_lit.Text += string.Format(@"<li><a href=""services.aspx?id={0}"">{1}</a>",reader["ID"].ToString(), reader["NAME"].ToString());
                }
            }
        }
        servicesm_lit.Text = services_lit.Text;
    }
}
