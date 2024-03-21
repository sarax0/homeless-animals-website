<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report_1.aspx.cs" Inherits="WebApplication1.Report_1" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>About - Pets Rescue Website  </title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <style type="text/css">
        .auto-style2 {
            width: 75%;
        }
        .auto-style8 {
            width: 94px;
            height: 52px;
        }
        .auto-style10 {
            width: 94px;
            height: 40px;
        }
        .auto-style12 {
            width: 130px;
            color: #003399;
            height: 40px;
        }
        .auto-style13 {
            height: 40px;
            font-size: 16px;
            color: #990000;
            width:50px;
        }
        .auto-style14 {
            height: 40px;
            width: 150px;
        }
        .auto-style15 {
            width: 412px;
            height: 52px;
        }
        .auto-style16 {
            width: 94px;
            height: 48px;
        }
        .auto-style17 {
            width: 412px;
            height: 48px;
        }
        .auto-style18 {
            height: 48px;
            font-size: 16px;
            color: #990000;
        }
        .auto-style19 {
            color: #990000;
        }
        .auto-style20 {
            height: 52px;
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
		<div id="background">
		
		    <table class="auto-style2" style="margin-left:200px; font-size:20px;">
                <tr>
                    <td colspan="2" >
                         <h3 style="color:lightsteelblue; font-family:Bahnschrift;  " >Fill the Form to Report a Case</h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label1" runat="server" ForeColor="#003399" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextName" runat="server" Height="30px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="Please Enter Your Name" ForeColor="#CC0000" CssClass="auto-style19" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server" ForeColor="#003399" Text="Phone Number"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextPhone" runat="server" Height="30px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPhone" ErrorMessage="Please Add Your Number" ForeColor="#CC0000" CssClass="auto-style19" ValidationGroup="1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[\d\d]{11}$" ControlToValidate="TextPhone" ErrorMessage="Enter 11 Number"   ForeColor="#CC0000" CssClass="auto-style19" ValidationGroup="1"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" ForeColor="#003399" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextAddress" runat="server" Height="30px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextAddress" ErrorMessage="Please Add Your Address" ForeColor="#CC0000" CssClass="auto-style19" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label4" runat="server" ForeColor="#003399" Text="Age"></asp:Label>

                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextAge" runat="server" Height="30px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextAge" ErrorMessage="Add Your Age" ForeColor="#CC0000" CssClass="auto-style19" ValidationGroup="1"></asp:RequiredFieldValidator>
                        <br class="auto-style19" />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextAge" ErrorMessage="Invalid Input" ForeColor="#CC0000" MaximumValue="70" MinimumValue="10" CssClass="auto-style19" ValidationGroup="1"></asp:RangeValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label5" runat="server" ForeColor="#003399" Text="Type"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="397px" Font-Size="Medium">
                            <asp:ListItem>Cat</asp:ListItem>
                            <asp:ListItem>Dog</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Select" ForeColor="#CC0000" CssClass="auto-style19" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="Label6" runat="server" ForeColor="#003399" Text="Amount"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextAmount" runat="server" Height="30px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <strong>
                        <br class="auto-style19" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextAmount" ErrorMessage="Add Number of found pets" ForeColor="#CC0000" CssClass="auto-style19" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style15" style="padding-top:15px;">
                        <asp:Button ID="btn_signup0" runat="server" Text="Submit" Width="126px" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#666666" Font-Bold="True" OnClick="btn_insert_Click" ValidationGroup="1" />                        <asp:Label ID="LabelMsg" runat="server" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#666666"  Text="Status" />
                    </td>
                    <td class="auto-style20"></td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
		
		</div>
		<div id="section">
			<ul>
				<li>
					<a href="blog.html"><img src="images/dog2.jpg" alt="Image"></a>
					<div>
						<p>
							This website template has been designed  Under the Supervision of Eng.Abanop Gerges.<br />By the4th Year Medical informatics Students :Sara and Noha 
						</p>
						<a href="about.aspx" class="readmore">Read more &gt;&gt;</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div id="footer">
		<div class="logo">
			<a href="Home.aspx"><img src="images/logo.jpg" alt="Logo"></a>
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
</html>>

