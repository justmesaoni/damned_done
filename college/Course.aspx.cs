using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void drp_Course_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp_Course.SelectedItem.Text == "B.tech")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select * from college_info where c_btech='YES'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView8.DataSource = ds.Tables[0];
            GridView8.DataBind();
        }
        else if (drp_Course.SelectedItem.Text == "M.tech")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select * from college_info where c_mtech='YES'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView8.DataSource = ds.Tables[0];
            GridView8.DataBind();
        }
        else if (drp_Course.SelectedItem.Text == "B.A")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select * from college_info where c_ba='YES'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView8.DataSource = ds.Tables[0];
            GridView8.DataBind();
        }
        else if (drp_Course.SelectedItem.Text == "M.A")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select * from college_info where c_ma='YES'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView8.DataSource = ds.Tables[0];
            GridView8.DataBind();
        }
        else 
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select * from college_info where c_mbbs='YES'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView8.DataSource = ds.Tables[0];
            GridView8.DataBind();
        }
    }
}