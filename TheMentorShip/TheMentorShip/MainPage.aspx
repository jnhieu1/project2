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
        

    </style>

    <div>
        
        <table style="width:100%;">
            <tr>
                <td class="break">&nbsp;</td>
                <td>
                    <asp:Menu ID="Menu1" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                        StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="cornflowerblue" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
                        <Items>
                            <asp:MenuItem Text="Find a Mentor" Value="0"></asp:MenuItem>
                            <asp:MenuItem Text="Be a Mentor" Value="1"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                    <div class="tabContents">
                        <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                            <asp:View ID="View1" runat="server">
                                
                                <asp:Menu ID="Menu2" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                                    StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="cornflowerblue" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu2_MenuItemClick">
                                    <Items>
                                        <asp:MenuItem Text="Jobs" Value="0"></asp:MenuItem>
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
                                    </asp:View>
                                </asp:MultiView>
                                </div>
                            </asp:View>
                            
                            <asp:View ID="View2" runat="server">
                                <asp:Menu ID="Menu3" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large"
                                    StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="10px" StaticSelectedStyle-BackColor="cornflowerblue" StaticSelectedStyle-ForeColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu3_MenuItemClick">
                                    <Items>
                                        <asp:MenuItem Text="Profile" Value="0"></asp:MenuItem>
                                        <asp:MenuItem Text="Edit" Value="1"></asp:MenuItem>
                                    </Items>
                                </asp:Menu>
                                <div class="tabContents">
                                <asp:MultiView ID="MultiView3" ActiveViewIndex="0" runat="server">
                                    <asp:View ID="View5" runat="server">
                                        <br />Profile
                                    </asp:View>
                                    <asp:View ID="View6" runat="server">
                                        <br />Edit
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
