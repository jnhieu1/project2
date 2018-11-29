using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TheMentorShip
{
    public struct Skill
    {
        public string SoftSkill;
        public int Endorsements;

        public Skill(string softSkill, int endorsements)
        {
            SoftSkill = softSkill;
            Endorsements = endorsements;
        }
    };

    public partial class SearchResultProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Start of Employee info labels being filled out
            string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;

            string employeeId = Request.QueryString.Get("EmployeeID");

            SqlConnection sqlConnection = new SqlConnection(sqlConnectString);

            string sqlSelect = "select * from Employees e, mentoringskills m where e.EmployeeID = m.EmployeeID and e.EmployeeID = " + employeeId;

            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlSelect, sqlConnection);

            DataTable dtbl = new DataTable();

            sqlDa.Fill(dtbl);

            int totalEndorcements = Convert.ToInt32(dtbl.Rows[0]["Leadership"]) + Convert.ToInt32(dtbl.Rows[0]["Communication"]) + Convert.ToInt32(dtbl.Rows[0]["PublicSpeaking"]) + Convert.ToInt32(dtbl.Rows[0]["TimeManagement"]) + Convert.ToInt32(dtbl.Rows[0]["TeamworkSkills"]) + Convert.ToInt32(dtbl.Rows[0]["Persuasion_Negotiation"]) + Convert.ToInt32(dtbl.Rows[0]["Networking"]) + Convert.ToInt32(dtbl.Rows[0]["ConflictResolution"]) + Convert.ToInt32(dtbl.Rows[0]["PresentationSkills"]) + Convert.ToInt32(dtbl.Rows[0]["Mentoring_Coaching"]);


            FirstName.Text = dtbl.Rows[0]["EFName"].ToString();
            LastName.Text = dtbl.Rows[0]["ELName"].ToString();
            JobTitle.Text = dtbl.Rows[0]["Position"].ToString();
            PhoneNumber.Text = dtbl.Rows[0]["CellPhone"].ToString();
            EmailButton.Text = dtbl.Rows[0]["Email"].ToString();
            Location.Text = dtbl.Rows[0]["OfficeLocation"].ToString();
            Department.Text = dtbl.Rows[0]["Department"].ToString();
            Biography.Text = dtbl.Rows[0]["bio"].ToString();
            Image1.ImageUrl = dtbl.Rows[0]["ProfilePic"].ToString();

            if (totalEndorcements >=25 && totalEndorcements < 30)
            {
                endorcementImage.ImageUrl = "~/Image/10Endorcements.png";
                endorcementImage.Visible = true;
            }
            else if (totalEndorcements >= 30 && totalEndorcements < 50)
            {
                endorcementImage.ImageUrl = "~/Image/25Endorcements.png";
                endorcementImage.Visible = true;
            }
            else if (totalEndorcements >= 50)
            {
                endorcementImage.ImageUrl = "~/Image/50Endorcements.png";
                endorcementImage.Visible = true;
            }
            else
            {
                endorcementImage.Visible = false;
            }

            //Start of Employee endorsements
            sqlSelect = "select * from mentoringskills where EmployeeID =" + employeeId;

            SqlDataAdapter sqlDa2 = new SqlDataAdapter(sqlSelect, sqlConnection);

            DataTable dtbl2 = new DataTable();

            sqlDa2.Fill(dtbl2);

            Skill[] skills = new Skill[10];

            Skill skill = new Skill("Leadership", Convert.ToInt32(dtbl2.Rows[0]["Leadership"].ToString()));
            

            skills[0] = new Skill("Leadership", Convert.ToInt32(dtbl2.Rows[0]["Leadership"].ToString()));
            skills[1] = new Skill("Communication", Convert.ToInt32(dtbl2.Rows[0]["Communication"].ToString()));
            skills[2] = new Skill("Public Speaking", Convert.ToInt32(dtbl2.Rows[0]["PublicSpeaking"].ToString()));
            skills[3] = new Skill("Time Management", Convert.ToInt32(dtbl2.Rows[0]["TimeManagement"].ToString()));
            skills[4] = new Skill("Teamwork Skills", Convert.ToInt32(dtbl2.Rows[0]["TeamWorkSkills"].ToString()));
            skills[5] = new Skill("Persuasion/Negotiation", Convert.ToInt32(dtbl2.Rows[0]["Persuasion_Negotiation"].ToString()));
            skills[6] = new Skill("Networking", Convert.ToInt32(dtbl2.Rows[0]["Networking"].ToString()));
            skills[7] = new Skill("Conflict Resolution", Convert.ToInt32(dtbl2.Rows[0]["ConflictResolution"].ToString()));
            skills[8] = new Skill("Presentation Skills", Convert.ToInt32(dtbl2.Rows[0]["PresentationSkills"].ToString()));
            skills[9] = new Skill("Mentoring/Coaching", Convert.ToInt32(dtbl2.Rows[0]["Mentoring_Coaching"].ToString()));

            int max = 0;

            for(int i = 0; i < 10; i++)
            {
                if(skills[i].Endorsements > max)
                {
                    max = i;
                }
            }

            skills[max].Endorsements = 0;

            FirstEndorsement.Text = skills[max].SoftSkill;

            max = 0;

            for (int i = 0; i < 10; i++)
            {
                if (skills[i].Endorsements > max)
                {
                    max = i;
                }
            }

            skills[max].Endorsements = 0;

            SecondEndorsement.Text = skills[max].SoftSkill;

            max = 0;

            for (int i = 0; i < 10; i++)
            {
                if (skills[i].Endorsements > max)
                {
                    max = i;
                }
            }

            ThirdEndorsement.Text = skills[max].SoftSkill;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;

            string employeeId = Request.QueryString.Get("EmployeeID");

            SqlConnection sqlConnection = new SqlConnection(sqlConnectString);

            sqlConnection.Open();
            string sqlSelect;
            SqlCommand sqlDa;

            if (DropDownList1.SelectedValue != "None")
            {
                sqlSelect = "update MENTORINGSKILLS set " + DropDownList1.SelectedValue + " = " + DropDownList1.SelectedValue + " + 1 where EmployeeID =" + employeeId;
                sqlDa = new SqlCommand(sqlSelect, sqlConnection);

                sqlDa.ExecuteNonQuery();
            }

            if (DropDownList2.SelectedValue != "None")
            {
                sqlSelect = "update MENTORINGSKILLS set " + DropDownList2.SelectedValue + " = " + DropDownList2.SelectedValue + " + 1 where EmployeeID =" + employeeId;

                sqlDa = new SqlCommand(sqlSelect, sqlConnection);

                sqlDa.ExecuteNonQuery();
            }

            if (DropDownList3.SelectedValue != "None")
            {
                sqlSelect = "update MENTORINGSKILLS set " + DropDownList3.SelectedValue + " = " + DropDownList3.SelectedValue + " + 1 where EmployeeID =" + employeeId;

                sqlDa = new SqlCommand(sqlSelect, sqlConnection);

                sqlDa.ExecuteNonQuery();
            }
            sqlConnection.Close();
            //DataTable dtbl = new DataTable();

            //sqlDa.Fill(dtbl);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", "<script type=\"text/javascript\">alert('Endorsements saved successfully');</script>");
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
            if ((DropDownList1.SelectedIndex == DropDownList2.SelectedIndex || DropDownList2.SelectedIndex == DropDownList3.SelectedIndex)
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

        protected void EmailButton_Click(object sender, EventArgs e)
        {
            string email = EmailButton.Text;
            ClientScript.RegisterStartupScript(this.GetType(), "mailto", "parent.location='mailto:" + email + "'", true);
        }
    }
}