using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Financial_Guide : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp_fin.SelectedItem.Text =="0-2,00,000")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_tuition from college_info where c_tuition<=200000", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridViewFin.DataSource = ds.Tables[0];
            GridViewFin.DataBind();
        }
        else if (drp_fin.SelectedItem.Text == "2,00,000-4,00,000")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_tuition from college_info where c_tuition<=400000 and c_tuition>200000", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridViewFin.DataSource = ds.Tables[0];
            GridViewFin.DataBind();
        }
        else
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_tuition from college_info where c_tuition<=1000000 and c_tuition>400000", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridViewFin.DataSource = ds.Tables[0];
            GridViewFin.DataBind();
        }
        


    }
}