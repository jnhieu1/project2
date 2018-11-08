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

        
        .auto-style8 {}
        
        

        .auto-style9 {
            text-align: right;
            width: 18%;
        }
        .auto-style10 {
            text-align: right;
            height: 20px;
            width: 18%;
        }
        .auto-style12 {
            width: 480px;
        }
        .auto-style13 {
            width: 494px;
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
                                        <asp:MenuItem Text="Jobs" Value="0" Selected="true"></asp:MenuItem>
                                        <asp:MenuItem Text="Skills" Value="1"></asp:MenuItem>
                                    </Items>
                                </asp:Menu>
                                <div class="tabContents">
                                <asp:MultiView ID="MultiView2" ActiveViewIndex="0" runat="server">
                                    <asp:View ID="View3" runat="server">
                                        <br />Jobs


                                    </asp:View>
                                    <asp:View ID="View4" runat="server">
                                        <br />Skills
                                        <table style="width: 100%;">
                                            <tr>
                                                <td style="width:25%;" >
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td>Filter</td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="searchTextBox" runat="server"></asp:TextBox>
                                                                <asp:Button ID="searchBUtton" runat="server" Text="Search" />
                                                            </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:CheckBoxList ID="filterCheckBoxList" runat="server" CssClass="auto-style5">
                                                                    <asp:ListItem Selected="True">Available</asp:ListItem>
                                                                    <asp:ListItem>Communication</asp:ListItem>
                                                                    <asp:ListItem>Public Speaking</asp:ListItem>
                                                                    <asp:ListItem>Leadership</asp:ListItem>
                                                                </asp:CheckBoxList>

                                                            </td>
                                                            
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td style="width:75%; text-align: center;">
                                                    <table style="width:100%; height:inherit">
                                                    <tr>
                                                        <td style="width:25%; text-align: left;">John Doe, Manager</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td style="width:50%;">Leadership, Communication</td>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" Text="Email" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width:25%; text-align: left;">John Doe, Director</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td style="width:50%;">Smart, Leadership, Has Experience</td>
                                                        <td>
                                                            <asp:Button ID="Button2" runat="server" Text="Email" />
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
                            
                            <asp:View ID="View2" runat="server">
                                <asp:Menu ID="Menu3" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                                    StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="#808080" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu3_MenuItemClick">
                                    <Items>
                                        <asp:MenuItem Text="Profile" Value="0" Selected="true"></asp:MenuItem>
                                        <asp:MenuItem Text="Edit" Value="1"></asp:MenuItem>
                                    </Items>
                                </asp:Menu>
                                <div class="tabContents">
                                <asp:MultiView ID="MultiView3" ActiveViewIndex="0" runat="server">
                                    <asp:View ID="View5" runat="server">
                                                                                <table style="width: 100%;">
                                            <tr>
                                                <td style="width:20%;">
                                                    <table style="width: 100%; height:inherit; margin-top: 0px;">
                                                        <tr>
                                                            <td>
                                                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/defaultIcon.jpg" />
                                                            </td>                                                          
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Top Endorsements
                                                                <asp:BulletedList ID="BulletedList2" runat="server" CssClass="auto-style8">
                                                                    <asp:ListItem>Leadership</asp:ListItem>
                                                                    <asp:ListItem>Communication</asp:ListItem>
                                                                    <asp:ListItem>Experience</asp:ListItem>
                                                                </asp:BulletedList>
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
                                                            <td class="auto-style13">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style10">
                                                                Biography:
                                                            </td>
                                                            <td class="auto-style13">
                                                                <p class="auto-style12">I graduated from Arizona State University with a degree in Computer Information Systems. I have worked at this company for 3 years as a software developer and I have been the Manager of Information Systems for 5 years. My experience has allowed me to improve my leadership and communication skills. I have gained knowledge and would now like to share this with my peers.</p>
                                                            </td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style10">
                                                                
                                                            </td>
                                                            <td class="auto-style13"></td>
                                                            <td style="width:25%;">Save</td>
                                                        </tr>
                                                        
                                                    </table>
                                                </td>
                                                
                                            </tr>
                                            
                                        </table>
                                    </asp:View>
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
                                                                <asp:Button ID="Button3" runat="server" Text="Save" />
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
