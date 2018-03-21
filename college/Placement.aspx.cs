using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Placement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Drp_placement_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Drp_placement.SelectedItem.Text == "Above 80 %")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select * from college_info where c_place>80", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView5.DataSource = ds.Tables[0];
            GridView5.DataBind();
        }
        else
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select * from college_info where c_place <80", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView5.DataSource = ds.Tables[0];
            GridView5.DataBind();
        }
    }
}