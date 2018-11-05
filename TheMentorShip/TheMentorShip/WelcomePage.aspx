<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="TheMentorShip.WelcomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .newStyle3 {
            font-family: "Eras Medium ITC";
            font-size: 120%;
        }
        
        .auto-style5 {
            text-align: center;
            font-family: "Eras Medium ITC";
            font-size: x-large;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td style="width:15%">&nbsp;</td>
            <td><p class="auto-style5">
                The Mentor Ship is a dadlfjas adfsadfsad asdfasdfasd asdfasdf sdfasdf asdfasd adsfa sdfa dsdfasdfasdf sadfs dfd fasdfasd sadf dafsdfasd
                </p>
            </td>
            <td style="width:15%">&nbsp;</td>
        </tr>
        
        
    </table>
    <table style="width: 100%;">
        <tr>
            <td style="width:25%; height:10px;">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width:25%;">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width:25%;"><asp:Button ID="findAMentor" runat="server" Text="Find A Mentor" Height="77px" Width="80%" CssClass="newStyle3" Font-Bold="True" OnClick="findAMentor_Click"/></td>
            <td style="width:25%;"><asp:Button ID="beAMentor" runat="server" Text="Be A Mentor" align="right" Height="77px" Width="80%" CssClass="newStyle3" Font-Bold="True" OnClick="beAMentor_Click"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height:70px;">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
