using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace TheMentorShip
{
    public partial class MainPage : System.Web.UI.Page
    {
        public static class Globals
        {
            //public static string dbConnectionString = "server=cis425.wpcarey.asu.edu;uid=sxiao13;pwd=blueFARM56;database=groupb05;";

            //public static MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(dbConnectionString);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string tab = (string)(Session["Tab"]);
            if((bool)Session["MainLoaded"] == false)
            {
                if (tab == "0")
                {
                    Menu1.Items[0].Selected = true;
                    MultiView1.ActiveViewIndex = 0;
                }
                else
                {
                    Menu1.Items[1].Selected = true;
                    MultiView1.ActiveViewIndex = 1;
                }
                Session["MainLoaded"] = true;
            }
            else if((bool)Session["FromSetting"] == true)
            {
                Menu1.Items[1].Selected = true;
                MultiView1.ActiveViewIndex = 1;
                Session["FromSetting"] = false;
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
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((DropDownList1.SelectedIndex == DropDownList2.SelectedIndex || DropDownList1.SelectedIndex == DropDownList3.SelectedIndex)
                && DropDownList1.SelectedIndex != 0)
            {
                DropDownList1.SelectedIndex = 0;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if((DropDownList1.SelectedIndex == DropDownList2.SelectedIndex || DropDownList2.SelectedIndex == DropDownList3.SelectedIndex)
                && DropDownList2.SelectedIndex != 0)
            {
                DropDownList2.SelectedIndex = 0;
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((DropDownList3.SelectedIndex == DropDownList2.SelectedIndex || DropDownList3.SelectedIndex == DropDownList1.SelectedIndex)
                && DropDownList3.SelectedIndex != 0)
            {
                DropDownList3.SelectedIndex = 0;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SettingPage.aspx");
        }

        protected void searchBUtton_Click(object sender, EventArgs e)
        {
            string searchName = searchTextBox.Text;
            //int filterIndex = 0;
            string searchSoftSkill = "";

            foreach (ListItem softSkill in filterCheckBoxList.Items)
            {
                if (softSkill.Selected)
                {
                    searchSoftSkill += "or" + softSkill.Value + "= 1";
                }
            }

            string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            string sqlSelect = "select * from employees where EmployeeID = 1454;";

            SqlConnection sqlConnection = new SqlConnection(sqlConnectString);
            //SqlCommand sqlCommand = new SqlCommand(sqlSelect, sqlConnection);

            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlSelect, sqlConnection);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            searchResultGridView.DataSource = dtbl;
            searchResultGridView.DataBind();

            sqlConnection.Open();
            //sqlCommand.ExecuteNonQuery();

            //var reader = sqlCommand.ExecuteReader();
            //int count = 0;

            //while (reader.Read())
            //{
            //    string result = Convert.ToString(reader["EFName"]);
            //    resultLabel.Text = result;
                
            //}
            
            sqlConnection.Close();
            
        }
    }
}