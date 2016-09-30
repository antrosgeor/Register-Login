using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Caching;
using System.Data;

namespace Regist_Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString);
            SqlConnection con = new SqlConnection(@"Data Source=antros;Initial Catalog=register;Integrated Security=True");

            con.Open();
            string checkuser = "select count(*) from regist where UserName='" + TextBoxUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            // if temp == 1, the user Exists tou DB
            if (temp == 1)
            {
                con.Open();
                string checkPasswordQuery = "select password from UserData where UserName='" + TextBoxUserName.Text + "'";
                SqlCommand PassCom = new SqlCommand(checkPasswordQuery, con);
                string password = PassCom.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUserName.Text;
                    Response.Write("Password is Correct");
                    Response.Redirect("Users.aspx");
                }
                else
                {
                    Response.Write("Password is Not Correct");
                }
            }
            else
            {
                Response.Write("Email is not exist");
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString);
            SqlConnection con = new SqlConnection(@"Data Source=antros;Initial Catalog=register;Integrated Security=True");

            con.Open();
            string checkuser = "select count(*) from regist where Email='" + TextBoxEmail.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            // if temp == 1, the user Exists tou DB
            if (temp == 1)
            {
                con.Open();
                string checkPasswordQuery = "select password from UserData where UserName='" + TextBoxUserName.Text + "'";
                SqlCommand PassCom = new SqlCommand(checkPasswordQuery, con);
                string password = PassCom.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUserName.Text;
                    Response.Write("Password is Correct");
                    Response.Redirect("Users.aspx");
                }
                else
                {
                    Response.Write("Password is Not Correct");
                }
            }
            else
            {
                Response.Write("Email is not exist");
            }


        }


    }
}