using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GetStudentsDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = null;
        try
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""E:\Csit\dot net\StudManageSystem\StudManageSystem\App_Data\Database.mdf"";Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select Name,Address,Birthdate,Gender,UserName,Email,MobileNo from tblReg where Age>@age and UserType='Student'";
            cmd.Parameters.Add("@age",SqlDbType.VarChar).Value = txtage.Text;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gvGetStudent.DataSource = dt;
            gvGetStudent.DataBind();

        }
        catch (Exception ex)
        {
            Console.WriteLine("error generated" + ex.ToString());
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
