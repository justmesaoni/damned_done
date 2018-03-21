using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class campus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sess"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void drp_college_SelectedIndexChanged(object sender, EventArgs e)
    {
        /*if (drp_college.SelectedValue == "Ahmedabad University")
        {
           SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            SqlDataAdapter dap = new SqlDataAdapter("select c_name,c_image from college_info", "server=SACHIN;uid=sa;pwd=sachin1996;database=college");
            DataSet ds = new DataSet();
            dap.Fill(ds);
             GridView11.DataSource = ds.Tables[0];
            GridView11.DataBind();
        }*/
        switch(drp_college.SelectedValue)
        {
            case "Ahmedabad University":
                MultiView1.SetActiveView(View1);
                break;
            case "Aligarh Muslim University":
                MultiView1.SetActiveView(View2);
                break;
            case "All India Institute of Medical Science":
                MultiView1.SetActiveView(View3);
                break;
            case "Amity University":
                MultiView1.SetActiveView(View4);
                break;
            case "Andhra University":
                MultiView1.SetActiveView(View5);
                break;
            case "Anna University":
                MultiView1.SetActiveView(View6);
                break;
            case "Assam University":      
                MultiView1.SetActiveView(View7);
                break;              
        }
    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {


    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        
        
        
        return default(string);
    }
}