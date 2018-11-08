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
    public partial class DatabaseTestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void createButton_Click(object sender, EventArgs e)
        {
            string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            string sqlSelect = "insert into TESTTABLE (fName, lName) values (@ufName, @ulName);";

            SqlConnection sqlConnection = new SqlConnection(sqlConnectString);
            SqlCommand sqlCommand = new SqlCommand(sqlSelect, sqlConnection);

            sqlCommand.Parameters.Add("@ufName", System.Data.SqlDbType.VarChar);
            sqlCommand.Parameters["@ufName"].Value = fNameBox.Text;
            sqlCommand.Parameters.Add("@ulName", System.Data.SqlDbType.VarChar);
            sqlCommand.Parameters["@ulName"].Value = lNameBox.Text;

            sqlConnection.Open();
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();

            fNameBox.Text = "";
            lNameBox.Text = "";
            userView.DataBind();
        }
    }
}