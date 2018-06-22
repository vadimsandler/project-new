using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBPath2"].ConnectionString;
            conn.Open();
            SqlCommand comm = new SqlCommand();
            comm.Connection = conn;
            comm.CommandText = "SELECT LONG FROM VADIMWELCOME ORDER BY ID";
            SqlDataReader reader = comm.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {

                    welcome_lit.Text += string.Format(@"{0}", reader[0].ToString());
                }
            }
            reader.Close();
            comm.CommandText = "SELECT ID,CODE,NAME FROM VADIMTYPES ORDER BY ID";
            reader = comm.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {

                    figure_lit.Text += String.Format(@"
                     <figure>
                         <a href=""types.aspx?id={0}"">
                            <strong class=""{1}""></strong>
                            <span>{2}</span>
                        </a>
                        </figure>
                    ",reader["ID"].ToString(),reader["CODE"].ToString().Trim(),reader["NAME"].ToString());
                }
            }
        }
    }
}