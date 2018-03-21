using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Student_help : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
   
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (stu.SelectedValue=="Ratings")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_rate from college_info", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView9.DataSource = ds.Tables[0];
            GridView9.DataBind();
        }
        else if (stu.SelectedValue == "Our Recommendation")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_rate,c_place,c_reg from college_info where c_place>80", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView9.DataSource = ds.Tables[0];
            GridView9.DataBind();
        }
    }
}