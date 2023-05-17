using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void btnFeedback_Click(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        try
        {
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""E:\Csit\dot net\StudManageSystem\StudManageSystem\App_Data\Database.mdf"";Integrated Security=True");
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into feedback values(@email,@feedback)";
            string mail = txtemail.Text;
            cmd.Parameters.Add("@email",SqlDbType.VarChar).Value=mail;
            cmd.Parameters.Add("@feedback", SqlDbType.VarChar).Value = txtfeedback.Text;
            //cmd.CommandText = "insert into feedback values('" + txtemail.Text + "','" + txtfeedback.Text + "')";

            //cmd.ExecuteNonQuery();
            cmd.ExecuteReader();
            txtemail.Text = "";
            txtfeedback.Text = "";
        }
        catch (Exception ex)
        {
            Console.WriteLine("something went wrong " + ex.ToString());
        }
        finally
        {
           if (conn.State==ConnectionState.Open)
            {
                conn.Close();
            }
        }

    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        SqlConnection con = null;
        try
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""E:\Csit\dot net\StudManageSystem\StudManageSystem\App_Data\Database.mdf"";Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from feedback";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gvf.DataSource = dt;
            gvf.DataBind();
            
        }
        catch(Exception ex)
        {
            Console.WriteLine("error generated"+ex.ToString());
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }
}