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
            DataTable resultTable = new DataTable();
            resultTable.Clear();
            resultTable.Columns.Add("EmployeeID");
            resultTable.Columns.Add("Name");
            resultTable.Columns.Add("Position");
            resultTable.Columns.Add("SoftSkills");
            string resultEmployeeID = "";
            string resultName = "";
            string resultSoftSkills = "";
            string resultPosition = "";

            string sqlSelect = "";
            


            foreach (ListItem softSkill in filterCheckBoxList.Items)
            {
                if (softSkill.Selected)
                {
                    searchSoftSkill += "and " + softSkill.Value + " = 1";
                    
                }
            }

            string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            if (searchName != "")
            {
                sqlSelect = "select * from employees inner join mentoringskills ON employees.EmployeeID = mentoringskills.EmployeeID where available = 1" + searchSoftSkill + "and ELName ='" + searchName + "';";
            }
            else
            {
                sqlSelect = "select * from employees inner join mentoringskills ON employees.EmployeeID = mentoringskills.EmployeeID where available = 1" + searchSoftSkill + ";";
            }
            //string sqlSelect = "select * from employees inner join mentoringskills ON employees.EmployeeID = mentoringskills.EmployeeID where available = 1" + searchSoftSkill + ";";

            SqlConnection sqlConnection = new SqlConnection(sqlConnectString);
            //SqlCommand sqlCommand = new SqlCommand(sqlSelect, sqlConnection);

            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlSelect, sqlConnection);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            DataRow[] row = dtbl.Select();

            

            for (int i = 0; i < row.Length; i++)
            {
                resultSoftSkills = "";

                resultEmployeeID = dtbl.Rows[i]["EmployeeID"].ToString();
                resultName = dtbl.Rows[i]["EFName"].ToString() + " " +dtbl.Rows[i]["ELName"].ToString();
                resultPosition = dtbl.Rows[i]["Position"].ToString();
                if (Convert.ToInt32(dtbl.Rows[i]["Leadership"]) != 0)
                {
                    resultSoftSkills += "Leadership";
                    if(resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }  
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Communication"]) != 0)
                {
                    resultSoftSkills += "Communication";
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["PublicSpeaking"]) != 0)
                {
                    resultSoftSkills += "Public Speaking";
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["TimeManagement"]) != 0)
                {
                    resultSoftSkills += "Time Management";
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["TeamworkSkills"]) != 0)
                {
                    resultSoftSkills += "Teamwork Skills";
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Persuasion_Negotiation"]) != 0)
                {
                    resultSoftSkills += "Persuasion/Negotiation";
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Networking"]) != 0)
                {
                    resultSoftSkills += "Networking";
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["ConflictResolution"]) != 0)
                {
                    resultSoftSkills += "Conflicat Resolution";
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["PresentationSkills"]) != 0)
                {
                    resultSoftSkills += "Presentation Skills";
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Mentoring_Coaching"]) != 0)
                {
                    resultSoftSkills += "Mentoring/Coaching";
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }
                }

                DataRow resultRow = resultTable.NewRow();
                resultRow["EmployeeID"] = resultEmployeeID;
                resultRow["Name"] = resultName;
                resultRow["Position"] = resultPosition;
                resultRow["SoftSkills"] = resultSoftSkills;
                resultTable.Rows.Add(resultRow);
            }
            searchResultGridView.DataSource = resultTable;
            searchResultGridView.DataBind();

            if(row.Length == 0)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", "<script type=\"text/javascript\">alert('No Results Found');</script>");
            }


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