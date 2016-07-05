<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transport.aspx.cs" Inherits="RMTTS_2._0.pages.transport" %>
@{
var db = Database.Open("RMTTS"); 
var query = "SELECT * FROM tb_transport"; 
}
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RMTTS</title>
</head>
<body>
    <form id="form1" runat="server">
        <table border="1" width="100%"> 
			<tr>
			<th>Id</th> 
			<th>ชื่อ</th> 
			</tr>
			@foreach(var row in db.Query(query))
			{
			<tr> 
			<td>@row.material_id</td> 
			<td>@row.material_name</td> 
			<td>@row.Description</td> 
			<td style="text-align:right">@row.Price</td> 
			</tr> 
			}
		</table> 
    </form>
</body>
</html>
