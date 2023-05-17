using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel.Description;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class UploadPhoto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        /*either thid way
        {
            string spath = Server.MapPath("StudentPhoto") + "/" + FileUpload1.FileName;
            FileUpload1.SaveAs(spath);
        }
        Or this way
        {
            FileUpload1.SaveAs(Server.MapPath("StudentPhoto") + "/" + FileUpload1.FileName);
        }*/
        SqlConnection con = null;
        try
         {
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"E:\\Csit\\dot net\\StudManageSystem\\StudManageSystem\\App_Data\\Database.mdf\";Integrated Security=True");

            if (FileUpload1.HasFile)
             {

                FileUpload1.SaveAs(Server.MapPath("StudentPhoto") + "/" + FileUpload1.FileName);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "file message", "alert('file upload successful')",true);

                SqlCommand cmd = new SqlCommand("insert into tblPic values(@uname,@pic)");
                cmd.Parameters.Add("@uname",SqlDbType.VarChar).Value = Session["username"];
                cmd.Parameters.Add("@pic", SqlDbType.VarChar).Value = Server.MapPath("StudentPhoto") + "/" + FileUpload1.FileName;
                con.Open();
                cmd.ExecuteReader();
                con.Close();

                
            }
             else
             {
                 Response.Write("File Upload Failed");
             }
         }
         catch(Exception ex)
         {
             Console.WriteLine("error during uploading file"+ex.Message);
         }
        SqlConnection con1 = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"E:\\Csit\\dot net\\StudManageSystem\\StudManageSystem\\App_Data\\Database.mdf\";Integrated Security=True");
        SqlCommand cmd2 = new SqlCommand("select photo from tblPic where UserName = @user");
        cmd2.Parameters.Add("@user", SqlDbType.VarChar).Value = Session["username"];
        con1.Open();

        using (SqlDataReader sdr = cmd2.ExecuteReader())
        {
            sdr.Read();
            Response.Write(sdr["UserName"]);

        }

        con1.Close();


    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}