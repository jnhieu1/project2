<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="TheMentorShip.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .break{
            width:10%;
            background-image: url(Image/ContentBackground.jpg);
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
            background-color:cornflowerblue;
            border-bottom:solid 1px black;
        }
        .tabContents{
            border:solid 1px black;
            padding:10px;
            margin:5px;
            
            background-image: url(Image/ContentBackground.jpg);
        }
        

        .auto-style5 {
            text-align: left;
        }
        

        .auto-style6 {
            text-align: right;
        }
        

        .auto-style7 {
            text-align: right;
            height: 20px;
        }
        
        

        .auto-style8 {}
        
        

    </style>

    <div>
        
        <table style="width:100%;">
            <tr>
                <td class="break">&nbsp;</td>
                <td>
                    <asp:Menu ID="Menu1" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                        StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="cornflowerblue" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
                        <Items>
                            <asp:MenuItem Text="Find a Mentor" Value="0" Selected="true"></asp:MenuItem>
                            <asp:MenuItem Text="Be a Mentor" Value="1"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                    <div class="tabContents">
                        <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                            <asp:View ID="View1" runat="server">
                                
                                <asp:Menu ID="Menu2" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                                    StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="cornflowerblue" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu2_MenuItemClick">
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
                                                <td style="width:75%; text-align: center;">search result</td>
                                                
                                            </tr>
                                            
                                        </table>
                                    </asp:View>
                                </asp:MultiView>
                                </div>
                            </asp:View>
                            
                            <asp:View ID="View2" runat="server">
                                <asp:Menu ID="Menu3" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                                    StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="cornflowerblue" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu3_MenuItemClick">
                                    <Items>
                                        <asp:MenuItem Text="Profile" Value="0" Selected="true"></asp:MenuItem>
                                        <asp:MenuItem Text="Edit" Value="1"></asp:MenuItem>
                                    </Items>
                                </asp:Menu>
                                <div class="tabContents">
                                <asp:MultiView ID="MultiView3" ActiveViewIndex="0" runat="server">
                                    <asp:View ID="View5" runat="server">
                                        <br />Profile
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
                                                                Top Endorsements
                                                                <asp:BulletedList ID="BulletedList1" runat="server" CssClass="auto-style8">
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
                                                            <td style="width:15%" class="auto-style6">
                                                                First Name:
                                                                <br /> Last Name:
                                                                <br /> Phone Number:

                                                            </td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style7">
                                                                Biography:
                                                            </td>
                                                            <td>
                                                                <p>I graduated from Arizona State University with a degree in Computer Information Systems. I have worked at this company for 3 years as a software developer and I have been the Manager of Information Systems for 5 years. My experience has allowed me to improve my leadership and communication skills. I have gained knowledge and would now like to share this with my peers.</p>
                                                            </td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style7">
                                                                
                                                            </td>
                                                            <td></td>
                                                            <td style="width:25%;">Save</td>
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
