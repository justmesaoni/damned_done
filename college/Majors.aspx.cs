using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Majors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void drp_majors_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp_majors.SelectedItem.Text == "Honours")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_prog,c_perc,c_type,c_place,c_btech,c_mtech,c_ba,c_ma,c_mbbs,c_rate from college_info where c_prog='Honours'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView3.DataSource = ds.Tables[0];
            GridView3.DataBind();
        }
        else
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_prog,c_perc,c_type,c_place,c_btech,c_mtech,c_ba,c_ma,c_mbbs,c_rate from college_info where c_prog='Technical'", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridView3.DataSource = ds.Tables[0];
            GridView3.DataBind();
        }
    }
}