using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Scores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void drp_scores_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp_scores.SelectedItem.Text == "Below 60")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_perc,c_prog,c_type,c_place,c_btech,c_mtech,c_ba,c_ma,c_mbbs,c_rate from college_info where c_perc between 40 and 55", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridViewScores.DataSource = ds.Tables[0];
            GridViewScores.DataBind();
        }
        else if (drp_scores.SelectedItem.Text == "60-80")
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_perc,c_prog,c_type,c_place,c_btech,c_mtech,c_ba,c_ma,c_mbbs,c_rate from college_info where c_perc between 60 and 75", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridViewScores.DataSource = ds.Tables[0];
            GridViewScores.DataBind();
        }
        else 
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_perc,c_prog,c_type,c_place,c_btech,c_mtech,c_ba,c_ma,c_mbbs,c_rate from college_info where c_perc between 80 and 95", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
            GridViewScores.DataSource = ds.Tables[0];
            GridViewScores.DataBind();
        }
    }
}