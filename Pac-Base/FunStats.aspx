<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FunStats.aspx.cs" Inherits="Pac_Base.FunStats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        #form1 {
            text-align: left;
            font-weight: 700;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <div>
            <div class="auto-style2">
            <span class="auto-style1">Fun Pac-12 Stats</span><br />
            <br />
             </div>
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
        </div>
        <br />
        ALL TEAMS, COACHES, AND COACHES OVERALL WIN PERCENTAGE:<br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="University_Name" HeaderText="University_Name" SortExpression="University_Name" />
                <asp:BoundField DataField="Team_Name" HeaderText="Team_Name" SortExpression="Team_Name" />
                <asp:BoundField DataField="Coach_First_Name" HeaderText="Coach_First_Name" SortExpression="Coach_First_Name" />
                <asp:BoundField DataField="Coach_Last_Name" HeaderText="Coach_Last_Name" SortExpression="Coach_Last_Name" />
                <asp:BoundField DataField="Start_Year" HeaderText="Start_Year" SortExpression="Start_Year" />
                <asp:BoundField DataField="Percentage" DataFormatString="{0:p1}" HeaderText="Percentage" ReadOnly="True" SortExpression="Percentage" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <strong>PLAYERS WITH THE MOST SACKS:<br />
        </strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Tname" HeaderText="Team" SortExpression="Tname" />
                <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
                <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
                <asp:BoundField DataField="sack" HeaderText="Sacks" SortExpression="sack" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT t.Tname, r.Fname, r.Lname, o.sack
FROM TEAM t INNER JOIN ROSTER r on t.Tid = r.Tid
INNER JOIN DEFPLAYER o on r.pid = o.pid
WHERE  5 &lt;  o.sack
ORDER BY o.sack DESC
"></asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select w.University_Name, w.Team_Name, w.Coach_First_Name, w.Coach_Last_Name, w.Start_Year, q.Percentage FROM(SELECT t.Uname University_Name, t.Tname Team_Name, c.FName Coach_First_Name, c.LName Coach_Last_Name, c.SYear Start_Year
FROM TEAM t FULL JOIN COACH c on t.Tid = c.Tid) AS  w LEFT JOIN (SELECT distinct(c.FName) FirstName, c.LName LastName,t.TName TeamName, t.UName University, c.SYear StartYear, 
Round(cast(Wins as decimal(11,2))/(Wins+Losses) * 100, 1)/100  as Percentage
FROM COACH c, TEAM t WHERE c.SYear &lt;= 2014 and c.TID = t.TID) as q
ON q.TeamName = w.Team_Name Order By q.Percentage DESC"></asp:SqlDataSource>
        <br />
    </form>

</body>
</html>
