<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatabaseTestPage.aspx.cs" Inherits="TheMentorShip.DatabaseTestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%">
            <div style="display: table; margin: 0 auto">

                <asp:Panel ID="Panel1" runat="server">
                    First Name: <asp:TextBox ID="fNameBox" runat="server"></asp:TextBox>
                    Last Name: <asp:TextBox ID="lNameBox" runat="server"></asp:TextBox>
                    <asp:LinkButton ID="createButton" runat="server" OnClick="createButton_Click">Add</asp:LinkButton>
                </asp:Panel>

                <asp:SqlDataSource ID="userData" runat="server"
                    DataSourceMode="DataReader" ConnectionString="<%$ ConnectionStrings:myDB %>"
                    SelectCommand="Select * from TESTTABLE;">
                </asp:SqlDataSource>

                <asp:GridView ID="userView" runat="server" DataSourceID="userData">
                    <HeaderStyle Font-Names="Century Gothic" ForeColor="#333333" />
                    <RowStyle Font-Names="Century Gothic" ForeColor="#666666" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
