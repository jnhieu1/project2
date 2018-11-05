using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheMentorShip
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string tab = (string)(Session["Tab"]);
            if(tab == "0")
            {
                Menu1.Items[0].Selected = true;
                MultiView1.ActiveViewIndex = 0;
            }
            else
            {
                Menu1.Items[1].Selected = true;
                MultiView1.ActiveViewIndex = 1;
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            MultiView1.ActiveViewIndex = index;
        }
        protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            MultiView2.ActiveViewIndex = index;
        }
        protected void Menu3_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            MultiView3.ActiveViewIndex = index;
        }
    }
}