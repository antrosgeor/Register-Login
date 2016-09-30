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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {

            try
            {
                Guid newGUID = Guid.NewGuid();

                //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString);
                SqlConnection con = new SqlConnection(@"Data Source=antros;Initial Catalog=register;Integrated Security=True");

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into regist (UserID, UserName, Email, Password, General, Country, Phone_Number, Date) values('" + newGUID + "','" + TextBoxUserName.Text + "','" + TextBoxEmail.Text + "','" + TextBoxPass.Text + "','" + DropDownListGeneral.SelectedIndex.ToString() + "','" + DropDownListCountry.SelectedItem.ToString() + "','" + TextBoxNumber + "','" + Calendar1.SelectedDate + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Login.aspx");

                //con.Open();
                //string insertQuery = "insert into regist (UserName,Email,Password,General,Country,Phone_Number) values (@Uname ,@email ,@password ,@General, @country ,@Phone)";
                //SqlCommand com = new SqlCommand(insertQuery, con);
                //com.Parameters.AddWithValue("@Uname", TextBoxUserName.Text);
                //com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                //com.Parameters.AddWithValue("@password", TextBoxPass.Text);
                ////com.Parameters.AddWithValue("@Date", Calendar1.SelectedDate);
                //com.Parameters.AddWithValue("@Phone", TextBoxNumber.Text.ToString());
                //com.Parameters.AddWithValue("@General", DropDownListGeneral.SelectedIndex.ToString());
                //com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());
                //com.ExecuteNonQuery();
                //Response.Redirect("Login.aspx");
                //Response.Write("Registration is successful");
                //con.Close();
                //string dateTime = Calendar1.SelectedDate.ToString();
                //String UserName = TextBoxUserName.Text;
                //String email = TextBoxEmail.Text;
                //string pass = TextBoxPass.Text;
                //string Rpass = TextBoxRPass.Text;
                //string phone = TextBoxNumber.Text;
                //string general = DropDownListGeneral.SelectedItem.ToString();
                //string country = DropDownListCountry.SelectedItem.ToString();
                //LabelRegister.Text = "DateTime = " + dateTime + "\n Username = " + UserName
                //    + "\n Email = " + email + "\n Pass = " + pass + "\n Phone = " +
                //    phone + "\n General = " + general + "\n Country = " + country + "\n";

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }
    }
}