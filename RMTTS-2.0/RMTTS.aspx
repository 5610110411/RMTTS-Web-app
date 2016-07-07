<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RMTTS.aspx.cs" Inherits="RMTTS_2._0.RMTTS" MaintainScrollPositionOnPostback="true" %>

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
		<link rel="stylesheet" href="styles.css">
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
		</style>
	</head>
	<body>
		<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
			<div class="android-header mdl-layout__header mdl-layout__header--waterfall">
				<div class="mdl-layout__header-row">
					<span class="android-title mdl-layout-title">
						<!-- top logo image -->
						<img class="android-logo-image" src="images/logo-scg.png">
					</span>
					<!-- Add spacer, to align navigation to the right in desktop -->
					<div class="android-header-spacer mdl-layout-spacer"></div>
					<div class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
						<label class="mdl-button mdl-js-button mdl-button--icon" for="search-field">
							<i class="material-icons">search</i>
						</label>
						<!-- top bar search -->
						<div class="mdl-textfield__expandable-holder">
							<input class="mdl-textfield__input" type="text" id="search-field">
						</div>
					</div>
					<!-- Navigation -->
					<div class="android-navigation-container">
						<nav class="android-navigation mdl-navigation">
							<a class="mdl-navigation__link" href="RMTTS.aspx">เริ่มต้น</a>
							<a class="mdl-navigation__link" href="pages/transport.aspx">ค้นหาข้อมูล</a>
							<a class="mdl-navigation__link" href="#management">จัดการข้อมูล</a>
							<a class="mdl-navigation__link" href="">สอบถาม</a>
						</nav>
					</div>
					<span class="android-mobile-title mdl-layout-title">
						<img class="android-logo-image" src="images/scg-logo-white.png">
					</span>
					<button class="android-more-button mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect" id="more-button">
						<i class="material-icons">more_vert</i>
					</button>
					<ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right mdl-js-ripple-effect" for="more-button">
						<li class="mdl-menu__item">Log Out</li>
					</ul>
				</div>
			</div>

			<!-- start left bar image-->
			<div class="android-drawer mdl-layout__drawer">
			<span class="mdl-layout-title">
			<!-- left bar image-->
			<img class="android-logo-image" src="images/scg-logo-white.png"> 
			</span>
			<nav class="mdl-navigation">
				<a class="mdl-navigation__link" href="RMTTS.aspx">เริ่มต้น</a>
				<a class="mdl-navigation__link" href="pages/transport.aspx">ค้นหาข้อมูล</a>
				<a class="mdl-navigation__link" href="#management">จัดการข้อมูล</a>
				<a class="mdl-navigation__link" href="">สอบถาม</a>
				<div class="android-drawer-separator"></div>
				<span class="mdl-navigation__link" href="">Developer</span>
				<a class="mdl-navigation__link" href="https://www.facebook.com/Ninepcento">Ninez Manas</a>
				<div class="android-drawer-separator"></div>
				<span class="mdl-navigation__link" href="">Project Adviser</span>
				<a class="mdl-navigation__link" href="">Pattra Shaowkrungkao</a>
			</nav>
			</div>
			<!--end of left bar image-->

			<div class="android-content mdl-layout__content">
				<a name="top page"></a>
				<div class="android-be-together-section mdl-typography--text-center">
					<div class="logo-font android-slogan">Open And Challenge</div>
					<div class="logo-font android-sub-slogan">Welcome to Raw Material Transportation Tracking System</div>
					<div class="logo-font android-create-character">
						<a href="pages/transport.aspx"><img src="images/search.png"> ตรวจสอบการขนส่งวัตถุดิบ</a>
					</div>

					<a href="#management">
						<button class="android-fab mdl-button mdl-button--colored mdl-js-button mdl-button--fab mdl-js-ripple-effect">
							<i class="material-icons">expand_more</i>
						</button>
					</a>
				</div>
			

				<div class="android-more-section" ID = "management">
					<div class="android-section-title mdl-typography--display-1-color-contrast">Management</div>
					<div class="android-card-container mdl-grid">
						<div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
							<div class="mdl-card__media">
								<a href="">
									<img src="images/atlas@2x.png">
								</a>
							</div>
							<div class="mdl-card__title">
								<h4 class="mdl-card__title-text">Station</h4>
							</div>
							<div class="mdl-card__supporting-text">
								<span class="mdl-typography--font-light mdl-typography--subhead">จัดการข้อมูลที่ตั้งแหล่งวัตถุดิบ & สถานีปลายทาง</span>
							</div>
							<div class="mdl-card__actions">
								<a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="">
									More
									<i class="material-icons">chevron_right</i>
								</a>
							</div>
						</div>

						<div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
							<div class="mdl-card__media" >
								<a href="pages/usermanagement.aspx">
									<img src="images/user@2x.png">
								</a>
							</div>
							<div class="mdl-card__title">
								<h4 class="mdl-card__title-text">User</h4>
							</div>
							<div class="mdl-card__supporting-text">
								<span class="mdl-typography--font-light mdl-typography--subhead">จัดการข้อมูลผู้ใช้งานระบบ</span>
							</div>
							<div class="mdl-card__actions">
								<a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="pages/usermanagement.aspx">
								More
									<i class="material-icons">chevron_right</i>
								</a>
							</div>
						</div>

						<div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
							<div class="mdl-card__media">
								<a href="">
									<img src="images/truck@2x.png">
								</a>
							</div>
							<div class="mdl-card__title">
								<h4 class="mdl-card__title-text">Vehicle</h4>
							</div>
							<div class="mdl-card__supporting-text">
								<span class="mdl-typography--font-light mdl-typography--subhead">จัดการข้อมูลรถ</span>
							</div>
							<div class="mdl-card__actions">
								<a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="pages/carmanagement.aspx">
									More
									<i class="material-icons">chevron_right</i>
								</a>
							</div>
						</div>

						<div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
							<div class="mdl-card__media">
								<a href="pages/usermanagement.aspx">
									<img src="images/bag@2x.png">
								</a>
							</div>
							<div class="mdl-card__title">
								<h4 class="mdl-card__title-text">Material</h4>
							</div>
							<div class="mdl-card__supporting-text">
								<span class="mdl-typography--font-light mdl-typography--subhead">จัดการข้อมูลวัตถุดิบที่ขนส่ง</span>
							</div>
								div class="mdl-card__actions">
							<a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="">
								More
								<i class="material-icons">chevron_right</i>
							</a>
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
		<script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
	</body>
</html>
