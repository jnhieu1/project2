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
        //int count = 0;
        //bool postBack = false;
        List<Employee> employees  = new List<Employee>();
        List<HyperLink> hyperLinks = new List<HyperLink>();


        [Serializable]
        public class Employee
        {
            //Private variables
            private string resultEmployeeID;
            private string resultName;
            private string resultSoftSkills;
            private string resultPosition;
            private int endorsementNum;

            //Properties
            public string ResultEmployeeID { get => resultEmployeeID; set => resultEmployeeID = value; }
            public string ResultName { get => resultName; set => resultName = value; }
            public string ResultSoftSkills { get => resultSoftSkills; set => resultSoftSkills = value; }
            public string ResultPosition { get => resultPosition; set => resultPosition = value; }
            public int EndorsementNum { get => endorsementNum; set => endorsementNum = value; }

            //Constructors
            public Employee()
            {

            }

            public Employee(string resultEmployeeID, string resultName, string resultSoftSkills, string resultPosition, int endorsement)
            {
                ResultEmployeeID = resultEmployeeID;
                ResultName = resultName;
                ResultSoftSkills = resultSoftSkills;
                ResultPosition = resultPosition;
                EndorsementNum = endorsement;
            }
        }

        List<Employee> searchResultList = new List<Employee>();

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
            else if((bool)Session["Searched"] == true && MultiView2.ActiveViewIndex == 0)
            {
                employees = (List<Employee>)ViewState["EmployeeList"];

                if (employees != null)
                {
                    if (employees.Count() > 0)
                    {
                        DataTable resultTable = new DataTable();
                        resultTable.Columns.Add("EmployeeID");
                        resultTable.Columns.Add("Name");
                        resultTable.Columns.Add("Position");
                        resultTable.Columns.Add("SoftSkills");
                        resultTable.Columns.Add("Indor");

                        for (int i = 0; i < employees.Count(); i++)
                        {
                            HyperLink tmp = new HyperLink();
                            tmp.ID = "hyperlink";
                            tmp.Text = "Profile";
                            tmp.NavigateUrl = "SearchResultProfile.apsx?C=" + employees[i].ResultEmployeeID;

                            DataRow resultRow = resultTable.NewRow();
                            //resultRow["EmployeeID"] = resultEmployeeID;
                            resultRow["Name"] = employees[i].ResultName;
                            resultRow["Position"] = employees[i].ResultPosition;
                            resultRow["SoftSkills"] = employees[i].ResultSoftSkills;
                            //resultRow["Indor"] = indorNumber;

                            //employeeId.Add(resultEmployeeID);
                            resultRow["EmployeeID"] = tmp;

                            resultTable.Rows.Add(resultRow);
                            //gridViewMaster.Controls.Add(tmp);
                        }
                        //resultTable.DefaultView.Sort = "Indor desc";
                        searchResultGridView.DataSource = resultTable;
                    }
                }
                //for(int i =1; i < hyperLinks.Count() + 1; i ++)
                //{
                //    searchResultGridView.Rows[i].Cells[3].Controls.Clear();
                //    searchResultGridView.Rows[i].Cells[3].Controls.Add(hyperLinks[i-1]);
                //}
                //hyperLinks.Clear();
                ////for(int i = 1; i < employeeId.Count(); i++)
                ////{
                ////    (HyperLinkField)(searchResultGridView.Rows[i].Cells[3])
                ////}
                //postBack = false;
                Session["Searched"] = false;
            }

            //string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;

            //SqlConnection sqlConnection = new SqlConnection(sqlConnectString);

            //string sqlSelect = "select * from Employees where EmployeeID = 9999";

            //SqlDataAdapter sqlDa = new SqlDataAdapter(sqlSelect, sqlConnection);

            //DataTable dtbl = new DataTable();

            //sqlDa.Fill(dtbl);

            //fNameLabel.Text = dtbl.Rows[0]["EFName"].ToString();
            //lNameLable.Text = dtbl.Rows[0]["ELName"].ToString();
            //jobTitleLabel.Text = dtbl.Rows[0]["Position"].ToString();
            //phoneNumLabel.Text = dtbl.Rows[0]["CellPhone"].ToString();
            //locationLabel.Text = dtbl.Rows[0]["OfficeLocation"].ToString();
            //departmentLabel.Text = dtbl.Rows[0]["Department"].ToString();
            //TextBox1.Text = dtbl.Rows[0]["bio"].ToString();
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
        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if ((DropDownList1.SelectedIndex == DropDownList2.SelectedIndex || DropDownList1.SelectedIndex == DropDownList3.SelectedIndex)
        //        && DropDownList1.SelectedIndex != 0)
        //    {
        //        DropDownList1.SelectedIndex = 0;
        //    }
        //}

        //protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if((DropDownList1.SelectedIndex == DropDownList2.SelectedIndex || DropDownList2.SelectedIndex == DropDownList3.SelectedIndex)
        //        && DropDownList2.SelectedIndex != 0)
        //    {
        //        DropDownList2.SelectedIndex = 0;
        //    }
        //}

        //protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if ((DropDownList3.SelectedIndex == DropDownList2.SelectedIndex || DropDownList3.SelectedIndex == DropDownList1.SelectedIndex)
        //        && DropDownList3.SelectedIndex != 0)
        //    {
        //        DropDownList3.SelectedIndex = 0;
        //    }
        //}

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SettingPage.aspx");
        }

        protected void searchBUtton_Click(object sender, EventArgs e)
        {
            searchResultList.Clear();

            //count = 0;
            Session["ProfileNumber"] = 0;

            employees.Clear();

            //System.Web.UI.HtmlControls.HtmlTableCell tc2 = null;

            //foreach (Control control in this.MultiView2.Controls[1].Controls)
            //{
            //    if(control.ID == "tableDataForSearchResults")
            //    {
            //        tc2 = (System.Web.UI.HtmlControls.HtmlTableCell)control;
            //        tc2.Controls.Clear();
            //    }
            //}

            string searchName = searchTextBox.Text;
            //int filterIndex = 0;
            string searchSoftSkill = "";
            DataTable resultTable = new DataTable();
            resultTable.Columns.Add("EmployeeID");
            resultTable.Columns.Add("Name");
            resultTable.Columns.Add("Position");
            resultTable.Columns.Add("SoftSkills");
            resultTable.Columns.Add("Indor");
            string resultEmployeeID = "";
            string resultName = "";
            string resultSoftSkills = "";
            string resultPosition = "";
            

            string sqlSelect = "";


            foreach (ListItem softSkill in filterCheckBoxList.Items)
            {
                if (softSkill.Selected)
                {
                    searchSoftSkill += "and " + softSkill.Value + " >= 1";
                    
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
                int indorNumber = 0;

                resultEmployeeID = dtbl.Rows[i]["EmployeeID"].ToString();
                resultName = dtbl.Rows[i]["EFName"].ToString() + " " + dtbl.Rows[i]["ELName"].ToString();
                resultPosition = dtbl.Rows[i]["Position"].ToString();
                if (Convert.ToInt32(dtbl.Rows[i]["Leadership"]) != 0)
                {
                    resultSoftSkills += "Leadership";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 2)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Leadership"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Communication"]) != 0)
                {
                    resultSoftSkills += "Communication";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 0)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Communication"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["PublicSpeaking"]) != 0)
                {
                    resultSoftSkills += "Public Speaking";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 1)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["PublicSpeaking"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["TimeManagement"]) != 0)
                {
                    resultSoftSkills += "Time Management";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 3)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["TimeManagement"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["TeamworkSkills"]) != 0)
                {
                    resultSoftSkills += "Teamwork Skills";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 4)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["TeamworkSkills"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Persuasion_Negotiation"]) != 0)
                {
                    resultSoftSkills += "Persuasion/Negotiation";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 5)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Persuasion_Negotiation"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Networking"]) != 0)
                {
                    resultSoftSkills += "Networking";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 6)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Networking"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["ConflictResolution"]) != 0)
                {
                    resultSoftSkills += "Conflicat Resolution";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 7)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["ConflictResolution"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["PresentationSkills"]) != 0)
                {
                    resultSoftSkills += "Presentation Skills";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 8)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["PresentationSkills"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Mentoring_Coaching"]) != 0)
                {
                    resultSoftSkills += "Mentoring/Coaching";
                    
                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 9)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Mentoring_Coaching"]);
                    }
                }

                Employee tmpEmp = new Employee();

                tmpEmp.EndorsementNum = indorNumber;
                tmpEmp.ResultEmployeeID = resultEmployeeID;
                tmpEmp.ResultName = resultName;
                tmpEmp.ResultPosition = resultPosition;
                tmpEmp.ResultSoftSkills = resultSoftSkills;

                employees.Add(tmpEmp);

                //LinkButton tmp = new LinkButton();
                //tmp.Text = "Profile";
                //tmp.Attributes.Add("EmployeeID", resultEmployeeID);
                //tmp.OnClientClick = "SearchResultButtonClick";
                //tmp.Click += new EventHandler(SearchResultButtonClick);
                HyperLink tmp = new HyperLink();
                tmp.ID = "hyperlink";
                tmp.Text = "Profile";
                tmp.NavigateUrl = "SearchResulProfile.apsx?C=" + resultEmployeeID;

                DataRow resultRow = resultTable.NewRow();
                //resultRow["EmployeeID"] = resultEmployeeID;
                resultRow["Name"] = resultName;
                resultRow["Position"] = resultPosition;
                resultRow["SoftSkills"] = resultSoftSkills;
                resultRow["Indor"] = indorNumber;

                //employeeId.Add(resultEmployeeID);
                resultRow["EmployeeID"] = tmp;

                //hyperLinks.Add(tmp);

                resultTable.Rows.Add(resultRow);
                //gridViewMaster.Controls.Add(tmp);
            }
            employees.Sort(delegate (Employee x, Employee y)
            {
                return y.EndorsementNum.CompareTo(x.EndorsementNum);
            });

            resultTable.DefaultView.Sort = "Indor desc";
            searchResultGridView.DataSource = resultTable;

            //for(int i = 1; i < hyperLinks.Count(); i++)
            //{
            //    searchResultGridView.Rows[i].Cells[3].Controls.Add(hyperLinks[i - 1]);

            //}
            searchResultGridView.DataBind();

            //tc2.Controls.Add(gridViewMaster);

            if (row.Length == 0)
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

            //postBack = true;
            Session["Searched"] = true;

            ViewState["EmployeeList"] = employees;
        }

        protected void searchResultGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //GridView tmp = sender as GridView;
            //Table tmp2 = (Table)tmp.Controls[0];

            //try
            //{
            //    switch (e.Row.RowType)
            //    {
            //        case DataControlRowType.Header:
            //            //...
            //            break;
            //        case DataControlRowType.DataRow:
            //            if (tmp.ID == "searchResultGridView")
            //            {
            //                HyperLink tmpLink = new HyperLink();
            //                tmpLink.NavigateUrl = "SearchResultProfile.aspx?EmployeeID=" + employeeId[count];
            //                tmpLink.Text = "Profile";
            //                tmp2.Rows[count + 1].Cells[3].Controls.Add(tmpLink);
            //                hyperLinks.Add(tmpLink);
            //                //tmp.Rows[i].Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(searchResultGridView, "Select$" + tmp.Rows[i].RowIndex);
            //                //tmp.Rows[i].Attributes.Add("EmployeeID", employeeId[i]);
            //                //e.Row.Attributes.Add("EmployeeID", employeeID[i]);
            //                count++;
            //            }
            //            else if (tmp.ID == "DepartmentGridview")
            //            {
            //                HyperLink tmpLink = new HyperLink();
            //                tmpLink.NavigateUrl = "SearchResultProfile.aspx?EmployeeID=" + employeeId[count];
            //                tmpLink.Text = "Profile";
            //                tmp2.Rows[count + 1].Cells[3].Controls.Add(tmpLink);
            //                hyperLinks.Add(tmpLink);
            //                count++;
            //            }

            //            if (count == employeeId.Count())
            //            {
            //                employeeId.Clear();
            //            }
            //            break;
            //    }
            //}
            //catch
            //{
            //    //...throw
            //}
        }

        protected void SearchResultButtonClick(object sender, EventArgs e)
        {
            employees.Clear();

            //System.Web.UI.HtmlControls.HtmlTableCell tc2 = null;

            //foreach (Control control in this.MultiView2.Controls[1].Controls)
            //{
            //    if(control.ID == "tableDataForSearchResults")
            //    {
            //        tc2 = (System.Web.UI.HtmlControls.HtmlTableCell)control;
            //        tc2.Controls.Clear();
            //    }
            //}

            Employee tmpEmp = new Employee();

            string searchName = searchDepartmentTextbox.Text;
            string searchDepartment = " and Department = '" + DepartmentDropDown.SelectedValue + "'";
            DataTable resultTable = new DataTable();
            resultTable.Columns.Add("EmployeeID");
            resultTable.Columns.Add("Name");
            resultTable.Columns.Add("Position");
            resultTable.Columns.Add("SoftSkills");
            resultTable.Columns.Add("Indor");
            string resultEmployeeID = "";
            string resultName = "";
            string resultSoftSkills = "";
            string resultPosition = "";

            string sqlSelect = "";

            string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            if (searchName != "")
            {
                sqlSelect = "select * from employees inner join mentoringskills ON employees.EmployeeID = mentoringskills.EmployeeID where available = 1" + searchDepartment + "and ELName ='" + searchName + "';";
            }
            else
            {
                sqlSelect = "select * from employees inner join mentoringskills ON employees.EmployeeID = mentoringskills.EmployeeID where available = 1" + searchDepartment + ";";
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
                int indorNumber = 0;

                resultEmployeeID = dtbl.Rows[i]["EmployeeID"].ToString();
                resultName = dtbl.Rows[i]["EFName"].ToString() + " " + dtbl.Rows[i]["ELName"].ToString();
                resultPosition = dtbl.Rows[i]["Position"].ToString();
                if (Convert.ToInt32(dtbl.Rows[i]["Leadership"]) != 0)
                {
                    resultSoftSkills += "Leadership";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 2)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Leadership"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Communication"]) != 0)
                {
                    resultSoftSkills += "Communication";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 0)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Communication"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["PublicSpeaking"]) != 0)
                {
                    resultSoftSkills += "Public Speaking";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 1)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["PublicSpeaking"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["TimeManagement"]) != 0)
                {
                    resultSoftSkills += "Time Management";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 3)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["TimeManagement"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["TeamworkSkills"]) != 0)
                {
                    resultSoftSkills += "Teamwork Skills";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 4)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["TeamworkSkills"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Persuasion_Negotiation"]) != 0)
                {
                    resultSoftSkills += "Persuasion/Negotiation";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 5)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Persuasion_Negotiation"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Networking"]) != 0)
                {
                    resultSoftSkills += "Networking";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 6)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Networking"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["ConflictResolution"]) != 0)
                {
                    resultSoftSkills += "Conflicat Resolution";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 7)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["ConflictResolution"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["PresentationSkills"]) != 0)
                {
                    resultSoftSkills += "Presentation Skills";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 8)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["PresentationSkills"]);
                    }
                }
                if (Convert.ToInt32(dtbl.Rows[i]["Mentoring_Coaching"]) != 0)
                {
                    resultSoftSkills += "Mentoring/Coaching";

                    if (resultSoftSkills != "")
                    {
                        resultSoftSkills += ", ";
                    }

                    if (filterCheckBoxList.SelectedIndex == 9)
                    {
                        indorNumber += Convert.ToInt32(dtbl.Rows[i]["Mentoring_Coaching"]);
                    }
                }

                tmpEmp.EndorsementNum = indorNumber;
                tmpEmp.ResultEmployeeID = resultEmployeeID;
                tmpEmp.ResultName = resultName;
                tmpEmp.ResultPosition = resultPosition;
                tmpEmp.ResultSoftSkills = resultSoftSkills;

                employees.Add(tmpEmp);

                //LinkButton tmp = new LinkButton();
                //tmp.Text = "Profile";
                //tmp.Attributes.Add("EmployeeID", resultEmployeeID);
                //tmp.OnClientClick = "SearchResultButtonClick";
                //tmp.Click += new EventHandler(SearchResultButtonClick);
                HyperLink tmp = new HyperLink();
                tmp.ID = "hyperlink";
                tmp.Text = "Profile";
                tmp.NavigateUrl = "SearchResulProfile.apsx?C=" + resultEmployeeID;

                DataRow resultRow = resultTable.NewRow();
                //resultRow["EmployeeID"] = resultEmployeeID;
                resultRow["Name"] = resultName;
                resultRow["Position"] = resultPosition;
                resultRow["SoftSkills"] = resultSoftSkills;
                resultRow["Indor"] = indorNumber;

                //employeeId.Add(resultEmployeeID);
                resultRow["EmployeeID"] = tmp;

                //hyperLinks.Add(tmp);

                resultTable.Rows.Add(resultRow);
                //gridViewMaster.Controls.Add(tmp);
            }

            //resultTable.DefaultView.Sort = "Indor desc";
            DepartmentGridview.DataSource = resultTable;

            //for(int i = 1; i < hyperLinks.Count(); i++)
            //{
            //    searchResultGridView.Rows[i].Cells[3].Controls.Add(hyperLinks[i - 1]);

            //}
            DepartmentGridview.DataBind();

            //tc2.Controls.Add(gridViewMaster);

            if (row.Length == 0)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", "<script type=\"text/javascript\">alert('No Results Found');</script>");
            }

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            //if (CheckBox1.Checked)
            //{
            //    skillsyouwantMentor.Visible = true;
            //    Communication.Visible = true;
            //    PublicSpeaking.Visible = true;
            //    Leadership.Visible = true;
            //    TimeManagement.Visible = true;
            //    TeamworkSkills.Visible = true;
            //    Persuation_Negotiation.Visible = true;
            //    Networking.Visible = true;
            //    ConflictResolution.Visible = true;
            //    PresentationSkills.Visible = true;
            //    Mentoring_Coaching.Visible = true;
            //}
            //else
            //{
            //    skillsyouwantMentor.Visible = false;
            //    Communication.Visible = false;
            //    PublicSpeaking.Visible = false;
            //    Leadership.Visible = false;
            //    TimeManagement.Visible = false;
            //    TeamworkSkills.Visible = false;
            //    Persuation_Negotiation.Visible = false;
            //    Networking.Visible = false;
            //    ConflictResolution.Visible = false;
            //    PresentationSkills.Visible = false;
            //    Mentoring_Coaching.Visible = false;
            //}
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (!Communication.Checked && !PublicSpeaking.Checked && !Leadership.Checked && !TimeManagement.Checked && !Persuation_Negotiation.Checked && !Networking.Checked && !ConflictResolution.Checked && !PresentationSkills.Checked && !Mentoring_Coaching.Checked)
            {
                successMessageProfile.Visible = false;
                errorMessageProfile.Text = "Please select a skill to mentor in";
                errorMessageProfile.Visible = true;
            }
            else if (TextBox1.Text == "")
            {
                successMessageProfile.Visible = false;
                errorMessageProfile.Text = "Please Enter a Bio";
                errorMessageProfile.Visible = true;
            }
            else
            {
                errorMessageProfile.Visible = false;
                successMessageProfile.Text = "Save Successful";
                successMessageProfile.Visible = true;

                string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;

                SqlConnection sqlConnection = new SqlConnection(sqlConnectString);

                sqlConnection.Open();

                string sqlSelect;

                if (CheckBox1.Checked)
                {
                    sqlSelect = "update Mentoringskills set Available = 1 where EmployeeID = 9999";
                }
                else
                {
                    sqlSelect = "update Mentoringskills set Available = 0 where EmployeeID = 9999";
                }

                SqlCommand sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                sqlDa.ExecuteNonQuery();

                sqlSelect = "update employees set bio = '" + TextBox1.Text + "' where EmployeeID = 9999";

                sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                sqlDa.ExecuteNonQuery();


                if (Communication.Checked)
                {
                    sqlSelect = "update Mentoringskills set Communication = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set Communication = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                if (PublicSpeaking.Checked == true)
                {
                    sqlSelect = "update Mentoringskills set PublicSpeaking = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set PublicSpeaking = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                if (Leadership.Checked)
                {
                    sqlSelect = "update Mentoringskills set Leadership = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set Leadership = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                if (TimeManagement.Checked)
                {
                    sqlSelect = "update Mentoringskills set TimeManagement = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set TimeManagement = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                if (TeamworkSkills.Checked)
                {
                    sqlSelect = "update Mentoringskills set TeamworkSkills = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set TeamworkSkills = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                if (Persuation_Negotiation.Checked)
                {
                    sqlSelect = "update Mentoringskills set Persuasion_Negotiation = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set Persuasion_Negotiation = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                if (Networking.Checked)
                {
                    sqlSelect = "update Mentoringskills set Networking = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set Networking = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                if (ConflictResolution.Checked)
                {
                    sqlSelect = "update Mentoringskills set ConflictResolution = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set ConflictResolution = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                if (PresentationSkills.Checked)
                {
                    sqlSelect = "update Mentoringskills set PresentationSkills = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set PresentationSkills = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                if (Mentoring_Coaching.Checked)
                {
                    sqlSelect = "update Mentoringskills set Mentoring_Coaching = 1 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
                else
                {
                    sqlSelect = "update Mentoringskills set Mentoring_Coaching = 0 where EmployeeID = 9999";
                    sqlDa = new SqlCommand(sqlSelect, sqlConnection);
                    sqlDa.ExecuteNonQuery();
                }
            }
        }

        protected void DepartmentGridview_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public void SortSearchResults(List<Employee> employees)
        {

        }

        protected void searchResultGridView_DataBound(object sender, EventArgs e)
        {
            GridView tmp = searchResultGridView;
            Table tmp2 = (Table)tmp.Controls[0];

            for (int i = 0; i < employees.Count(); i++)
            {
                HyperLink tmpLink = new HyperLink();
                tmpLink.NavigateUrl = "SearchResultProfile.aspx?EmployeeID=" + employees[i].ResultEmployeeID;
                tmpLink.Text = "Profile";
                tmp2.Rows[i + 1].Cells[3].Controls.Add(tmpLink);
                hyperLinks.Add(tmpLink);
            }
        }

        protected void searchResultGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}