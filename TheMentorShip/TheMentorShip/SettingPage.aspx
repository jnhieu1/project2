<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SettingPage.aspx.cs" Inherits="TheMentorShip.SettingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <style>
            .break{
                width:10%;
                background-image: url(Image/ContentBackground.jpg);
            }
            .newStyle3 {
                font-family: "Times New Roman";
            }
        </style>
        <tr>
            <td class="break">&nbsp;</td>
            <td>
                <div>
                    <h1><span class="newStyle3"><em>Setting</em></span></h1>
                </div>
                <div>
                    <p>
                        Account
                    </p>
                    <p>
                        Privacy
                    </p>
                    <p>
                        Security
                    </p>
                    <p>
                        Notifications
                    </p>
                </div>

            </td>
            <td class="break">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
            </td>
        </tr>
    </table>
</asp:Content>
