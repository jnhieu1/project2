<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="TheMentorShip.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .break{
            width:10%;
            /*background-image: url(Image/ContentBackground.jpg);*/
            background-color: white;
        }
        .tabs{

            position:relative;
            top:1px;
            left:7px;
        }
        .tab{
            border:solid 1px black;
            background-color:white;
            padding:5px, 10px;
            margin:1px;
        }
        .selectedTab{
            border-bottom:solid 1px black;
        }
        .tabContents{
            border:solid 1px black;
            padding:10px;
            margin:5px;
            /*background-image: url(Image/ContentBackground.jpg);*/
            background-color: white;
        }

        table#table1 {
            height: 150px;
        }

        .auto-style5 {
            text-align: left;
        }

        
        
        .auto-style9 {
            text-align: right;
            width: 18%;
        }
        .auto-style10 {
            text-align: right;
            height: 20px;
            width: 18%;
        }
                
   

    </style>

    <div>
        
        <table id="table1" style="width:100%;">
            <tr>
                <td class="break">&nbsp;</td>
                <td>
                    <asp:Menu ID="Menu1" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                        StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="#A8A8A8" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
                        <Items>
                            <asp:MenuItem Text="Find a mentor" Value="0" Selected="true"></asp:MenuItem>
                            <asp:MenuItem Text="Be a mentor" Value="1"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                    <div class="tabContents">
                        <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                            <asp:View ID="View1" runat="server">
                                
                                <asp:Menu ID="Menu2" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                                    StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="#A8A8A8" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu2_MenuItemClick">
                                    <Items>
                                        <asp:MenuItem Text="Departments" Value="0" Selected="true"></asp:MenuItem>
                                        <asp:MenuItem Text="Skills" Value="1"></asp:MenuItem>
                                    </Items>
                                    <StaticMenuItemStyle CssClass="tab" HorizontalPadding="10px" />
                                    <StaticSelectedStyle BackColor="#A8A8A8" CssClass="selectedTab" ForeColor="White" />
                                </asp:Menu>
                                <div class="tabContents">
                                <asp:MultiView ID="MultiView2" ActiveViewIndex="0" runat="server">
                                    <asp:View ID="View3" runat="server">
                                        <br />Departments


                                    </asp:View>
                                    <asp:View ID="View4" runat="server">
                                        <br />Skills
                                        <table style="width: 100%;">
                                            <tr>
                                                <td style="width:22%;" >
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td>Filter</td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="searchTextBox" runat="server"></asp:TextBox>
                                                                <asp:Button ID="searchBUtton" runat="server" Text="Search" OnClick="searchBUtton_Click" />
                                                            </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:CheckBoxList ID="filterCheckBoxList" runat="server" CssClass="auto-style5">
                                                                    <asp:ListItem>Communication</asp:ListItem>
                                                                    <asp:ListItem Value="PublicSpeaking">Public Speaking</asp:ListItem>
                                                                    <asp:ListItem>Leadership</asp:ListItem>
                                                                    <asp:ListItem Value="TimeManagement">Time Management</asp:ListItem>
                                                                    <asp:ListItem Value="TeamworkSkills">Teamwork Skills</asp:ListItem>
                                                                    <asp:ListItem Value="Persuasion_Negotiation">Persuasion/Negotiation</asp:ListItem>
                                                                    <asp:ListItem>Networking</asp:ListItem>
                                                                    <asp:ListItem Value="ConflictResolution">Conflict Resolution</asp:ListItem>
                                                                    <asp:ListItem Value="PresentationSkills">Presentation Skills</asp:ListItem>
                                                                    <asp:ListItem Value="Mentoring_Coaching">Mentoring/Coaching</asp:ListItem>
                                                                </asp:CheckBoxList>

                                                            </td>
                                                            
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td ID="tableDataForSearchResults" runat="server" style="width:70%;">
                                                    <asp:GridView ID="searchResultGridView" runat="server" AutoGenerateColumns="False" OnRowDataBound="searchResultGridView_RowDataBound">
                                                        <Columns>
                                                            <asp:BoundField DataField="Name" HeaderText ="Full Name" />
                                                            <asp:BoundField DataField="Position" HeaderText ="Position" />
                                                            <asp:BoundField DataField="SoftSkills" HeaderText ="Soft Skills" />
                                                            <asp:HyperLinkField NavigateUrl="~/SearchResultProfile.aspx" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    
                                                </td>
                                                
                                            </tr>
                                            
                                        </table>
                                    </asp:View>
                                </asp:MultiView>
                                </div>
                            </asp:View>
                            
                            <asp:View ID="View2" runat="server">
                                <asp:Menu ID="Menu3" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                                    StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="#808080" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu3_MenuItemClick">
                                    <Items>
                                        <asp:MenuItem Text="Profile" Value="0"></asp:MenuItem>
                                    </Items>
                                    <StaticMenuItemStyle CssClass="tab" HorizontalPadding="10px" />
                                    <StaticSelectedStyle BackColor="Gray" CssClass="selectedTab" ForeColor="White" />
                                </asp:Menu>
                                <div class="tabContents">
                                <asp:MultiView ID="MultiView3" ActiveViewIndex="0" runat="server">
                                    <asp:View ID="View6" runat="server">
                                        <table style="width: 100%;">
                                            <tr>
                                                <td style="width:20%;">
                                                    <table style="width: 100%; height:inherit; margin-top: 0px;">
                                                        <tr>
                                                            <td>
                                                                <asp:Image ID="personalImage" runat="server" ImageUrl="~/Image/defaultIcon.jpg" />
                                                            </td>                                                          
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Top Three Endorsements:<br />
                                                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack ="true">
                                                                    <asp:ListItem>None</asp:ListItem>
                                                                    <asp:ListItem>Leadership</asp:ListItem>
                                                                    <asp:ListItem>Communication</asp:ListItem>
                                                                    <asp:ListItem>Public Speaking</asp:ListItem>
                                                                    <asp:ListItem>Time Management</asp:ListItem>
                                                                    <asp:ListItem>Teamwork Skills</asp:ListItem>
                                                                    <asp:ListItem>Persuasion/Negotiation</asp:ListItem>
                                                                    <asp:ListItem>Networking</asp:ListItem>
                                                                    <asp:ListItem>Conflict Resolution</asp:ListItem>
                                                                    <asp:ListItem>Presentation Skills</asp:ListItem>
                                                                    <asp:ListItem>Mentoring/Coaching</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack ="true">
                                                                    <asp:ListItem>None</asp:ListItem>
                                                                    <asp:ListItem>Leadership</asp:ListItem>
                                                                    <asp:ListItem>Communication</asp:ListItem>
                                                                    <asp:ListItem>Public Speaking</asp:ListItem>
                                                                    <asp:ListItem>Time Management</asp:ListItem>
                                                                    <asp:ListItem>Teamwork Skills</asp:ListItem>
                                                                    <asp:ListItem>Persuasion/Negotiation</asp:ListItem>
                                                                    <asp:ListItem>Networking</asp:ListItem>
                                                                    <asp:ListItem>Conflict Resolution</asp:ListItem>
                                                                    <asp:ListItem>Presentation Skills</asp:ListItem>
                                                                    <asp:ListItem>Mentoring/Coaching</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="true">
                                                                    <asp:ListItem>None</asp:ListItem>
                                                                    <asp:ListItem>Leadership</asp:ListItem>
                                                                    <asp:ListItem>Communication</asp:ListItem>
                                                                    <asp:ListItem>Public Speaking</asp:ListItem>
                                                                    <asp:ListItem>Time Management</asp:ListItem>
                                                                    <asp:ListItem>Teamwork Skills</asp:ListItem>
                                                                    <asp:ListItem>Persuasion/Negotiation</asp:ListItem>
                                                                    <asp:ListItem>Networking</asp:ListItem>
                                                                    <asp:ListItem>Conflict Resolution</asp:ListItem>
                                                                    <asp:ListItem>Presentation Skills</asp:ListItem>
                                                                    <asp:ListItem>Mentoring/Coaching</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>See all</td>
                                                            
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td style="width:75%;">
                                                    <table style="width: 100%; height:inherit; margin-top: 0px;">
                                                        <tr>
                                                            <td class="auto-style9">
                                                                First Name:
                                                                <br /> Last Name:
                                                                <br /> Phone Number:

                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox2" runat="server" Width="98%"></asp:TextBox>
                                                                <br />
                                                                <asp:TextBox ID="TextBox3" runat="server" Width="98%"></asp:TextBox>
                                                                <br />
                                                                <asp:TextBox ID="TextBox4" runat="server" Width="98%"></asp:TextBox>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style10">
                                                                Biography:
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    <asp:TextBox ID="TextBox1" runat="server" Height="109px" Width=98%></asp:TextBox>
                                                                </p>
                                                            </td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style10">
                                                                
                                                            </td>
                                                            <td></td>
                                                            <td style="width:25%;">
                                                                <asp:Button ID="Button3" runat="server" Text="Save" Width="45%" />
                                                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Settings" Width="45%" />
                                                            </td>
                                                        </tr>
                                                        
                                                    </table>
                                                </td>
                                                
                                            </tr>
                                            
                                        </table>
                                    </asp:View>
                                </asp:MultiView>
                                </div>
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </td>
                <td class="break">&nbsp;</td>
            </tr>
            
        </table>
        
        
        
    </div>
</asp:Content>
