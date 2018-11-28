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

        #tableDataForSearchResults{
            vertical-align: top;
            align-content: initial;
        }
        .searchFilter {
            border:1px;
        }

        #filters1 {
       display: inline-block;
         
        }

        #softskills {
            display: inline-block;
            border: solid 0.5px;
            border-color: lightgrey;
            height: 230px;

        }

        #location {
            display: inline-block;
            border: solid 0.5px;
            border-color: lightgrey;
            height: 230px;
        }

        #department {
            display: inline-block;
            border: solid 0.5px;
            border-color: lightgrey;
            height: 230px;
        }

        #jobtitle {
            display: inline-block;
            border: solid 0.5px;
            border-color: lightgrey;
            height: 230px;
        }

        .border {
            border: solid 0.5px;
        }

    </style>

    <div>
        
        <table id="table1" style="width:100%;">
            <tr>
                <td class="break">&nbsp;</td>
                <td>
                    
                    <div class="tabContents">
                        <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                            <asp:View ID="View1" runat="server">
                                

                                <div class="tabContents">
                                <asp:MultiView ID="MultiView2" ActiveViewIndex="0" runat="server">
                                    
                                    <asp:View ID="View4" runat="server" >
                                        <div style="width:100%; align-items:center;">
                                        <table style="margin:auto;">
                                            <tr>
                                                
                                                

                                               
                                                <td ID="tableDataForSearchResults" runat="server">
                                                    
                                                   <p><strong>Search by name:</strong></p> <asp:TextBox ID="searchTextBox" runat="server" Width="530"></asp:TextBox>&nbsp;&nbsp;&nbsp;<asp:Button ID="searchBUtton" runat="server" OnClick="searchBUtton_Click" Text="Search" Width="156" />
                                                   
                                                </td>
                                             
                                            </tr>
                                        </table>
                                        </div>
                                        <div style="width:100%; align-items:center;">
                                        <table id="searchFilter" style="margin:auto;">
                                            <tr>
                                                <td class="border" style="vertical-align:top">
                                                  <%--<div id="filters1">--%>
                                                      <%--<div id="softskills">--%>
                                                                  <strong>Search by soft skill:</strong>
                                                           
                                                                       <asp:CheckBoxList ID="filterCheckBoxList" runat="server" CssClass="auto-style5" CellPadding="5" CellSpacing="5" RepeatColumns="2" RepeatDirection="Vertical" AutoPostBack="True" OnSelectedIndexChanged="searchBUtton_Click" >
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
                                                       <%--</div>--%>
                                                </td>
                                                <td class="border" style="vertical-align:top">
                                                      <%--<div id="department">--%>
                                                           
                                                           <strong>Search by Department:</strong>
                                                             
                                                                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"  CellPadding="5" CellSpacing="5" RepeatColumns="2" RepeatDirection="Vertical">
                                                                       <asp:ListItem Value="None" Selected="True">None</asp:ListItem>
                                                                       <asp:ListItem>Accounting</asp:ListItem>
                                                                       <asp:ListItem>Finance</asp:ListItem>
                                                                       <asp:ListItem>Information Technology</asp:ListItem>
                                                                       <asp:ListItem>Customer Service</asp:ListItem>
                                                                       <asp:ListItem>Executive</asp:ListItem>
                                                                       <asp:ListItem>Insurance</asp:ListItem>
                                                                       <asp:ListItem>Banking</asp:ListItem>
                                                                   </asp:RadioButtonList>

                                                      <%--</div>--%>
                                                </td>
                                                <td class="border" style="vertical-align:top">
                                                      <%--<div id="jobtitle">--%>
                                                     
                                                                 <strong>Search by Job Title:</strong>
                                                         <br /> 
                                                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="searchBUtton_Click">
                                                                        <asp:ListItem>None</asp:ListItem>
                                                                  </asp:DropDownList>
                                                             
                                                      <%--</div>--%>
                                                </td>
                                                <td class="border" style="vertical-align:top">
                                                      <%--<div id ="location">--%>
                                                                    <strong>Search by Location:</strong>

                                                             
                                                                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="searchBUtton_Click">
                                                                        <asp:ListItem>Phoenix</asp:ListItem>
                                                                        <asp:ListItem>London</asp:ListItem>
                                                                        <asp:ListItem>San Antonio</asp:ListItem>
                                                                        <asp:ListItem>Berlin</asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                
                                                      <%--</div>--%>
                                                         <%--</div>--%>
                                                    <%--<br />--%>
                                                </td>
                                            </tr>
                                </table>
                                </div>
                                <div style="width:100%; align-items:center;">
                                <table style="margin:auto">
                                            <tr>
                                                <td>
                                                    <asp:GridView ID="searchResultGridView" runat="server" AutoGenerateColumns="False" OnRowDataBound="searchResultGridView_RowDataBound" OnDataBound="searchResultGridView_DataBound" OnSelectedIndexChanged="searchResultGridView_SelectedIndexChanged" GridLines="None">
                                                        <Columns>
                                                            <asp:ImageField HeaderText="Badges" DataImageUrlField="badgesImage">
                                                                <ControlStyle Height="50px" />
                                                            </asp:ImageField>
                                                            <asp:BoundField DataField="Name" HeaderText="Full Name" ItemStyle-Width="125">
                                                            <ItemStyle Width="125px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Position" HeaderText="Position" ItemStyle-Width="100">
                                                            <ItemStyle Width="100px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="SoftSkills" HeaderText="Soft Skills" ItemStyle-Width="350">
                                                            <ItemStyle Width="350px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Location" HeaderText="Location" ItemStyle-Width="100">
                                                            <ItemStyle Width="100px" />
                                                            </asp:BoundField>
                                                            <asp:HyperLinkField HeaderText="View profile" ItemStyle-Width="70" NavigateUrl="~/SearchResultProfile.aspx">
                                                            <ItemStyle Width="70px" />
                                                            </asp:HyperLinkField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            
                                        </table>
                                    </div>
                                    </asp:View>
                                </asp:MultiView>
                                </div>
                            </asp:View>
                            
                            <asp:View ID="View2" runat="server">
                                
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
                                                                <asp:Image ID="profileEndorcementImage" runat="server" Height="100px" Visible="False" />
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
                                                <td style="width:75%;vertical-align:top">
                                                    <table style="width: 100%; height:inherit; vertical-align:top">
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
                                                                <strong>Email:</strong>
                                                                <asp:Label ID="emailLabel" runat="server" Text="[Email]"></asp:Label>
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
                                                                    <asp:TextBox ID="TextBox1" runat="server" Height="109px" Width=98% TextMode="MultiLine"></asp:TextBox>
                                                                    
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
                                                        </tr>
                                                            <tr>
                                                                <td class="auto-style10"></td>
                                                                <td></td>
                                                                <td style="width:25%;">
                                                                    <asp:Button ID="Button3" runat="server" BackColor="White" Height="35px" OnClick="Button3_Click" Text="Save" Width="45%" />
                                                                    &nbsp;
                                                                    <asp:Button ID="Button4" runat="server" BackColor="White" Height="35px" OnClick="Button4_Click" Text="Settings" Width="45%" />
                                                                </td>
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
             <tr><td>&nbsp;</td></tr>
        </table>
        
        
    </div>

        <script>

        function MouseEvents(objRef, evt)
        {
            if (evt.type == "mouseover")
            {
                objRef.style.cursor = 'pointer';
                objRef.style.backgroundColor = "#EEEED1";
            }
            else
            {
                if (evt.type == "mouseout") objRef.style.backgroundColor = "#FFF";
            }
        }




    </script>

</asp:Content>
