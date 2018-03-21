using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



public partial class Location : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            filldata();

        }
    }
    public void filldata()
    {/*
        SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from college_info", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();

        }
        con.Close();
        SqlDataAdapter dap = new SqlDataAdapter("select * from college_info", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        */
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        filldata();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        filldata();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
    }
}