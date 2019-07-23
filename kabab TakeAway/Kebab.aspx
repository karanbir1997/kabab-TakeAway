<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kebab.aspx.cs" Inherits="kabab_TakeAway.Kebab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Names="Gabriola" Font-Size="XX-Large" Text="Kebab Takeaway"></asp:Label>
        </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <div>
            <asp:Label ID="Label2" runat="server" Font-Names="Gabriola" Font-Size="XX-Large" Text="Menu"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <div>
            <asp:Label ID="Label3" runat="server" Font-Names="Gabriola" Font-Size="XX-Large" Text="Drinks"></asp:Label>
        </div>
        <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Gabriola" Font-Size="XX-Large" Text="Add Order"></asp:Label>
        <br />
        <asp:Label runat="server" Font-Names="Gabriola" Font-Size="Large" Text="ID"></asp:Label>
        <asp:TextBox ID="Textid" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="Gabriola" Font-Size="Large" Text="Name"></asp:Label>
        <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Font-Names="Gabriola" Font-Size="Large" Text="Mobile"></asp:Label>
        <asp:TextBox ID="TextMobile" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Font-Names="Gabriola" Font-Size="Large" Text="Orders"></asp:Label>
        <asp:TextBox ID="TextOrder" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Font-Names="Gabriola" Font-Size="Large" Text="Drinks"></asp:Label>
        <asp:TextBox ID="Textdrinks" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="KebebAdd" runat="server" OnClick="KebebAdd_Click" style="height: 26px" Text="Add" />
&nbsp;&nbsp;
        <asp:Button ID="Kebabdelete" runat="server" OnClick="Kebabdelete_Click" Text="Delete" />
&nbsp;
        <asp:Button ID="Kebabupdate" runat="server" OnClick="Button3_Click" Text="Update" />
    </form>
</body>
</html>
