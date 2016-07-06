﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transport.aspx.cs" Inherits="RMTTS_2._0.pages.transport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8">
		    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		    <meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
		    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
		    <title>RMTTS</title>

		    <!-- Page styles -->
		    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
		    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.min.css">
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
                width: 50%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }

            input[type=text]:focus {
                border: 3px solid #555;
            }
</style>
			
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
						<div class="android-section-title mdl-typography--display-1-color-contrast">ตรวจสอบการขนส่งวัตถุดิบ</div>       
						<div class="android-card-container mdl-grid">
							<!--start cell-->
							<div class="mdl-cell mdl-cell--12-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
								<div class="mdl-card__title">
									<h4 class="mdl-card__title-text">ข้อมูลการขนส่งวัตถุดิบทั้งหมด</h4>
								</div>
								
								<div class="mdl-card__supporting-text">
								<div class="android-frame">
									เลขทะเบียนรถ<br />
									<asp:TextBox ID="txt_tp_vehicle" runat="server"></asp:TextBox>									
									<br />
									<br />
									วัตถุดิบ<br />
									<asp:TextBox ID="txt_tp_material" runat="server"></asp:TextBox>									
									<br />
									<br />
									เดินทางจาก<br />
									<asp:TextBox ID="txt_tp_from" runat="server"></asp:TextBox>									
									<br />
									<br />
									ไปยัง<br />
									<asp:TextBox ID="txt_tp_to" runat="server"></asp:TextBox>
									<br />
									<br />
									วัน/เดือน/ปี<br />
									<asp:TextBox ID="txt_vehicle_type" runat="server"></asp:TextBox>
									
									<br />
									<br />
									
									
									<!--search button-->
									<a class="btn btn-success">ค้นหา</a>
									<br />
									<br />
								</div>

									<asp:SqlDataSource ID="SqlDS_staff" runat="server" ConnectionString="<%$ ConnectionStrings:RMTTSConnectionString %>" SelectCommand="SELECT * FROM tb_staff" DeleteCommand="DELETE FROM [tb_staff] WHERE [staff_id] = @staff_id" InsertCommand="INSERT INTO [tb_staff] ([staff_id], [staff_title], [staff_firstname], [staff_lastname], [staff_tel], [staff_email], [staff_role]) VALUES (@staff_id, @staff_title, @staff_firstname, @staff_lastname, @staff_tel, @staff_email, @staff_role)" UpdateCommand="UPDATE [tb_staff] SET [staff_title] = @staff_title, [staff_firstname] = @staff_firstname, [staff_lastname] = @staff_lastname, [staff_tel] = @staff_tel, [staff_email] = @staff_email, [staff_role] = @staff_role WHERE [staff_id] = @staff_id">
										<DeleteParameters>
											<asp:Parameter Name="staff_id" />
										</DeleteParameters>
										<InsertParameters>
											<asp:Parameter Name="staff_id" />
											<asp:Parameter Name="staff_title" />
											<asp:Parameter Name="staff_firstname" />
											<asp:Parameter Name="staff_lastname" />
											<asp:Parameter Name="staff_tel" />
											<asp:Parameter Name="staff_email" />
											<asp:Parameter Name="staff_role" />
										</InsertParameters>
										<UpdateParameters>
											<asp:Parameter Name="staff_title" />
											<asp:Parameter Name="staff_firstname" />
											<asp:Parameter Name="staff_lastname" />
											<asp:Parameter Name="staff_tel" />
											<asp:Parameter Name="staff_email" />
											<asp:Parameter Name="staff_role" />
											<asp:Parameter Name="staff_id" />
										</UpdateParameters>
									</asp:SqlDataSource>
									<div style=" overflow:scroll;">
										<!--Cellpadding==ช่องว่างระหว่างบรรทัด -->
										<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="staff_id" DataSourceID="SqlDS_staff" ForeColor="#333333" GridLines="None" Width="900px">
												<AlternatingRowStyle BackColor="White" />
												<Columns>
													<asp:BoundField DataField="staff_id" HeaderText="รหัส" ReadOnly="False" SortExpression="staff_id"/>
													<asp:BoundField DataField="staff_title" HeaderText="คำนำหน้า" SortExpression="staff_title"/>
													<asp:BoundField DataField="staff_firstname" HeaderText="ชื่อ" SortExpression="staff_firstname"/>
													<asp:BoundField DataField="staff_lastname" HeaderText="นามสกุล" SortExpression="staff_lastname"/>
													<asp:BoundField DataField="staff_tel" HeaderText="เบอร์โทร" SortExpression="staff_tel"/>
													<asp:BoundField DataField="staff_email" HeaderText="E-mail" SortExpression="staff_email" />
													<asp:BoundField DataField="staff_role" HeaderText="Role" SortExpression="staff_role" />
													<asp:TemplateField HeaderText="แก้ไข">
												<EditItemTemplate>
													<asp:Button class="btn btn-success" ID="ButtonUpdate" runat="server" CommandName="Update"  Text="Update" />
													<asp:Button class="btn btn-danger" ID="ButtonCancel" runat="server" CommandName="Cancel"  Text="Cancel" />
												</EditItemTemplate>
												<ItemTemplate>
													<asp:Button class="btn btn-success" ID="ButtonEdit" runat="server" CommandName="Edit"  Text="Edit" width="62" height="37"/>
													<asp:Button class="btn btn-danger" ID="ButtonDelete" runat="server" CommandName="Delete"  Text="Delete" width="62" height="37"/>	
												</ItemTemplate>
											</asp:TemplateField>

											  </Columns>
											  <EditRowStyle BackColor="#2461BF" />
											  <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
											  <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
											  <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
											  <RowStyle BackColor="#EFF3FB" />
											  <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
											  <SortedAscendingCellStyle BackColor="#F5F7FB" />
											  <SortedAscendingHeaderStyle BackColor="#6D95E1" />
											  <SortedDescendingCellStyle BackColor="#E9EBEF" />
											  <SortedDescendingHeaderStyle BackColor="#4870BE" />
										</asp:GridView>
									</div>
									<a class="android-link mdl-button mdl-js-button" href="">Print report</a>
									
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

