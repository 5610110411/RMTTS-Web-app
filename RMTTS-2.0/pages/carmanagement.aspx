<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carmanagement.aspx.cs" Inherits="RMTTS_2._0.pages.carmanagement" %>

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
					<button class="android-more-button mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect" id="more-button">
						<i class="material-icons">more_vert</i>
					</button>
					<ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right mdl-js-ripple-effect" for="more-button">
						<li class="mdl-menu__item">5.0 Lollipop</li>
						<li class="mdl-menu__item">4.4 KitKat</li>
						<li disabled class="mdl-menu__item">4.3 Jelly Bean</li>
						<li class="mdl-menu__item">Android History</li>
					</ul>
				</div>
			</div>
			<!--content section -->
			<div class="android-content mdl-layout__content">
				<a name="top page"></a>
				<div class="android-more-section">
					<div class="android-section-title mdl-typography--display-1-color-contrast">จัดการข้อมูลรถ</div>       
					<div class="android-card-container mdl-grid">
						<!--start cell-->
						<div class="mdl-cell mdl-cell--12-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
							<div class="mdl-card__title">
								<h4 class="mdl-card__title-text">ข้อมูลพาหนะทั้งหมด</h4>
							</div>
							
							<div class="mdl-card__supporting-text">
								

								<asp:SqlDataSource ID="SqlDS_vieicles" runat="server" ConnectionString="<%$ ConnectionStrings:RMTTSConnectionString %>" SelectCommand="SELECT * FROM tb_vehicles" DeleteCommand="DELETE FROM [tb_vehicles] WHERE [vehicle_id] = @vehicle_id" InsertCommand="INSERT INTO [tb_vehicles] ([vehicle_id], [vehicle_type], [vehicle_legalweigh], [vehicle_number]) VALUES (@staff_id, @vehicle_id, @vehicle_type, @vehicle_legalweigh, @vehicle_number)" UpdateCommand="UPDATE [tb_vehicles] SET [vehicle_type] = @vehicle_type, [vehicle_legalweigh] = @vehicle_legalweigh, [vehicle_number] = @vehicle_number">
									<DeleteParameters>
										<asp:Parameter Name="vehicle_id" />
									</DeleteParameters>
									<InsertParameters>
										<asp:Parameter Name="vehicle_id" />
										<asp:Parameter Name="vehicle_type" />
										<asp:Parameter Name="vehicle_legalweigh" />
										<asp:Parameter Name="vehicle_number" />
									</InsertParameters>
									<UpdateParameters>
										<asp:Parameter Name="vehicle_id" />
										<asp:Parameter Name="vehicle_type" />
										<asp:Parameter Name="vehicle_legalweigh" />
										<asp:Parameter Name="vehicle_number" />
									</UpdateParameters>
								</asp:SqlDataSource>
								<div style=" overflow:scroll;">
									<!--Cellpadding==ช่องว่างระหว่างบรรทัด -->
									<asp:GridView ID="GridView_car" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="vehicle_id" DataSourceID="SqlDS_vieicles" ForeColor="#333333" GridLines="None" Width="900px">
											<AlternatingRowStyle BackColor="White" />
											<Columns>
												<asp:BoundField DataField="vehicle_id" HeaderText="เลขทะเบียนรถ" ReadOnly="False" SortExpression="vehicle_id"/>
												<asp:BoundField DataField="vehicle_type" HeaderText="ประเภทรถ" SortExpression="vehicle_type"/>
												<asp:BoundField DataField="vehicle_legalweigh" HeaderText="น้ำหนักทางหลวง" SortExpression="vehicle_legalweigh"/>
												<asp:BoundField DataField="vehicle_number" HeaderText="เลขข้างรถ" SortExpression="vehicle_number"/>
												<asp:TemplateField HeaderText="แก้ไข">
											<EditItemTemplate>
												<asp:Button class="btn btn-success" ID="ButtonUpdate" runat="server" CommandName="Update"  Text="Update"  />
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

								<!--add new user-->
								<div class="mdl-card__actions">
									<a class="android-link mdl-button mdl-js-button" href="addcar.aspx">เพิ่มข้อมูล</a>
								</div>
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
