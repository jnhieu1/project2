﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="TheMentorShip.MainPage" %>
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
        .errorMessage {
            color: red;
            text-align: center;
            font-weight: bold;
        }
        .successMessage {
            color: green;
            text-align: center;
            font-weight: bold;
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
                                        <br /><strong>Search name or choose<br />department below</strong>
                                       
                                        <table style="width: 100%;">
                                            <tr>
                                                <td style="width:22%;" >
                                                    <table style="width: 100%;">
                                                        <tr><td>&nbsp;</td></tr>

                                                           <tr>
                                                            <td>Search by name:</td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="searchDepartmentTextbox" runat="server"></asp:TextBox>
                      
                                                            </td>
                                                            
                                                        </tr>
                                                             <tr>
                                                            <td>
                                                               
                                                                &nbsp;</td>
                                                            
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
                                                                 <tr>
                                                                     <td>
                                                                         <asp:Button ID="Button1" runat="server" BackColor="White" Height="30px" OnClick="SearchResultButtonClick" Text="Search" Width="74px" />
                                                                     </td>
                                                                 </tr>
                                                            
                                                        </tr>
                                                         
                                                   
                                                    </table>
                                                </td>
                                                <td ID="Td1" runat="server" style="width:70%; position:relative;">
                                                    <asp:GridView ID="DepartmentGridview" runat="server" AutoGenerateColumns="False" OnRowDataBound="searchResultGridView_RowDataBound" OnSelectedIndexChanged="DepartmentGridview_SelectedIndexChanged" GridLines="None">
                                                        <Columns>
                                                            <asp:BoundField DataField="Name" HeaderText ="Full Name" ItemStyle-Width="120"/>
                                                            <asp:BoundField DataField="Position" HeaderText ="Position" ItemStyle-Width="100"/>
                                                            <asp:BoundField DataField="SoftSkills" HeaderText ="Soft Skills" ItemStyle-Width="350" />
                                                            <asp:HyperLinkField NavigateUrl="~/SearchResultProfile.aspx" HeaderText="View profile" ItemStyle-Width="70"/>
                                                        </Columns>
                                                    </asp:GridView>
                                                    
                                                </td>
                                                
                                            </tr>
                                            
                                        </table>
                                        &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp; 
                                    </asp:View>
                                    <asp:View ID="View4" runat="server">
                                        <br /><strong>Select desired skills or<br />search by name below</strong>
                                        <table style="width: 100%;">
                                            <tr>
                                                <td ID="filterTable" style="width:22%; vertical-align:top;" >
                                                    <table style="width: 100%; position:relative; height:100%; ">
                                                        <caption>
                                                            &nbsp;
                                                            <tr>
                                                                <td><strong>Search by Name:</strong></td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="searchTextBox" runat="server" Width="150"></asp:TextBox>
                                                                    <asp:Button ID="searchBUtton" runat="server" OnClick="searchBUtton_Click" Text="Search" Width="156" />
                                                               </td>
                                                            </tr>
                                                           
                                                             
                                                               <tr>
                                                                   <td><strong>Search by Department:</strong></td>
                                                            </tr>
                                                             
                                                               <tr> <td>
                                                                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                                                       <asp:ListItem Value="0">None</asp:ListItem>
                                                                       <asp:ListItem>Accounting</asp:ListItem>
                                                                       <asp:ListItem>Finance</asp:ListItem>
                                                                       <asp:ListItem>Information Technology</asp:ListItem>
                                                                       <asp:ListItem>Customer Service</asp:ListItem>
                                                                       <asp:ListItem>Executive</asp:ListItem>
                                                                       <asp:ListItem>Insurance</asp:ListItem>
                                                                       <asp:ListItem>Banking</asp:ListItem>
                                                                   </asp:RadioButtonList>
                                                                   </td>  </tr>
                                                                <tr>
                                                                    <td><strong>Search by Job Title:</strong></td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                                <tr>
                                                                    <td>
                                                                        <strong>Search by Soft-Skill:</strong></td>
                                                                </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:CheckBoxList ID="filterCheckBoxList" runat="server" CssClass="auto-style5">
                                                                        <asp:ListItem> Communication</asp:ListItem>
                                                                        <asp:ListItem Value="PublicSpeaking"> Public Speaking</asp:ListItem>
                                                                        <asp:ListItem>Leadership</asp:ListItem>
                                                                        <asp:ListItem Value="TimeManagement"> Time Management</asp:ListItem>
                                                                        <asp:ListItem Value="TeamworkSkills"> Teamwork Skills</asp:ListItem>
                                                                        <asp:ListItem Value="Persuasion_Negotiation"> Persuasion/Negotiation</asp:ListItem>
                                                                        <asp:ListItem> Networking</asp:ListItem>
                                                                        <asp:ListItem Value="ConflictResolution"> Conflict Resolution</asp:ListItem>
                                                                        <asp:ListItem Value="PresentationSkills"> Presentation Skills</asp:ListItem>
                                                                        <asp:ListItem Value="Mentoring_Coaching"> Mentoring/Coaching</asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </td>
                                                            </tr>
                                                            </caption>
                                                        
                                                    </table>
                                                </td>
                                                

                                               
                                                <td ID="tableDataForSearchResults" runat="server" style="width:70%; position:relative;">
                                                    <asp:GridView ID="searchResultGridView" runat="server" AutoGenerateColumns="False" OnRowDataBound="searchResultGridView_RowDataBound" OnDataBound="searchResultGridView_DataBound" OnSelectedIndexChanged="searchResultGridView_SelectedIndexChanged" GridLines="None">
                                                        <Columns>
                                                            <asp:BoundField DataField="Name" HeaderText ="Full Name" ItemStyle-Width="125"/>
                                                            <asp:BoundField DataField="Position" HeaderText ="Position" ItemStyle-Width="100" />
                                                            <asp:BoundField DataField="SoftSkills" HeaderText ="Soft Skills" ItemStyle-Width="350"/>
                                                            <asp:HyperLinkField NavigateUrl="~/SearchResultProfile.aspx" HeaderText ="View profile" ItemStyle-Width="70"/>
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
                                                                <asp:Image ID="personalImage" runat="server" ImageUrl="~/Image/defaultIcon.jpg" Width="180" />
                                                            </td>                                                          
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style11">
                                                                <asp:Label ID="skillsyouwantMentor" runat="server" Text="Skills you would like to <br/> mentor in:"></asp:Label>
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
                                                            <td> &nbsp;</td>
                                                           
                                                            
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td style="width:75%;">
                                                    <table style="width: 100%; height:inherit; margin-top: 0px;">
                                                        <tr>
                                                            <td class="auto-style9" style="text-align: left;">
                                                                <br />
                                                                <br />
                                                                <strong>Employee Information:</strong>
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
                                                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Currently available" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style10" style="text-align: left;">
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
                                                            <td>
                                                                
                                                                &nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>
                                                                <asp:Label ID="errorMessageProfile" CssClass="errorMessage" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                <asp:Label ID="successMessageProfile" CssClass="successMessage" runat="server" Text="Label" Visible="False"></asp:Label>
                                                            </td>
                                                            <tr>
                                                                <td class="auto-style10"></td>
                                                                <td></td>
                                                                <td style="width:25%;">
                                                                    <asp:Button ID="Button3" runat="server" BackColor="White" Height="35px" OnClick="Button3_Click" Text="Save" Width="45%" />
                                                                    &nbsp;
                                                                    <asp:Button ID="Button4" runat="server" BackColor="White" Height="35px" OnClick="Button4_Click" Text="Settings" Width="45%" />
                                                                </td>
                                                            </tr>
                                                        </tr>
                                                        
                                                    </table>
                                                </td>
                                                
                                            </tr>
                                            <tr><td> &nbsp;</td></tr>
                                                        <tr><td> &nbsp;</td></tr>
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
    
        <table>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
        </table>
        
        
    </div>
</asp:Content>
