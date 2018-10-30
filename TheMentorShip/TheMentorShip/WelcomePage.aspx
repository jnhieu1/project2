<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="TheMentorShip.WelcomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%;">
    <div style="width:49%;float:left;">
        <asp:Button ID="Button1" runat="server" Text="Find A Mentor" Height="100px" Width="250px"/>
</div>
    <div style="width:49%;float:right;align-self:auto;">
        <asp:Button ID="Button2" runat="server" Text="Be A Mentor" align="right" Height="100px" Width="250px"/>
    </div>
</div>
    <p>
        <br />
</p>
<div>
    </div>
</asp:Content>
