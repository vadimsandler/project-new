using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class services : System.Web.UI.Page
{
    private int ID()
    {
        int IDS=0;
        try
        {
            IDS = Convert.ToInt32(Request.QueryString["id"]);
        }
        catch
        { }
        return IDS;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBPath2"].ConnectionString;
            conn.Open();
            SqlCommand comm = new SqlCommand();
            comm.Connection = conn;
            comm.CommandText="SELECT LONG FROM VADIMSERVICES WHERE ID=@ID";
            comm.Parameters.AddWithValue("@ID",ID());
            SqlDataReader reader = comm.ExecuteReader();
            if (reader.HasRows)
            {
                if (reader.Read())
                {
                    content_lit.Text = reader[0].ToString();
                }
            }
        }
    }
}