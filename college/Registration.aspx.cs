using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    static string pass = "";
    static string gen, c, opt;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    void gender()
    {
        int count = 0;
        for (int i = 0; i < rdolist_gender.Items.Count; i++)
        {
            if (rdolist_gender.Items[i].Selected == true)
            {
                gen = rdolist_gender.Items[i].Text;
                count = 1;
                break;
            }
        }
        if (count == 0)
        {
            gen = null;
        }
    }

    void course()
    {
        int count = 0;
        for (int i = 0; i < rdolist_course.Items.Count; i++)
        {
            if (rdolist_course.Items[i].Selected == true)
            {
                c = rdolist_course.Items[i].Text;
                count = 1;
                break;
            }
        }
        if (count == 0)
        {
            c = null;
        }
    }

    void opt_sub()
    {
        int count = 0;
        for (int i = 0; i < drop_opt.Items.Count; i++)
        {
            if (drop_opt.Items[i].Selected == true && drop_opt.Items[i].Text!="Select Course")
            {
                opt = drop_opt.Items[i].Text;
                count = 1;
                break;
            }
        }
        if (count == 0)
        {
            opt = null;
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if(Page.IsValid==true)
        {
            SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=CAForum");
            con.Open();
            if (txt_name.Text != "" && txt_mail.Text != "" && txt_pwd.Text != "")
            {
                if (txt_pwd.Text == txt_cpwd.Text)
                {
                    pass += txt_pwd.Text;
                    gender();
                    course();
                    opt_sub();

                    string qry = "insert into StuRegister values('" + txt_name.Text + "','" + txt_mail.Text + "','" + pass + "','" + txt_address.Text + "','" + txt_fname.Text + "','" + txt_dob.Text + "','" + gen + "','" + txt_board.Text + "','" + txt_school.Text + "','" + txt_10per.Text + "','" + txt_12per.Text + "','" + c + "','" + opt + "')";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        lbl_msg.Text = "Your details have been SAVED.Please Log in!!";
                        lbl_msg.Visible = true;
                        Log.Enabled = true;
                    }
                }
                else
                {
                    lbl_msg.Text = "ERROR : Confirmed Password does not match with the given Password.";
                    lbl_msg.Visible = true;
                }
            }
            else
            {
                lbl_msg.Visible = true;
                lbl_msg.Text = "ERROR : Fill missing data.";
            }
            
            con.Close();
        }
        
    }
   protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
       /* string s = args.Value;
        for(int i=0;i<s.Length;i++)
        {
            int x = Convert.ToInt32(s[i]);
            if(!((x>=65&&x<=90)||(x>=97&&x<=122)))
            {
                args.IsValid=false;
                break;
            }
        }*/
    }
    protected void txt_mail_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=SACHIN;uid=sa;pwd=sachin1996;database=CAForum");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from StuRegister where s_email='"+txt_mail.Text+"'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            lbl_mail_msg.Text = "E-mail Already Exists";
            lbl_mail_msg.Visible = true;
        }
        con.Close();
    }
    protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
    {/*
        string s = args.Value;
        for (int i = 0; i < s.Length; i++)
        {
            int x = Convert.ToInt32(s[i]);
            if (!((x >= 65 && x <= 90) || (x >= 97 && x <= 122)))
            {
                args.IsValid=false;
                break;
            }
        }*/
    }
}