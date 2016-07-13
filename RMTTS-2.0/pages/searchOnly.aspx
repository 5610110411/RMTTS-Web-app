<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchOnly.aspx.cs" Inherits="RMTTS_2._0.pages.searchOnly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="tp_id">
            <Columns>
                <asp:BoundField DataField="tp_id" HeaderText="tp_id" ReadOnly="True" SortExpression="tp_id" />
                <asp:BoundField DataField="tp_staff_get" HeaderText="tp_staff_get" SortExpression="tp_staff_get" />
                <asp:BoundField DataField="tp_staff_get_finish" HeaderText="tp_staff_get_finish" SortExpression="tp_staff_get_finish" />
                <asp:BoundField DataField="tp_staff_set" HeaderText="tp_staff_set" SortExpression="tp_staff_set" />
                <asp:BoundField DataField="tp_staff_set_finish" HeaderText="tp_staff_set_finish" SortExpression="tp_staff_set_finish" />
                <asp:BoundField DataField="tp_time_get" HeaderText="tp_time_get" SortExpression="tp_time_get" />
                <asp:BoundField DataField="tp_time_get_finish" HeaderText="tp_time_get_finish" SortExpression="tp_time_get_finish" />
                <asp:BoundField DataField="tp_time_set" HeaderText="tp_time_set" SortExpression="tp_time_set" />
                <asp:BoundField DataField="tp_time_set_finish" HeaderText="tp_time_set_finish" SortExpression="tp_time_set_finish" />
                <asp:BoundField DataField="tp_vehicle" HeaderText="tp_vehicle" SortExpression="tp_vehicle" />
                <asp:BoundField DataField="tp_material" HeaderText="tp_material" SortExpression="tp_material" />
                <asp:BoundField DataField="tp_from" HeaderText="tp_from" SortExpression="tp_from" />
                <asp:BoundField DataField="tp_to" HeaderText="tp_to" SortExpression="tp_to" />
                <asp:BoundField DataField="tp_status" HeaderText="tp_status" SortExpression="tp_status" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RMTTSConnectionString %>" SelectCommand="SELECT * FROM [tb_transports] WHERE ([tp_vehicle] = @tp_vehicle2)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="tp_vehicle2" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>90</asp:ListItem>
            <asp:ListItem>89</asp:ListItem>
            <asp:ListItem>70</asp:ListItem>
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
