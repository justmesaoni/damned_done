using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Sports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp_sports.SelectedItem.Text == "YES")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select * from college_info where c_sport='YES'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            gridview4.DataSource = ds.Tables[0];
            gridview4.DataBind();
        }
        else
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select * from college_info where c_sport='NO'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            gridview4.DataSource = ds.Tables[0];
            gridview4.DataBind();
        }
    }
}