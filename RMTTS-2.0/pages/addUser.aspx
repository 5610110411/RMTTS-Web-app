<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="RMTTS_2._0.pages.addUser" %>

<!doctype html>

<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
		<title>RMTTS</title>

		<!-- Page styles -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.min.css">
		<!---styles for danger button -->
		<!--link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"-->
		<!-- link to outer folder -->
		<link rel="stylesheet" href="styleForm.css">
		<style>
			input[type=text] {
				margin-top: 20px;
				display: inline-block;
				border: 1px solid #ccc;
				border-radius: 5px;
				box-sizing: border-box;
			}
			label{
				float: left;
				width: 150px;
				text-align: right;
				padding-right: 12px;
				margin-top: 20px;
				clear: left;
			}
		</style>
	</head>
	<body>
		<div id="wrapper">
			<form id="form1" runat="server">
				<div  class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
					<div class="android-header mdl-layout__header mdl-layout__header--waterfall">
						<div class="mdl-layout__header-row">
							<span class="android-title mdl-layout-title">
								<!-- top logo image -->
								<img class="android-logo-image" src="../images/logo-scg.png">
							</span>
							<!-- Add spacer, to align navigation to the right in desktop -->
							<div class="android-header-spacer mdl-layout-spacer"></div>
							<div class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
								
							</div>
							<!-- Navigation -->
							<div class="android-navigation-container">
								<nav class="android-navigation mdl-navigation">
									<a class="mdl-navigation__link" href="../RMTTS.aspx">เริ่มต้น</a>
									<a class="mdl-navigation__link" href="transport.aspx">ค้นหาข้อมูล</a>
									<a class="mdl-navigation__link" href="usermanagement.aspx">จัดการข้อมูลบุคคล</a>
									<a class="mdl-navigation__link" href="carmanagement.aspx">จัดการข้อมูลรถ</a>
									<a class="mdl-navigation__link" href="">สอบถาม</a>
								</nav>
							</div>
							<span class="android-mobile-title mdl-layout-title">
								<img class="android-logo-image" src="../images/scg-logo-white.png">
							</span>
						</div>
					</div>
					<!--content section -->
					<div id="content" class="android-content mdl-layout__content">
						<a name="top page"></a>
						<div class="android-more-section">
							<div class="android-section-title mdl-typography--display-1-color-contrast">จัดการข้อมูลบุคคล</div>       
							<div class="padding: 80px mdl-cell--12-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
								<div class="mdl-card__title">
									<h4 class="mdl-card__title-text">ลงทะเบียน</h4>
								</div>
								<div class="android-frame">
									<div>
										<label>รหัสพนักงาน:</label>
										<asp:TextBox ID="txt_staffid" runat="server" placeholder="Staff ID" Height="34px" Width="147px"></asp:TextBox>
										<asp:RequiredFieldValidator ID="req_staffid" runat="server" ControlToValidate="txt_staffid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div>
										<label>ชื่อ-นามสกุล:</label>
										<asp:DropDownList class="form-control" ID="DropDownList_title" runat="server" Height="34px" Width="69px">
											<asp:ListItem>นาย</asp:ListItem>
											<asp:ListItem>นาง</asp:ListItem>
											<asp:ListItem>นางสาว</asp:ListItem>
										</asp:DropDownList>
										<asp:TextBox ID="txt_firstname" runat="server" placeholder="First Name" Height="34px" Width="147px"></asp:TextBox>
										<asp:RequiredFieldValidator ID="req_firstname" runat="server" ControlToValidate="txt_firstname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
										<asp:TextBox ID="txt_lastname" runat="server" placeholder="Last Name" Height="34px" Width="147px"></asp:TextBox>
										<asp:RequiredFieldValidator ID="req_lastname" runat="server" ControlToValidate="txt_lastname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>									
									<div>
										<label>ติดต่อ:</label>
										<asp:TextBox ID="txt_tel" runat="server" placeholder="Telephone number" Height="34px" Width="147px"></asp:TextBox>
										<asp:TextBox ID="txt_email" runat="server" placeholder="E-Mail" Height="34px" Width="147px"></asp:TextBox>
									</div>	
									<div>
										<label>สิทธิ์การเข้าถึง:</label>
										<asp:DropDownList style="margin-top: 20px;" class="form-control" ID="DropDownList_role" runat="server" DataSourceID="SqlDataSource_role" DataTextField="auth_name" DataValueField="auth_name" Height="34px" Width="147px">
										</asp:DropDownList>
										<asp:SqlDataSource ID="SqlDataSource_role" runat="server" ConnectionString="<%$ ConnectionStrings:RMTTSConnectionString %>" SelectCommand="SELECT [auth_name] FROM [tb_authoritys]"></asp:SqlDataSource>
									</div>
								</div>
								<div style="margin-left: 600px; margin-bottom: 50px;">
									<asp:button width="80" height="37" class="btn btn-success" runat="server" Text="เพิ่มรายชื่อ" OnClick="bt_adduser_ok"/>
									<asp:button width="80" height="37" class="btn btn-danger" runat="server" Text="ยกเลิก" OnClick="bt_adduser_cancel" CausesValidation="false"/>
								</div>
							</div>
						</div>
						<footer id="footer" class="android-footer mdl-mega-footer">
							<div class="mdl-mega-footer--middle-section">
								<p class="mdl-typography--font-light">Developer: Ninez Manas</p>
								<p class="mdl-typography--font-light">Some features and devices may not be available in all areas</p>
							</div>

							<div class="mdl-mega-footer--bottom-section">
								<a class="android-link android-link-menu mdl-typography--font-light" id="version-dropdown">
									Versions
									<i class="material-icons">arrow_drop_up</i>
								</a>
								<ul class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect" for="version-dropdown">
									<li class="mdl-menu__item">5.0 Lollipop</li>
									<li class="mdl-menu__item">4.4 KitKat</li>
									<li class="mdl-menu__item">4.3 Jelly Bean</li>
									<li class="mdl-menu__item">Android History</li>
								</ul>
								<a class="android-link android-link-menu mdl-typography--font-light" id="developers-dropdown">
									For Developers

				

								<i class="material-icons">arrow_drop_up</i>
								</a>
								<ul class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect" for="developers-dropdown">
									<li class="mdl-menu__item">App developer resourcestem">Android Open Source Project</li>
									<li class="mdl-menu__item">Android SDK</li>
									<li class="mdl-menu__item">Android for Work</li>
								</ul>
									<a class="android-link mdl-typography--font-light" href="">Blog</a>
									<a class="android-link mdl-typography--font-light" href="">Privacy Policy</a>
							</div>
						</footer>
					</div>
				</div>
				<script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
			</form>
		</div>
	</body>
</html>