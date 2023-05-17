using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""E:\Csit\dot net\StudManageSystem\StudManageSystem\App_Data\Database.mdf"";Integrated Security=True");
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tblReg where UserName =@uname and Password =@pwd and UserType = @utype";
            
            cmd.Parameters.Add("@uname", SqlDbType.VarChar).Value = txtuname.Text;
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar).Value = txtpwd.Text;
            cmd.Parameters.Add("@utype",SqlDbType.VarChar).Value = ListBox1.SelectedValue;
        //cmd.CommandText = "insert into feedback values('" + txtemail.Text + "','" + txtfeedback.Text + "')";
           
           SqlDataReader dr = cmd.ExecuteReader();
            
        if (dr.HasRows)
        {
            Session["username"]= txtuname.Text;
            if (ListBox1.SelectedValue == "Student")
            {
                Response.Redirect("StudentHome.aspx");
            }
            else if (ListBox1.SelectedValue == "Admin")
            {
                Response.Redirect("AdminHome.aspx");
            }
            else if (ListBox1.SelectedValue == "Faculty")
            {
                Response.Redirect("FacultyHome.aspx");
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "login fail", "alert('user donot exit')", true);
            txtuname.Text = "";
            txtpwd.Text = "";
            ListBox1.SelectedIndex = -1;

        }

        conn.Close();


    }
}