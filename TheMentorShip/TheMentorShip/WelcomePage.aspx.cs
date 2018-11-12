using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheMentorShip
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["MainLoaded"] = false;
            Session["FromSetting"] = false;
            Session["ProfileNumber"] = 0;
            Session["EmployeeID"] = 0;
        }

        protected void beAMentor_Click(object sender, EventArgs e)
        {
            Response.BufferOutput = true;
            Session["Tab"] = "1";
            Response.Redirect("MainPage.aspx");
        }

        protected void findAMentor_Click(object sender, EventArgs e)
        {
            Response.BufferOutput = true;
            Session["Tab"] = "0";
            Response.Redirect("MainPage.aspx");
        }
    }
}