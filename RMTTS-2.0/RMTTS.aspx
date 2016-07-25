<!doctype html>
<!--
  Material Design Lite
  Copyright 2015 Google Inc. All rights reserved.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License
-->

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>RMTS</title>

    <!-- Page styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.min.css">
    <link rel="stylesheet" href="styles.css">
    <style>
    
	
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
				
				<!-- Navigation -->
				<div class="android-navigation-container">
					<nav class="android-navigation mdl-navigation">
						<a class="mdl-navigation__link" href="RMTTS.aspx">เริ่มต้น</a>
						<a class="mdl-navigation__link" href="pages/transport.aspx">ค้นหาข้อมูล</a>
                        <a class="mdl-navigation__link" href="pages/usermanagement.aspx">จัดการข้อมูลบุคคล</a>
					    <a class="mdl-navigation__link" href="pages/carmanagement.aspx">จัดการข้อมูลรถ</a>
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
        <a name="top"></a>
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
                <!--จัดการรายชื่อสถานี
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
                -->

				<div class="mdl-cell mdl-cell--2-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp" style="margin-left: 450px;">
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

				<div class="mdl-cell mdl-cell--2-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
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
                <!--วัตถุดิบ
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
					<div class="mdl-card__actions">
						<a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="">
							More
							<i class="material-icons">chevron_right</i>
						</a>
					</div>
				</div> -->

			</div>
		</div>
		
		<div class="android-wear-section">
          
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
        </footer>
      </div>
    </div>
    <script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
  </body>
</html>
