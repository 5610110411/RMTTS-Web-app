<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transport.aspx.cs" Inherits="RMTTS_2._0.pages.transport" %>

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
			

		</style>
    </head>
    <body>
			<form id="form1" runat="server" defaultbutton="bt_search">
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
								</nav>
							</div>
							<span class="android-mobile-title mdl-layout-title">
								<img class="android-logo-image" src="../images/scg-logo-white.png">
							</span>
						</div>
					</div>
					<!--content section -->
					<div class="android-content mdl-layout__content" style="overflow:scroll; padding: 5px; <!--top: 609px; left: 6px;-->">
						<a name="top page"></a>
						<div class="android-more-section">
							<div class="android-section-title mdl-typography--display-1-color-contrast">ตรวจสอบการขนส่งวัตถุดิบ</div>       
						
								<!--start cell-->
									<div class="mdl-card__title">
										<h4 class="mdl-card__title-text">กรุณากรอกข้อมูลเพื่อค้นหา</h4>
									</div>
									<div class="android-frame">
										<div>
										    <label>เลขทะเบียนรถ</label>
										    <asp:TextBox ID="txt_tp_vehicle" runat="server" Height="34px" Width="137px"></asp:TextBox>									
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; เดินทางจาก
										    <asp:DropDownList ID="ddl_station_from" runat="server" DataSourceID="SqlDataSource_station" DataTextField="station_name" DataValueField="station_name" Height="34px" Width="130px" AppendDataBoundItems="True">
                                                <asp:ListItem Value="none">--- เลือก ---</asp:ListItem>
                                            </asp:DropDownList>
										    &nbsp;&nbsp;&nbsp;
										    ไปยัง
										    <asp:DropDownList ID="ddl_station_to" runat="server" DataSourceID="SqlDataSource_station" DataTextField="station_name" DataValueField="station_name" Height="34px" Width="130px" AppendDataBoundItems="True">
                                                <asp:ListItem Value="none">--- เลือก ---</asp:ListItem>
                                            </asp:DropDownList>
                                            &nbsp;<br />
										</div>
										
										<div style="height: 68px">
                                            <label>
                                            <br />
                                            วัตถุดิบ </label>
                                            <asp:DropDownList ID="ddl_material" runat="server" DataSourceID="SqlDataSource_material" DataTextField="material_name" DataValueField="material_name" Height="34px" Width="100px" AppendDataBoundItems="True">
                                                <asp:ListItem Value="none">--- เลือก ---</asp:ListItem>
                                            </asp:DropDownList>
                                            <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ตั้งแต่</label> 
                                        <asp:DropDownList Class="dropdl" ID="DropDownList_Date0" runat="server" Width="50px" Height="34px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList_Date0_SelectedIndexChanged">
                                            <asp:ListItem Value="none">--</asp:ListItem>
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                            <asp:ListItem Value="5">5</asp:ListItem>
                                            <asp:ListItem Value="6">6</asp:ListItem>
                                            <asp:ListItem Value="7">7</asp:ListItem>
                                            <asp:ListItem Value="8">8</asp:ListItem>
                                            <asp:ListItem Value="9">9</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="11">11</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                            <asp:ListItem Value="13">13</asp:ListItem>
                                            <asp:ListItem Value="14">14</asp:ListItem>
                                            <asp:ListItem Value="15">15</asp:ListItem>
                                            <asp:ListItem Value="16">16</asp:ListItem>
                                            <asp:ListItem Value="17">17</asp:ListItem>
                                            <asp:ListItem Value="18">18</asp:ListItem>
                                            <asp:ListItem Value="19" >19</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                            <asp:ListItem Value="21">21</asp:ListItem>
                                            <asp:ListItem Value="22">22</asp:ListItem>
                                            <asp:ListItem Value="23">23</asp:ListItem>
                                            <asp:ListItem Value="24">24</asp:ListItem>
                                            <asp:ListItem Value="25">25</asp:ListItem>
                                            <asp:ListItem Value="26">26</asp:ListItem>
                                            <asp:ListItem Value="27">27</asp:ListItem>
                                            <asp:ListItem Value="28">28</asp:ListItem>
                                            <asp:ListItem Value="29">29</asp:ListItem>
                                            <asp:ListItem Value="30">30</asp:ListItem>
                                            <asp:ListItem Value="31">31</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DropDownList_Month0" runat="server" Height="34px" Width="80px" AppendDataBoundItems="True">
                                            <asp:ListItem Value="none">--</asp:ListItem>
                                            <asp:ListItem Value="01">มกราคม</asp:ListItem>
                                            <asp:ListItem Value="02">กุมภาพันธ์</asp:ListItem>
                                            <asp:ListItem Value="03">มีนาคม</asp:ListItem>
                                            <asp:ListItem Value="04">เมษายน</asp:ListItem>
                                            <asp:ListItem Value="05">พฤษภาคม</asp:ListItem>
                                            <asp:ListItem Value="06">มิถุนายน</asp:ListItem>
                                            <asp:ListItem Value="07">กรกฎาคม</asp:ListItem>
                                            <asp:ListItem Value="08">สิงหาคม</asp:ListItem>
                                            <asp:ListItem Value="09">กันยายน</asp:ListItem>
                                            <asp:ListItem Value="10">ตุลาคม</asp:ListItem>
                                            <asp:ListItem Value="11">พฤศจิกายน</asp:ListItem>
                                            <asp:ListItem Value="12">ธันวาคม</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="ddl_year_from" runat="server" Width="70px" Height="34px" AppendDataBoundItems="True">
                                            <asp:ListItem Value="none">--</asp:ListItem>
                                        </asp:DropDownList>

&nbsp;&nbsp;&nbsp; ถึง <asp:DropDownList ID="DropDownList_Date" runat="server" Width="50px" Height="34px" AppendDataBoundItems="True">
                                            <asp:ListItem Value="none">--</asp:ListItem>
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                            <asp:ListItem Value="5">5</asp:ListItem>
                                            <asp:ListItem Value="6">6</asp:ListItem>
                                            <asp:ListItem Value="7">7</asp:ListItem>
                                            <asp:ListItem Value="8">8</asp:ListItem>
                                            <asp:ListItem Value="9">9</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="11">11</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                            <asp:ListItem Value="13">13</asp:ListItem>
                                            <asp:ListItem Value="14">14</asp:ListItem>
                                            <asp:ListItem Value="15">15</asp:ListItem>
                                            <asp:ListItem Value="16">16</asp:ListItem>
                                            <asp:ListItem Value="17">17</asp:ListItem>
                                            <asp:ListItem Value="18">18</asp:ListItem>
                                            <asp:ListItem Value="19" >19</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                            <asp:ListItem Value="21">21</asp:ListItem>
                                            <asp:ListItem Value="22">22</asp:ListItem>
                                            <asp:ListItem Value="23">23</asp:ListItem>
                                            <asp:ListItem Value="24">24</asp:ListItem>
                                            <asp:ListItem Value="25">25</asp:ListItem>
                                            <asp:ListItem Value="26">26</asp:ListItem>
                                            <asp:ListItem Value="27">27</asp:ListItem>
                                            <asp:ListItem Value="28">28</asp:ListItem>
                                            <asp:ListItem Value="29">29</asp:ListItem>
                                            <asp:ListItem Value="30">30</asp:ListItem>
                                            <asp:ListItem Value="31">31</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DropDownList_Month" runat="server" Height="34px" Width="80px" AppendDataBoundItems="True">
                                            <asp:ListItem Value="none">--</asp:ListItem>
                                            <asp:ListItem Value="01">มกราคม</asp:ListItem>
                                            <asp:ListItem Value="02">กุมภาพันธ์</asp:ListItem>
                                            <asp:ListItem Value="03">มีนาคม</asp:ListItem>
                                            <asp:ListItem Value="04">เมษายน</asp:ListItem>
                                            <asp:ListItem Value="05">พฤษภาคม</asp:ListItem>
                                            <asp:ListItem Value="06">มิถุนายน</asp:ListItem>
                                            <asp:ListItem Value="07">กรกฎาคม</asp:ListItem>
                                            <asp:ListItem Value="08">สิงหาคม</asp:ListItem>
                                            <asp:ListItem Value="09">กันยายน</asp:ListItem>
                                            <asp:ListItem Value="10">ตุลาคม</asp:ListItem>
                                            <asp:ListItem Value="11">พฤศจิกายน</asp:ListItem>
                                            <asp:ListItem Value="12">ธันวาคม</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="ddl_year_to" runat="server" Width="70px" Height="34px" AppendDataBoundItems="True">
                                            <asp:ListItem Value="none">--</asp:ListItem>
                                        </asp:DropDownList>
                                    
                                     
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; สถานะ <asp:DropDownList ID="ddl_Status" runat="server" DataSourceID="SqlDataSource_status" DataTextField="status_describe" DataValueField="status_describe" Height="34px" Width="147px" AppendDataBoundItems="True">
                                            <asp:ListItem Value="none">--- เลือก ---</asp:ListItem>    
                                        </asp:DropDownList>
&nbsp;<br />
										</div>
										

                                        
                                        <div style="margin-left: 450px; margin-bottom: 10px;">
                
                                            <asp:Button ID="bt_search" class="btn btn-success" runat="server" Text="Search" Height="40px" OnClick="bt_search_Click" />
										</div>
                                        <asp:SqlDataSource ID="SqlDataSource_show" runat="server" ConnectionString="<%$ ConnectionStrings:RMTTSConnectionString %>" OnSelecting="SqlDataSource_show_Selecting" SelectCommand="SELECT tb_transports.tp_vehicle, tb_vehicles.vehicle_number, tb_materials.material_name, tb_transports.tp_time_get, tb_transports.tp_time_get_finish, tb_transports.tp_time_set, tb_transports.tp_time_set_finish, tb_status.status_describe FROM tb_materials INNER JOIN tb_transports ON tb_materials.material_id = tb_transports.tp_material INNER JOIN tb_status ON tb_transports.tp_status = tb_status.status_id INNER JOIN tb_vehicles ON tb_transports.tp_vehicle = tb_vehicles.vehicle_id"></asp:SqlDataSource>
										<asp:SqlDataSource ID="SqlDataSource_station" runat="server" ConnectionString="<%$ ConnectionStrings:RMTTSConnectionString %>" SelectCommand="SELECT [station_name] FROM [tb_stations]"></asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource_material" runat="server" ConnectionString="<%$ ConnectionStrings:RMTTSConnectionString %>" SelectCommand="SELECT [material_name] FROM [tb_materials]"></asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource_status" runat="server" ConnectionString="<%$ ConnectionStrings:RMTTSConnectionString %>" SelectCommand="SELECT [status_describe] FROM [tb_status]"></asp:SqlDataSource>
										<asp:GridView runat="server" CellPadding="15" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource_show" >
											<Columns>
                                                <asp:BoundField DataField="tp_vehicle" HeaderText="ทะเบียนรถ" SortExpression="tp_vehicle" />
                                                <asp:BoundField DataField="vehicle_number" HeaderText="เลขข้างรถ" SortExpression="vehicle_number" />
                                                <asp:BoundField DataField="material_name" HeaderText="วัตถุดิบ" SortExpression="material_name" />
												<asp:BoundField DataField="tp_time_get" HeaderText="รับวัตถุดิบจากแหล่ง" />
                                                <asp:BoundField DataField="tp_time_get_finish" HeaderText="รับวัตถุดิบเสร็จสิ้น" />
                                                <asp:BoundField DataField="tp_time_set" HeaderText="ส่งวัตถุดิบเข้า" SortExpression="tp_time_set" />
                                                <asp:BoundField DataField="tp_time_set_finish" HeaderText="เทวัตถุดิบเสร็จสิ้น" SortExpression="tp_time_set_finish" />
                                                <asp:BoundField DataField="status_describe" HeaderText="สถานะล่าสุด" SortExpression="status_describe" />
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
										<br />
									</div>
						</div>
						<footer class="android-footer mdl-mega-footer">
							<div class="mdl-mega-footer--middle-section">
								<p class="mdl-typography--font-light">Developer: Ninez Manas</p>
								<p class="mdl-typography--font-light">Some features and devices may not be available in all areas</p>
							</div>

							
						</footer>
					</div>
				</div>
				<script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
			</form>
    </body>
</html>