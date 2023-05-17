using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Subjects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        string sub =string.Empty;
        foreach (ListItem li in cblSubjects.Items)
        {
            if (li.Selected == true)
            {
                sub += li.Text + ",";
            }
        }
        sub += rblsubjects.SelectedItem.Text;
        Literal1.Text = sub;
    }
}