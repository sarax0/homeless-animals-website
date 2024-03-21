<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="WebApplication1.Report" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>About - Pets Rescue Website  
	</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <style type="text/css">
        .auto-style2 {
            width: 75%;
        }
        .auto-style8 {
            width: 173px;
            height: 52px;
        }
        .auto-style10 {
            width: 173px;
            height: 40px;
        }
        .auto-style12 {
            width: 173px;
            color: #003399;
            height: 40px;
        }
        .auto-style13 {
            height: 40px;
            font-size: 16px;
            color: #990000;
        }
        .auto-style14 {
            height: 40px;
            width: 412px;
        }
        .auto-style15 {
            width: 412px;
            height: 52px;
        }
        .auto-style16 {
            width: 173px;
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
			<a href="index.html" class="logo">PugSureWoi</a>
			<ul>
				<li class="current">
					<a class="home" href="Home.aspx">Home</a>
				</li>
				<li>
					<a class="about" href="Report.aspx">Report</a>
				</li>
				<li>
					<a class="blog" href="About.html">About</a>
				</li>
				<li>
					<a class="services" href="services.html">Services</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div id="background">
		
            <table class="auto-style2" style="margin-left:200px; font-size:20px;">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label1" runat="server" ForeColor="#003399" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextName" runat="server" Height="23px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="Please Enter Your Name" ForeColor="#CC0000" CssClass="auto-style19"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server" ForeColor="#003399" Text="Phone Number"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextPhone" runat="server" Height="23px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPhone" ErrorMessage="Please Add Your Number" ForeColor="#CC0000" CssClass="auto-style19"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" ForeColor="#003399" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextAddress" runat="server" Height="23px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextAddress" ErrorMessage="Please Add Your Address" ForeColor="#CC0000" CssClass="auto-style19"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label4" runat="server" ForeColor="#003399" Text="Age"></asp:Label>

                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextAge" runat="server" Height="23px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextAge" ErrorMessage="Add Your Age" ForeColor="#CC0000" CssClass="auto-style19"></asp:RequiredFieldValidator>
                        <br class="auto-style19" />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextAge" ErrorMessage="Invalid Input" ForeColor="#CC0000" MaximumValue="70" MinimumValue="10" CssClass="auto-style19"></asp:RangeValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label5" runat="server" ForeColor="#003399" Text="Species"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="DDListType" runat="server" Height="32px" Width="397px">
                            <asp:ListItem>Cat</asp:ListItem>
                            <asp:ListItem>Dog</asp:ListItem>
                            <asp:ListItem>other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDListType" ErrorMessage="Please Select" ForeColor="#CC0000" CssClass="auto-style19"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="Label6" runat="server" ForeColor="#003399" Text="Amount"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextAmount" runat="server" Height="23px" Width="392px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <strong>
                        <br class="auto-style19" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextAmount" ErrorMessage="Add Number of found pets" ForeColor="#CC0000" CssClass="auto-style19"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style15" style="padding-top:15px;">
                        <asp:Button ID="btn1Report" runat="server" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#666666"  Text="Submit" Width="90px" OnClick="btn1Report_Click"  />
                        <%--<asp:Button ID="btn1Report" runat="server" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#666666"  Text="Submit" Width="90px" OnClick="btn_insert_Click" />--%>
                        <asp:Label ID="LabelMsg" runat="server" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#666666"  Text="Status"></asp:Label>
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
							This website template has been designed by Free Website Templates for you, for free. You can replace all this text with your own text. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud
						</p>
						<a href="blog.html" class="readmore">Read more &gt;&gt;</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div id="footer">
		<div class="logo">
			<a href="index.html"><img src="images/logo.jpg" alt="Logo"></a>
		</div>
		<ul>
			<li>
				<a href="index.html">Home</a>
			</li>
			<li>
				<a href="about.html">About</a>
			</li>
			<li>
				<a href="blog.html">Blog</a>
			</li>
			<li>
				<a href="services.html">Services</a>
			</li>
		</ul>
		<p>
			&copy; Copyright &copy; 2023. Company name all rights reserved
		</p>
		<div id="connect">
			<a href="http://freewebsitetemplates.com/go/facebook/" target="_blank" id="facebook">Facebook</a>
			<a href="http://freewebsitetemplates.com/go/twitter/" target="_blank" id="twitter">Twitter</a>
			<a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" id="googleplus">Google&#43;</a>
		</div>
	</div>
    </form>
</body>
</html>>

