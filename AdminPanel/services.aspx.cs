using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;


public partial class AdminPanel_services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Error_lb.Text = "";

        SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["DBPath2"].ConnectionString;
        SqlDataSource1.SelectCommand = "SELECT ID,NAME,LONG FROM VADIMSERVICES";
        //  SqlDataSource1.UpdateCommand = "UPDATE FILTERS SET RUNAME=@RUNAME,AZNAME=@AZNAME,ENNAME=@ENNAME WHERE ID=@ID";
        SqlDataSource1.DeleteCommand = "DELETE FROM VADIMSERVICES WHERE ID=@ID";
        if (!Page.IsPostBack)
        {
            Save_btn.Visible = true;
            edit_btn.Visible = false;
            Cancel_btn.Visible = false;

            name_edt.Text = "";
            long_edt.Text = "";

           
        }

    }
    protected void Save_btn_Click(object sender, EventArgs e)
    {
        using (SqlConnection Conn = new SqlConnection())
        {
            Conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBPath2"].ConnectionString;
            SqlCommand Comm = new SqlCommand();
            Comm.Connection = Conn;
            Conn.Open();
            Comm.CommandText = "INSERT INTO VADIMSERVICES(NAME,LONG) VALUES(@NAME,@LONG)";
            Comm.Parameters.Add("@NAME", SqlDbType.NVarChar);
            Comm.Parameters["@NAME"].Value = name_edt.Text;
            Comm.Parameters.Add("@LONG", SqlDbType.NVarChar);
            Comm.Parameters["@LONG"].Value = long_edt.Text;
            

            try
            {
                Comm.ExecuteScalar();
                Error_lb.Text = "Данные успешно добавлены";
            }
            catch (SqlException E)
            {
                Error_lb.Text = E.Message;
                return;
            }
            CategoriesGrid.DataBind();
        }
    }
    protected void CategoriesGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }

    protected void CategoriesGrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      

        if (e.CommandName == "UpdateCommand")
        {
            Error_lb.Text = "";
            using (SqlConnection Conn = new SqlConnection())
            {
                Conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBPath2"].ConnectionString;
                Conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = Conn;
                comm.CommandText = @"SELECT ID,NAME,LONG FROM VADIMSERVICES WHERE ID=@ID";
                comm.Parameters.Clear();
                comm.Parameters.AddWithValue("@ID", CategoriesGrid.DataKeys[Convert.ToInt32(e.CommandArgument)].Values[0].ToString());
                SqlDataReader reader = comm.ExecuteReader();
                if (reader.HasRows)
                {
                    if (reader.Read())
                    {

                        ID_lb.Text = reader["ID"].ToString();

                        name_edt.Text = reader["NAME"].ToString();
                        long_edt.Text = reader["LONG"].ToString();


                        Save_btn.Visible = false;
                        edit_btn.Visible = true;
                        Cancel_btn.Visible = true;
                    }
                }
            }
        }


    }
    protected void CategoriesGrid_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void edit_btn_Click(object sender, EventArgs e)
    {
        using (SqlConnection Conn = new SqlConnection())
        {
            Size s = new Size(400, 400);
            Conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBPath2"].ConnectionString;
            Conn.Open();
            SqlCommand Comm = new SqlCommand();
            Comm.Connection = Conn;
            Comm.CommandText = @"UPDATE VADIMSERVICES SET NAME=@NAME,LONG=@LONG WHERE ID=@ID";
            Comm.Parameters.Add("@NAME", SqlDbType.NVarChar);
            Comm.Parameters["@NAME"].Value = name_edt.Text;
            Comm.Parameters.Add("@LONG", SqlDbType.NVarChar);
            Comm.Parameters["@LONG"].Value = long_edt.Text;
           
            Comm.Parameters.AddWithValue("@ID", ID_lb.Text);
            int ID = Convert.ToInt32(ID_lb.Text);
            try
            {
                Comm.ExecuteNonQuery();


                Error_lb.ForeColor = System.Drawing.Color.Green;
                CategoriesGrid.DataBind();

                Error_lb.Text = "Данные успешно добавлены";
            }
            catch (SqlException E)
            {
                Error_lb.ForeColor = System.Drawing.Color.Red;
                Error_lb.Text = string.Format("При загрузке в Базу Данных произошла ошибка. Текст ошибки:{0}", E.Message);
                return;
            }
            Save_btn.Visible = false;
            edit_btn.Visible = true;
            Cancel_btn.Visible = true;




        }
    }
    protected void Cancel_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("services.aspx");
    }
    protected void CategoriesGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Save_btn.Visible = true;
        edit_btn.Visible = false;
        Cancel_btn.Visible = false;
    }
}