<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="TheMentorShip.WelcomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        
        .newStyle3 {
            font-family: "Comfortaa";
            font-size: 120%;
            background-color: white;
            border: solid;
            border-color: #808080;
            color: #585858;
        }
        
        /*.auto-style5 {*/
            text-align: center;
            font-family: "Comfortaa";
            font-size: x-large;
            background-color: white;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td style="width:15%">&nbsp;</td>
            <td><p class="auto-style5">
                <%--Some text--%>
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
            <td style="width:25%;"><asp:Button ID="findAMentor" runat="server" Text="FIND A MENTOR" Height="320px" Width="82%" CssClass="newStyle3" Font-Bold="True" OnClick="findAMentor_Click"/></td>
            <td style="width:25%;"><asp:Button ID="beAMentor" runat="server" Text="BE A MENTOR" align="right" Height="320px" Width="82%" CssClass="newStyle3" Font-Bold="True" OnClick="beAMentor_Click"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height:100px;">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
