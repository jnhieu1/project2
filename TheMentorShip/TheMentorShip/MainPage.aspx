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

        #searchResultDiv{
            display:inline;
            float: right;
        }

        #View4{
            overflow: auto;
        }

        #MultiView2{
            overflow: auto;
        }

        .auto-style11 {
            height: 44px;
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
                                        <table style="width: 100%;">
                                            <tr>
                                                <td style="width:22%;" >
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td>Filter</td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="searchDepartmentTextbox" runat="server"></asp:TextBox>
                                                                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="SearchResultButtonClick" />
                                                            </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:DropDownList ID="DepartmentDropDown" runat="server">
                                                                    <asp:ListItem>None</asp:ListItem>
                                                                    <asp:ListItem>Accounting</asp:ListItem>
                                                                    <asp:ListItem>Finance</asp:ListItem>
                                                                    <asp:ListItem Value="Information Technology">Information Technology</asp:ListItem>
                                                                    <asp:ListItem Value="Customer Service">Customer Service</asp:ListItem>
                                                                    <asp:ListItem>Executive</asp:ListItem>
                                                                    <asp:ListItem>Insurance</asp:ListItem>
                                                                    <asp:ListItem>Banking</asp:ListItem>
                                                                </asp:DropDownList>

                                                            </td>
                                                            
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td ID="Td1" runat="server" style="width:70%;">
                                                    <asp:GridView ID="DepartmentGridview" runat="server" AutoGenerateColumns="False" OnRowDataBound="searchResultGridView_RowDataBound">
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
                                    <asp:View ID="View4" runat="server">
                                        <br />Skills
                                        <table style="width: 100%;">
                                            <tr>
                                                <td ID="filterTable" style="width:22%; vertical-align:top;" >
                                                    <table style="width: 100%; position:relative; height:100%; ">
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
                                                

                                               
                                                <td ID="tableDataForSearchResults" runat="server" style="width:70%; position:relative;">
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
                                                            <td class="auto-style11">
                                                                <asp:Label ID="skillsyouwantMentor" runat="server" Text="Skills you want to Mentor in:"></asp:Label>
                                                                <br />
                                                                <asp:CheckBox ID="Communication" runat="server" Text="Communication" />
                                                                <br />
                                                                <asp:CheckBox ID="PublicSpeaking" runat="server" Text="Public Speaking" />
                                                                <br />
                                                                <asp:CheckBox ID="Leadership" runat="server" Text="Leadership" />
                                                                <br />
                                                                <asp:CheckBox ID="TimeManagement" runat="server" Text="Time Management" />
                                                                <br />
                                                                <asp:CheckBox ID="TeamworkSkills" runat="server" Text="Teamwork Skills" />
                                                                <br />
                                                                <asp:CheckBox ID="Persuation_Negotiation" runat="server" Text="Persuation/Negotiation" />
                                                                <br />
                                                                <asp:CheckBox ID="Networking" runat="server" Text="Networking" />
                                                                <br />
                                                                <asp:CheckBox ID="ConflictResolution" runat="server" Text="Conflict Resolution" />
                                                                <br />
                                                                <asp:CheckBox ID="PresentationSkills" runat="server" Text="Presentation Skills" />
                                                                <br />
                                                                <asp:CheckBox ID="Mentoring_Coaching" runat="server" Text="Mentoring/Coaching" />
                                                            </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td style="width:75%;">
                                                    <table style="width: 100%; height:inherit; margin-top: 0px;">
                                                        <tr>
                                                            <td class="auto-style9">
                                                                <br />
                                                                <br />
                                                                <strong>Employee Info</strong>
                                                                <br />
                                                                <br />
                                                                &nbsp;</td>
                                                            <td>
                                                                <strong>First Name:</strong>
                                                                <asp:Label ID="fNameLabel" runat="server" Text="[FirstName]"></asp:Label>
                                                                <br />
                                                                <strong>Last Name:</strong>
                                                                <asp:Label ID="lNameLable" runat="server" Text="[LastName]"></asp:Label>
                                                                <br />
                                                                <strong>Phone Number:</strong>
                                                                <asp:Label ID="phoneNumLabel" runat="server" Text="[PhoneNumber]"></asp:Label>
                                                                <br />
                                                                <strong>Department:</strong>
                                                                <asp:Label ID="departmentLabel" runat="server" Text="[Department]"></asp:Label>
                                                                &nbsp;-
                                                                <asp:Label ID="jobTitleLabel" runat="server" Text="[JobTitle]"></asp:Label>
                                                                <br />
                                                                <strong>Location:</strong>
                                                                <asp:Label ID="locationLabel" runat="server" Text="[Location]"></asp:Label>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Be Mentor" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style10">
                                                                <strong>Biography:</strong>
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
                                                                <asp:Button ID="Button3" runat="server" Text="Save" Width="45%" OnClick="Button3_Click" />
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
