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
		<link rel="stylesheet" href="../styles.css">
		<style>
		#view-source {
		  position: fixed;
		  display: block;
		  right: 0;
		  bottom: 0;
		  margin-right: 40px;
		  margin-bottom: 40px;
		  z-index: 900;
		}
		input[type=text] {
			width: 97%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 5px;
			box-sizing: border-box;
		}
		</style>
	</head>
	<body>
		<form id="form1" runat="server">
			<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
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
				<div class="android-content mdl-layout__content">
					<a name="top page"></a>
					<div class="android-more-section">
						<div class="android-section-title mdl-typography--display-1-color-contrast">จัดการข้อมูลบุคคล</div>       
						<div class="android-card-container mdl-grid">
							<!--start cell-->
							<div class="padding: 80px mdl-cell--12-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
								<div class="mdl-card__title">
									<h4 class="mdl-card__title-text">ลงทะเบียน</h4>
								</div>
								<div class="android-frame">
									รหัสพนักงาน<br />
									<asp:TextBox ID="txt_staffid" runat="server" placeholder="Staff ID"></asp:TextBox>
									<asp:RequiredFieldValidator ID="req_staffid" runat="server" ControlToValidate="txt_staffid" ErrorMessage="กรุณากรอกข้อมูล&quot;รหัสพนักงาน&quot;" ForeColor="Red"></asp:RequiredFieldValidator>
									<br />
									คำนำหน้า<br />
									<asp:TextBox ID="txt_title" runat="server" placeholder="Title"></asp:TextBox>
									<asp:RequiredFieldValidator ID="req_title" runat="server" ControlToValidate="txt_title" ErrorMessage="กรุณากรอกข้อมูล&quot;คำนำหน้า&quot;" ForeColor="Red"></asp:RequiredFieldValidator>
									<br />
									ชื่อ<br />
									<asp:TextBox ID="txt_firstname" runat="server" placeholder="First Name"></asp:TextBox>
									<br />
									<asp:RequiredFieldValidator ID="req_firstname" runat="server" ControlToValidate="txt_firstname" ErrorMessage="กรุณากรอกข้อมูล&quot;ชื่อ&quot;" ForeColor="Red"></asp:RequiredFieldValidator>
									<br />
									นามสกุล<br />
									<asp:TextBox ID="txt_lastname" runat="server" placeholder="Last Name"></asp:TextBox>
									<asp:RequiredFieldValidator ID="req_lastname" runat="server" ControlToValidate="txt_lastname" ErrorMessage="กรุณากรอกข้อมูล&quot;นามสกุล&quot;" ForeColor="Red"></asp:RequiredFieldValidator>
									<br />
									เบอร์โทร<br />
									<asp:TextBox ID="txt_tel" runat="server" placeholder="Telephone number"></asp:TextBox>
									<br />
									<br />
									อีเมล์<br />
									<asp:TextBox ID="txt_email" runat="server" placeholder="E-Mail"></asp:TextBox>
									<br />
									<br />
									สิทธิ์การเข้าถึง<br />
									<asp:TextBox ID="txt_role" runat="server" placeholder="Role"></asp:TextBox>
									<br />
									<asp:RequiredFieldValidator ID="req_role" runat="server" ControlToValidate="txt_role" ErrorMessage="กรุณากรอกข้อมูล&quot;สิทธิ์การเข้าถึง&quot;" ForeColor="Red"></asp:RequiredFieldValidator>
									<br />
									<asp:button class="btn btn-success" runat="server" Text="เพิ่มรายชื่อ" OnClick="bt_adduser_ok"/>
									<asp:button class="btn btn-danger" runat="server" Text="ยกเลิก" OnClick="bt_adduser_cancel" CausesValidation="false"/>
		
								</div>

							</div>
						</div>
					</div>
					<footer class="android-footer mdl-mega-footer">
						<div class="mdl-mega-footer--top-section">
							<div class="mdl-mega-footer--left-section">
								<button class="mdl-mega-footer--social-btn"></button>
								&nbsp;
								<button class="mdl-mega-footer--social-btn"></button>
								&nbsp;
								<button class="mdl-mega-footer--social-btn"></button>
							</div>
							<div class="mdl-mega-footer--right-section">
								<a class="mdl-typography--font-light" href="#top page">
								Back to Top
								<i class="material-icons">expand_less</i>
								</a>
							</div>
						</div>

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
								<li class="mdl-menu__item">App developer resources</li>
								<li class="mdl-menu__item">Android Open Source Project</li>
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
	</body>
</html>