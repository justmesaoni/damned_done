using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.Cookies["CAF"]!=null)
        {
            txt_user.Text = Request.Cookies["CAF"]["uname"].ToString();
            txt_pass.Text = Request.Cookies["CAF"]["passwd"].ToString();
        }
      
    }
    protected void btn_Submit_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=CAForum");
        con.Open();
        if (txt_user.Text != "" && txt_pass.Text != "")
        {
            string qry = "select s_name from StuRegister where s_email='" + txt_user.Text + "'and s_pwd='" + txt_pass.Text + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["sess"] = dr[0].ToString();
                if(chk_remember.Checked==true)
                {
                    HttpCookie ht = new HttpCookie("CAF");
                    ht.Values.Add("uname", txt_user.Text);
                    ht.Values.Add("passwd", txt_pass.Text);
                    ht.Expires = DateTime.Now.AddDays(10);
                    Response.Cookies.Add(ht);
                }
                  lbl_welmsg.Text = "Welcome "+dr[0].ToString() + "!" + "<br>" + "Explore what's best for you in no time!";
                lbl_welmsg.Visible = true;
            }
            else
            {
                lbl_welmsg.Text = "Invalid username/password";
                lbl_welmsg.Visible = true;
            }
        }
        con.Close();
    }
}