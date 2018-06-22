using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.IO;

public partial class AdminPanel_welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       


        if (!Page.IsPostBack)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBPath2"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT ID,LONG FROM VADIMWELCOME";
                SqlDataReader reader = comm.ExecuteReader();
                if (reader.HasRows)
                {
                    if (reader.Read())
                    {
                        aboutus_az.Text = reader["LONG"].ToString();
                       
                        Session["ID"] = reader["ID"].ToString();
                    }
                }
                else
                {
                    Session.Remove("ID");
                }

            }
        }
    }

    protected void save_btn_Click(object sender, EventArgs e)
    {
        using (SqlConnection Conn = new SqlConnection())
        {
            Conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBPath2"].ConnectionString;
            Conn.Open();
            SqlCommand comm = new SqlCommand();
            comm.Connection = Conn;

            if (Session["ID"] != null)
            {
                comm.CommandText = "UPDATE VADIMWELCOME SET LONG=@LONGAZ";
            }
            else
            {
                comm.CommandText = "INSERT INTO VADIMWELCOME(LONG) VALUES(@LONG);";
            }
            comm.Parameters.AddWithValue("@LONG", aboutus_az.Text);

            try
            {
                comm.ExecuteNonQuery();
               
                Error_lb.ForeColor = Color.Green;
                Error_lb.Text = "Операция прошла успешно.";

            }
            catch (SqlException E)
            {
                Error_lb.ForeColor = Color.Red;
                Error_lb.Text = string.Format("При загрузке в Базу Данных произошла ошибка. Текст ошибки:{0}", E.Message);
                return;
            }
        }
    }
}