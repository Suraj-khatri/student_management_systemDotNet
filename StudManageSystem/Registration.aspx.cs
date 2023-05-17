using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int len = args.Value.Length;
        if (len ==10 ) {
        args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""E:\Csit\dot net\StudManageSystem\StudManageSystem\App_Data\Database.mdf"";Integrated Security=True");
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into tblReg values(@name,@add,@bdate,@gen,@chkbox,@age,@uname,@pwd,@cpwd,@email,@utype,@mbl)";
                
                string gen = string.Empty;
                if (rbtnmale.Checked)
                {
                    gen = "male";
                }
                else
                {
                    gen = "female";
                }
                string chkbox = string.Empty;
                if (cbdance.Checked)
                {
                    chkbox = "dance";
                }
                else if (cbread.Checked)
                {
                    chkbox = "read";
                }
                else
                {
                    chkbox = "sing";
                }
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = txtname.Text;
                cmd.Parameters.Add("@add", SqlDbType.VarChar).Value = txtaddress.Text;
                cmd.Parameters.Add("@bdate", SqlDbType.Date).Value = txtbdate.Text;
                cmd.Parameters.Add("@gen", SqlDbType.VarChar).Value = gen;
                cmd.Parameters.Add("@chkbox", SqlDbType.VarChar).Value = chkbox;
                cmd.Parameters.Add("@age", SqlDbType.Int).Value = Convert.ToInt32(txtage.Text);
                cmd.Parameters.Add("@uname", SqlDbType.VarChar).Value = txtuname.Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar).Value = txtpwd.Text;
                cmd.Parameters.Add("@cpwd", SqlDbType.VarChar).Value = txtcpwd.Text;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = txtemail.Text;
                cmd.Parameters.Add("@utype", SqlDbType.VarChar).Value = ddlutype.SelectedValue;
                cmd.Parameters.Add("@mbl", SqlDbType.Decimal).Value = Convert.ToDecimal(txtmblno.Text);

                /*                cmd.Parameters.Add("@feedback", SqlDbType.VarChar).Value = txtfeedback.Text;
                */                //cmd.CommandText = "insert into feedback values('" + txtemail.Text + "','" + txtfeedback.Text + "')";
                cmd.ExecuteNonQuery();
              
            }
            catch (Exception ex)
            {
                Console.WriteLine("something went wrong " + ex.ToString());
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }

            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtuname.Text = "";
        txtpwd.Text = "";
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtbdate.Text= Calendar2.SelectedDate.ToString();
    }
}