using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Security_CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getAllUser();
    }
    public void getAllUser()
    {
        gridAllUsers.DataSource = Membership.GetAllUsers();
        gridAllUsers.DataBind();
    }
    protected void btnSetUser_Click(object sender, EventArgs e)
    {
        Membership.CreateUser(txtUserName.Text, txtPassword.Text, txtEmail.Text);
        lblMessage.Visible = true;
        lblMessage.ForeColor = System.Drawing.Color.Red;
        lblMessage.Text = "User Created Successfully";
        getAllUser();
    }
}