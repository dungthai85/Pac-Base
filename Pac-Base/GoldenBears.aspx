<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoldenBears.aspx.cs" Inherits="Pac_Base.GoldenBears" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body>
    <p style="text-align: center">
        <span class="auto-style1">University of California, Berkeley Golden Bears</span></p>
    <p style="text-align: center">
        <img src="https://www.logolynx.com/images/logolynx/af/afd8f968d8885b7c56934fda6c57a1f2.jpeg" style="height: 250px; width: 290px" /><br />
    </p>
    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
            string item = Request.QueryString["Team"]; 
        }
    </script>
    
    <form id="form1" runat="server">
        <div style="text-align: left">
            <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px" Orientation="Horizontal" RenderingMode="Table" style="font-size: medium" Width="100%">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/index.aspx" Text="HOME" Value="HOME"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/GoldenBears.aspx" Text="TEAM" Value="TEAM">
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
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
            <br />
            <strong><span class="auto-style2">Please select a season:</span></strong>&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SYear" DataValueField="SYear">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SEASONREC] WHERE ([Tid] = @Tid)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="Tid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="WINS" HeaderText="Wins" SortExpression="WINS" />
                    <asp:BoundField DataField="LOSSES" HeaderText="Losses" SortExpression="LOSSES" />
                    <asp:BoundField DataField="CWINS" HeaderText="Conference Wins" SortExpression="CWINS" />
                     <asp:BoundField DataField="CLOSSES" HeaderText="Conference Losses" SortExpression="CLOSSES" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [WINS],  [LOSSES], [CWINS], [CLOSSES] FROM [SEASONREC] WHERE (([SYear] = @SYear) AND ([Tid] = @Tid))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="SYear" PropertyName="SelectedValue" Type="Int32" />
                    <asp:Parameter DefaultValue="2" Name="Tid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        <strong><span class="auto-style2">COACH</span></strong><br />
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource6" Height="50px" Width="125px">
                    <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Minit" HeaderText="Middle Init" SortExpression="Minit" />
                        <asp:BoundField DataField="LName" HeaderText="Last Name" SortExpression="LName" />
                        <asp:BoundField DataField="Wins" HeaderText="Wins" SortExpression="Wins" />
                        <asp:BoundField DataField="Losses" HeaderText="Losses" SortExpression="Losses" />
                        <asp:BoundField DataField="SYear" HeaderText="Start Year" SortExpression="SYear" />
                    </Fields>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                </asp:DetailsView>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Minit], [LName], [Wins], [Losses], [SYear] FROM [COACH] WHERE ([Tid] = @Tid)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="Tid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            <p class="auto-style2">
                               <strong>HOME MATCHES</strong></p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource3" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="Away" HeaderText="Opponent" SortExpression="Away" />
                    <asp:BoundField DataField="HomeScore" HeaderText="Home Score" SortExpression="HomeScore" />
                    <asp:BoundField DataField="AwayScore" HeaderText="Opponent Score" SortExpression="AwayScore" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                 
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                    <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Date" SortExpression="Date" />
                 
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT a.TName Away, m.HScore HomeScore, m.AScore AwayScore, c.FName FirstName, c.LName LastName, m.MDate Date
FROM TEAM h INNER JOIN MATCH m ON h.Tid = m.Hid
INNER JOIN Team a ON m.Aid = a.Tid
INNER JOIN COACH c ON c.Tid = m.Aid
WHERE (m.Hid = @Hid) AND YEAR(m.MDate) = @SYear
">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="Hid" Type="Int32" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="SYear" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
            <p class="auto-style2">
                <strong>AWAY MATCHES</strong></p>
        <p>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource7" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="Away" HeaderText="Opponent" SortExpression="Away" />
                    <asp:BoundField DataField="HomeScore" HeaderText="Opponent Score" SortExpression="HomeScore" />
                    <asp:BoundField DataField="AwayScore" HeaderText="Home Score" SortExpression="AwayScore" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                 
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                    <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Date" SortExpression="Date" />
                 
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT h.TName Away, m.HScore HomeScore, m.AScore AwayScore, c.FName FirstName, c.LName LastName, m.MDate Date
FROM TEAM h INNER JOIN MATCH m ON h.Tid = m.Hid
INNER JOIN Team a ON m.Aid = a.Tid
INNER JOIN COACH c ON c.Tid = m.Hid
WHERE (m.Aid = @Hid) AND YEAR(m.MDate) = @SYear
">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="Hid" Type="Int32" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="SYear" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
