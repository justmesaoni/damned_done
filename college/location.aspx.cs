using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class College : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
protected void GridView_location_SelectedIndexChanged(object sender, EventArgs e)
{
  
}
protected void drp_reg_SelectedIndexChanged(object sender, EventArgs e)
{

    if (drp_reg.SelectedItem.Text == "North India")
    {
        SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_perc,c_prog,c_type,c_place,c_btech,c_mtech,c_ba,c_ma,c_mbbs,c_rate from college_info where c_reg='North India'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView_location.DataSource = ds.Tables[0];
        GridView_location.DataBind();
    }

    else if (drp_reg.SelectedItem.Text == "South India")
    {
        SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_perc,c_prog,c_type,c_place,c_btech,c_mtech,c_ba,c_ma,c_mbbs,c_rate from college_info where c_reg='South India'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView_location.DataSource = ds.Tables[0];
        GridView_location.DataBind();
    }
    else if (drp_reg.SelectedItem.Text == "East India")
    {
        SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_perc,c_prog,c_type,c_place,c_btech,c_mtech,c_ba,c_ma,c_mbbs,c_rate from college_info where c_reg='East India'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView_location.DataSource = ds.Tables[0];
        GridView_location.DataBind();
    }
    if (drp_reg.SelectedItem.Text == "West India")
    {
        SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_perc,c_prog,c_type,c_place,c_btech,c_mtech,c_ba,c_ma,c_mbbs,c_rate from college_info where c_reg='West India'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView_location.DataSource = ds.Tables[0];
        GridView_location.DataBind();
    }
}
protected void drp_reg_TextChanged(object sender, EventArgs e)
{

}
}