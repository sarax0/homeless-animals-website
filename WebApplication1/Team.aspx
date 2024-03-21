<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="WebApplication1.Team" %>



<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
    <meta charset="UTF-8">
    <title>About - Pets Website</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        .auto-style1 {
            height: 210px;
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
                <h2 style="color: white; font-family: Bahnschrift; padding-left: 200px; font-size: 30px;">Manage Reported Cases</h2>
                <asp:Label ID="Label1" runat="server" Text="Case ID" Font-Names="Bahnschrift" Font-Size="X-Large" Style="margin-right: 5px;" ForeColor="#7C6969"></asp:Label>
                <br />
                <asp:TextBox ID="TextID" runat="server" Width="200px" Height="30px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Remove Case" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#666666" OnClick="btnDelete_Click" />
                <br />
                <br />
                <br />
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Update Pet Status" Font-Names="Bahnschrift" Font-Size="X-Large" Style="margin-right: 5px;" ForeColor="#7C6969"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Update Case Response" Font-Names="Bahnschrift" Font-Size="X-Large" Style="margin-right: 5px;" ForeColor="#7C6969"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px;">
                            <asp:DropDownList ID="DropDownList1" runat="server"
                                Style="font-family: Raleway-Medium; color: #555555; line-height: 1.2; font-size: 18px; display: block; width: 100%; height: 55px; padding: 0 25px 0 25px;" ValidationGroup="1">
                                <asp:ListItem Value="Approved">Approved</asp:ListItem>
                                <asp:ListItem Value="Pending">Pending</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 200px;">
                            <asp:DropDownList ID="DropDownList2" runat="server"
                                Style="font-family: Raleway-Medium; color: #555555; line-height: 1.2; font-size: 18px; display: block; width: 100%; height: 55px; padding: 0 25px 0 25px;" ValidationGroup="1">
                                <asp:ListItem Value="Uninjured">Uninjured</asp:ListItem>
                                <asp:ListItem Value="Severly Injured">Severly Injured</asp:ListItem>
                                <asp:ListItem Value="Injured"> Injured</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" Font-Names="Bahnschrift" Font-Size="Large" Width="80%" ForeColor="#666666" OnClick="btnUpdate_Click" />
                        </td>
                    </tr>
                </table>
                <span class="focus-input100"></span>
                <br />
                <asp:Label ID="LabelMsg" runat="server" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#993300" Text="Query Status" />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan"
                BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="213px" Width="798px"
                Caption="<h2 >Submitted Pets Cases</h2>">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Species" HeaderText="Species" SortExpression="Species" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="PetStatus" HeaderText="PetStatus" SortExpression="PetStatus" />
                    <asp:BoundField DataField="CaseStatus" HeaderText="CaseStatus" SortExpression="CaseStatus" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetsConnectionString %>" SelectCommand="SELECT [Id], [Address], [Species], [Amount], [PetStatus], [CaseStatus] FROM [Reports] ORDER BY [PetStatus], [CaseStatus]"></asp:SqlDataSource>
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
                            By the 4th Year Medical informatics Students :Sara and Noha 
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

