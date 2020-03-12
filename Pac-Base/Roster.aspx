<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Roster.aspx.cs" Inherits="Pac_Base.Roster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            text-align: left;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            font-size: xx-large;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div style="font-weight: 700; font-size: small; text-align: center">
            <span class="auto-style3">Team Roster</span><br />
       
            <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="10px" Orientation="Horizontal" RenderingMode="Table" style="font-size: medium" Width="100%">
                <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#E3EAEB" />
                <DynamicSelectedStyle BackColor="#1C5E55" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/index.aspx" Text="HOME" Value="HOME"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Roster.aspx" Text="TEAM" Value="TEAM">
                        <asp:MenuItem NavigateUrl="~/Wildcats.aspx" Text="Arizona Wildcats" Value="Arizona Wildcats"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/SunDevils.aspx" Text="Arizona State Sun Devils" Value="Arizona State Sun Devils"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/GoldenBears.aspx" Text="California Golden Bears" Value="California Golden Bears"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Buffaloes.aspx" Text="Colorado Buffaloes" Value="Colorado Buffaloes"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Ducks.aspx" Text="Oregon Duck" Value="Oregon Duck"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Beavers.aspx" Text="Oregon State Beavers" Value="Oregon State Beavers"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Cardinals.aspx" Text="Stanford Cardinals" Value="Stanford Cardinals"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Bruins.aspx" Text="UCLA Bruins" Value="UCLA Bruins"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Trojans.aspx" Text="USC Trojans" Value="USC Trojans"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Utes.aspx" Text="Utah Utes" Value="Utah Utes"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Huskies.aspx" Text="Washington Huskies" Value="Washington Huskies"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Cougars.aspx" Text="Washington State Cougars" Value="Washington State Cougars"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Roster.aspx" Text="Roster" Value="Roster"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#1C5E55" />
            </asp:Menu>
       
            <br />
            Select Your Team:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Tname" DataValueField="Tid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TEAM]"></asp:SqlDataSource>
            <div class="auto-style2">
            <br />
            <span class="auto-style1">Offensive Players: </span>
            </div>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" GridLines="None" style="font-size: small" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT r.FName 'First Name', r.LName 'Last Name', r.PNumber 'Player Number', r.Pos 'Position', o.Patt, o.Ratt, o.Cmp, o.Rec, o.PYards, o.RYards, o.TD, o.Inter, o.Lng FROM OFFPLAYER o INNER JOIN ROSTER r ON  o.Pid = r.Pid
INNER JOIN TEAM t ON r.Tid = t.Tid
WHERE r.Tid = @Tid">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Tid" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="auto-style2">
            <br />
            <span class="auto-style1">Defensive Players</span></div>
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="SqlDataSource3" GridLines="None" style="font-size: small" AutoGenerateColumns="False" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                    <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                    <asp:BoundField DataField="Player Number" HeaderText="Player Number" SortExpression="Player Number" />
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                    <asp:BoundField DataField="Solo" HeaderText="Solo" SortExpression="Solo" />
                    <asp:BoundField DataField="Ast" HeaderText="Ast" SortExpression="Ast" />
                    <asp:BoundField DataField="Tfl" HeaderText="Tfl" SortExpression="Tfl" />
                    <asp:BoundField DataField="Tflyds" HeaderText="Tflyds" SortExpression="Tflyds" />
                    <asp:BoundField DataField="Sack" HeaderText="Sack" SortExpression="Sack" />
                    <asp:BoundField DataField="Sackyd" HeaderText="Sackyd" SortExpression="Sackyd" />
                    <asp:BoundField DataField="Inter" HeaderText="Inter" SortExpression="Inter" />
                    <asp:BoundField DataField="Intyds" HeaderText="Intyds" SortExpression="Intyds" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT r.FName 'First Name', r.LName 'Last Name', r.PNumber 'Player Number', r.Pos 'Position', d.Solo, d.Ast, d.Tfl, d.Tflyds, d.Sack, d.Sackyd, d.Inter, d.Intyds FROM DEFPLAYER d INNER JOIN ROSTER r ON  d.Pid = r.Pid
INNER JOIN TEAM t ON r.Tid = t.Tid
WHERE r.Tid = @Tid">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Tid" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
