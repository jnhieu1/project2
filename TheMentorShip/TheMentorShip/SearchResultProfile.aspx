<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchResultProfile.aspx.cs" Inherits="TheMentorShip.SearchResultProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
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
                                                            <td style="width:25%;">
                                                                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
                                                            </td>
                                                        </tr>
                                                        
                                                    </table>
                                                </td>
                                                
                                            </tr>
                                            
                                        </table>

    </div>
</asp:Content>
