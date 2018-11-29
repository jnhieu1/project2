<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchResultProfile.aspx.cs" Inherits="TheMentorShip.SearchResultProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    <style>
            .auto-style1
    {
        border: solid;
    border-width: 2.5px;

    }

    </style>--%>

        <div>
                                    <%--<table style="width: 100%;">
                                            <tr>--%>
                                                <%--<td style="width:20%;">--%>
            <br />
                                                    <table style="width: 100%; height:inherit; margin-top: 0px;">
                                                        <tr>
                                                            <td style="width:8%;">

                                                            </td>
                                                            <td style="width:15%;">
                                                                <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/Image/defaultIcon.jpg" Height="180px" />--%>
                                                                <asp:Image ID="endorcementImage" runat="server" Height="125px" Visible="False" />
                                                            </td>
                                                            <td class="auto-style13" >
                                                                <%--<table style="width:100%;">
                                                                    <tr>
                                                                        <td class="auto-style8">

                                                                        </td>
                                                                        <td class="auto-style9">
                                                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/defaultIcon.jpg" Height="180px" />
                                                                        </td>
                                                                    </tr>
                                                                </table>--%>
                                                            </td>
                                                            <td>
                                                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/defaultIcon.jpg" Height="180px" />
                                                            </td>
                                                       
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                          
                                                            </td>
                                                     
                                                            <td style="vertical-align: top;">
                                                                <strong>Top Endorsements
                                                                </strong>
                                                                <br />
                                                                <asp:Label ID="FirstEndorsement" runat="server"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="SecondEndorsement" runat="server"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="ThirdEndorsement" runat="server"></asp:Label>
                                                                <br />
                                                                <br />
                                                            </td>
                                                            <td style="vertical-align:top;" class="auto-style13">
                                                                <strong>Employee<br />Information:</strong>
                                                            </td>
                                                            <td>
                                                                <strong>First Name:</strong>
                                                                <asp:Label ID="FirstName" runat="server"></asp:Label>
                                                                <br />
                                                                <strong>Last Name:</strong>
                                                                <asp:Label ID="LastName" runat="server"></asp:Label>
                                                                <br />
                                                                <strong>Phone Number:</strong>
                                                                <asp:Label ID="PhoneNumber" runat="server"></asp:Label>
                                                                <br />
                                                                <strong>Email:</strong>
                                                                <asp:LinkButton ID="EmailButton" runat="server" OnClick="EmailButton_Click"></asp:LinkButton>
                                                                <br />
                                                                <strong>Department: </strong>
                                                                <asp:Label ID="Department" runat="server"></asp:Label>
&nbsp;-
                                                                <asp:Label ID="JobTitle" runat="server"></asp:Label>
                                                                <br />
                                                                <strong>Location:</strong>
                                                                <asp:Label ID="Location" runat="server"></asp:Label>
                                                            </td>
                                                            </tr>
                                                        <tr >
                                                            <td>

                                                            </td>
                                                            <td style="vertical-align:top;">
                                                                <strong>Endorse:</strong><br />
                                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                                    <asp:ListItem>None</asp:ListItem>
                                                                    <asp:ListItem>Leadership</asp:ListItem>
                                                                    <asp:ListItem>Communication</asp:ListItem>
                                                                    <asp:ListItem Value="PublicSpeaking">Public Speaking</asp:ListItem>
                                                                    <asp:ListItem Value="TimeManagement">Time Management</asp:ListItem>
                                                                    <asp:ListItem Value="TeamworkSkills">Teamwork Skills</asp:ListItem>
                                                                    <asp:ListItem Value="Persuasion_Negotiation">Persuasion/Negotiation</asp:ListItem>
                                                                    <asp:ListItem>Networking</asp:ListItem>
                                                                    <asp:ListItem Value="ConflictResolution">Conflict Resolution</asp:ListItem>
                                                                    <asp:ListItem Value="PresentationSkills">Presentation Skills</asp:ListItem>
                                                                    <asp:ListItem Value="Mentoring_Coaching">Mentoring/Coaching</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                                                    <asp:ListItem>None</asp:ListItem>
                                                                    <asp:ListItem>Leadership</asp:ListItem>
                                                                    <asp:ListItem>Communication</asp:ListItem>
                                                                    <asp:ListItem Value="PublicSpeaking">Public Speaking</asp:ListItem>
                                                                    <asp:ListItem Value="TimeManagement">Time Management</asp:ListItem>
                                                                    <asp:ListItem Value="TeamworkSkills">Teamwork Skills</asp:ListItem>
                                                                    <asp:ListItem Value="Persuasion_Negotiation">Persuasion/Negotiation</asp:ListItem>
                                                                    <asp:ListItem>Networking</asp:ListItem>
                                                                    <asp:ListItem Value="ConflictResolution">Conflict Resolution</asp:ListItem>
                                                                    <asp:ListItem Value="PresentationSkills">Presentation Skills</asp:ListItem>
                                                                    <asp:ListItem Value="Mentoring_Coaching">Mentoring/Coaching</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                                                    <asp:ListItem>None</asp:ListItem>
                                                                    <asp:ListItem>Leadership</asp:ListItem>
                                                                    <asp:ListItem>Communication</asp:ListItem>
                                                                    <asp:ListItem Value="PublicSpeaking">Public Speaking</asp:ListItem>
                                                                    <asp:ListItem Value="TimeManagement">Time Management</asp:ListItem>
                                                                    <asp:ListItem Value="TeamworkSkills">Teamwork Skills</asp:ListItem>
                                                                    <asp:ListItem Value="Persuasion_Negotiation">Persuasion/Negotiation</asp:ListItem>
                                                                    <asp:ListItem>Networking</asp:ListItem>
                                                                    <asp:ListItem Value="ConflictResolution">Conflict Resolution</asp:ListItem>
                                                                    <asp:ListItem Value="PresentationSkills">Presentation Skills</asp:ListItem>
                                                                    <asp:ListItem Value="Mentoring_Coaching">Mentoring/Coaching</asp:ListItem>
                                                                </asp:DropDownList>
                                                               
                                                            </td>
                                                            <%--</td>--%>
                                                            <td style="vertical-align: top;" class="auto-style13">
                                                                <strong>Biography:</strong>
                                                    <br />
                                                </td>
                                                            <td style="vertical-align:top;">
                                                                <p>
                                                                    <asp:Label ID="Biography" runat="server"></asp:Label>
                                                                
                                                                </p>
                                                            </td>
                                                            <td style="width: 15%;">

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>

                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 35px; width: 80px" Text="Save" BackColor="White"/>
                                                            
                                                            </td>
                                                            <td class="auto-style13"></td>
                                                            <td style="text-align: left;">
                                                                
                                                    <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" Width="86px" Height="36px" BackColor="White" Align="Right" />
                                                                
                                                                </td>
                                                        </tr>
                                                        
                                                        <tr><td>&nbsp;</td></tr>
                                                         <tr><td>&nbsp;</td></tr>
                                                         <tr><td>&nbsp;</td></tr>
                                                    </table>
                                                 
                                                <%--</td>--%>
                                                
                                                <%--<td style="width:75%; vertical-align: top;">
                                                    <table style="width: 100%; height:300px; margin-top: 0px; ">
                                                        <tr>
                                                            <td class="auto-style1" style=" width: 18%;">
                                                                <strong>Employee<br />Information</strong></td>
                                                            <td class="auto-style13">
                                                                <strong>First Name:</strong>
                                                                <asp:Label ID="FirstName" runat="server"></asp:Label>
                                                                <br />
                                                                <strong>Last Name:</strong>
                                                                <asp:Label ID="LastName" runat="server"></asp:Label>
                                                                <br />
                                                                <strong>Phone Number:</strong>
                                                                <asp:Label ID="PhoneNumber" runat="server"></asp:Label>
                                                                <br />
                                                                <strong>Email:</strong>
                                                                <asp:LinkButton ID="EmailButton" runat="server" OnClick="EmailButton_Click"></asp:LinkButton>
                                                                <br />
                                                                <strong>Department: </strong>
                                                                <asp:Label ID="Department" runat="server"></asp:Label>
&nbsp;-
                                                                <asp:Label ID="JobTitle" runat="server"></asp:Label>
                                                                <br />
                                                                <strong>Location:</strong>
                                                                <asp:Label ID="Location" runat="server"></asp:Label>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style1" style="text-align: center; width: 18%; "  >
                                                              <strong>Biography</strong></td>
                                                            <td class="auto-style13">
                                                                <p class="auto-style12">
                                                                    <asp:Label ID="Biography" runat="server"></asp:Label>
                                                                </p>
                                                            </td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style10">
                                                                
                                                            </td>
                                                            <td class="auto-style13"></td>
                                                            <td style="width:25%;">
                                                                
                                                            </td>
                                                        </tr>
                                                        
                                                    </table>
                                                    <br />
                                                    <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" Width="86px" Height="36px" BackColor="White" Align="Right" />
                                                </td>--%>
                                                
                                       <%--     </tr>
                                            
                                        </table>--%>

    </div>
</asp:Content>
