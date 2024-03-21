<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAccess.aspx.cs" Inherits="WebApplication1.AddAccess" %>



<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
    <meta charset="UTF-8">
    <title>About - Pets Rescue Website </title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        .auto-style1 {
            height: 210px;
        }
        .auto-style2 {
            width: 200px;
            height: 38px;
        }
        .auto-style3 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <div>
                <a href="Home.aspx" class="logo">Pets</a>
                <ul>
                    <li class="current">
                        <a class="home" href="Login/Login.aspx">Login</a>
                    </li>
                    <li class="current">
                        <a class="home" href="Home.aspx">Home</a>
                    </li>
                    <li>
                        <a class="about" href="Report_1.aspx">Report</a>
                    </li>
                    <li>
                        <a class="services" href="Volunteers.aspx">Join Us</a>
                    </li>
                    <li>
                        <a class="blog" href="About.aspx">About Us</a>
                    </li>

                </ul>
            </div>
        </div>
        <div id="body">
            <br />
            <br />            
            <div style="margin-right: 200px; margin-bottom: 0px;" class="auto-style1">
                <h2 style="color:white; font-family: Bahnschrift; padding-left: 200px; font-size:30px;">Manage Authorization Form</h2>
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Member ID" Font-Names="Bahnschrift" Font-Size="X-Large" Style="margin-right: 5px;" ForeColor="#7C6969"></asp:Label>
                        </td>
                        <td>                             
                            <asp:TextBox ID="TextID" runat="server" Width="400px" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Member UserName" Font-Names="Bahnschrift" Font-Size="X-Large" Style="margin-right: 5px;" ForeColor="#7C6969"></asp:Label>
                        </td>
                        <td>                             
                            <asp:TextBox ID="TextEmail" runat="server" Width="400px" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Member Password" Font-Names="Bahnschrift" Font-Size="X-Large" Style="margin-right: 5px;" ForeColor="#7C6969"></asp:Label>
                        </td>
                        <td>                             
                            <asp:TextBox ID="TextPass" runat="server" Width="400px" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Membership" Font-Names="Bahnschrift" Font-Size="X-Large" Style="margin-right: 5px;" ForeColor="#7C6969"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input100" ValidationGroup="1" Width="76%" Height="40px" Font-Size="Medium">
                                <asp:ListItem Value="1">Member</asp:ListItem>
                                <asp:ListItem Value="0">Admin</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr >
                        <td colspan="2" style="padding-top:15px; position:center;">
                            <asp:Button ID="btnAccess" runat="server" Text="Create Authoriztion"  Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#666666" OnClick="btnAccess_Click" />
                            &nbsp<asp:Button ID="btnUpdate" runat="server" Text="Update Member" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#666666" OnClick="btnUpdate_Click" />
                            &nbsp<asp:Button ID="btnDelete" runat="server" Text="Remove Member" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#666666" OnClick="btnDelete_Click" />
                        &nbsp
                         <asp:Label ID="LabelMsg" runat="server" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#993300" Text="Query Status" />
                        </td>
                   
                     </tr>
                </table>
                <br />               
                <span class="focus-input100"></span>
                <br />
            </div>            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetsConnectionString %>" SelectCommand="SELECT [ID], [Email], [Type] FROM [Login]"></asp:SqlDataSource>
          
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Height="213px" Width="798px" BackColor="LightGoldenrodYellow" 
                BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Caption="<h2>Approved Team Members List</h2>">

                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="IsAvailable" HeaderText="IsAvailable" SortExpression="IsAvailable" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PetsConnectionString %>" SelectCommand="SELECT [ID], [Email], [IsAvailable] FROM [Team]"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="213px" Width="798px" BackColor="LightGoldenrodYellow" 
                BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Caption="<h2> Authorized Memebers</h2>">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <br />
            <br />
            <br />

        </div>
        <%--footer--%>
        <div id="section">
            <ul>
                <li>
                    <a href="blog.html">
                        <img src="images/dog2.jpg" alt="Image"></a>
                    <div>
                        <p>
                            This website template has been designed  Under the Supervision of Eng.Abanop Gerges.<br />
                            By the4th Year Medical informatics Students :Sara and Noha 
                        </p>
                        <a href="blog.html" class="readmore">Read more &gt;&gt;</a>
                    </div>
                </li>
            </ul>
        </div>
        <div id="footer">
            <div class="logo">
                <a href="Home.aspx">
                    <img src="images/logo.jpg" alt="Logo"></a>
            </div>
            <ul>
                <li class="current">
                    <a class="home" href="Home.aspx">Home</a>
                </li>
                <li>
                    <a class="about" href="Report_1.aspx">Report</a>
                </li>
                <li>
                    <a class="services" href="Volunteers.aspx">Join Us</a>
                </li>
                <li>
                    <a class="blog" href="About.aspx">About Us</a>
                </li>

            </ul>
            <p>
                &copy; Copyright &copy; 2021. Sara Motamed and Noha Mohamed 4th Year Students Supervised by Eng.Abanop Gerges
            </p>
            <div id="connect">
                <a href="http://facebook.com" target="_blank" id="facebook">Facebook</a>
                <a href="http://twitter.com" target="_blank" id="twitter">Twitter</a>
                <a href="http://google.com" target="_blank" id="googleplus">Google&#43;</a>
            </div>
        </div>
    </form>
</body>
</html>

