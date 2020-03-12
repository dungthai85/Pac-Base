<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Pac_Base.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <meta charset="utf-8" />
            <span id="docs-internal-guid-1e219d54-7fff-743d-1f41-9a6c9c958972" style="border-style: none; border-color: inherit; border-width: medium; display: inline-block; overflow: hidden; width: 362px; height: 353px;">
            <img src="https://lh3.googleusercontent.com/qFCCOqwLDOA5i5gvCjrsx5Ci1AGU0bd53_092j-AJpEyvjlkKeX4_fenltll-1KL2nLC51BJ25-avHUsWFmwQ-svdNCZmGy5RMCUT_dUDc7e_n34776ZE2ZStg1GEd-sPQ" style="margin-left: 0px; margin-top: 0px; height: 349px; width: 349px;" /></span><br />
        </div>
        <p class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/60/603dd42ece5e1152d5dd4dafe54e3f38.png" style="height: 72px; width: 88px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/68/68427a1e81e7e6d9766e73a6e16e8caa.jpeg" style="height: 73px; width: 92px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/af/afd8f968d8885b7c56934fda6c57a1f2.jpeg" style="height: 61px; width: 100px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/a0/a06cf9d8241f94250c15d7d431bc5aa6.png" style="height: 63px; width: 98px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/c2/c2f439d52d3a0ce11e71c6dc3888249d.jpeg" style="height: 61px; width: 91px" />&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/53/5330548f765ba70f142c861d2280d043.png" style="height: 69px; width: 116px" />&nbsp;&nbsp;&nbsp;&nbsp;

        </p>
        <p class="auto-style2">
            &nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Wildcats" Width="95px" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Sun Devils" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="Golden Bears" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button1_Click" Text="Buffaloes" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button1_Click" Text="Ducks" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" OnClick="Button1_Click" Text="Beavers" />

        &nbsp;&nbsp;&nbsp;&nbsp;

        </p>

    <script runat="server">

        void Button1_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            if(b.ID == "Button1")
            {
                Response.Redirect("Wildcats.aspx");
            } else if(b.ID == "Button2")
            {
                Response.Redirect("SunDevils.aspx");
            } else if(b.ID == "Button3")
            {
                Response.Redirect("GoldenBears.aspx");
            } else if(b.ID == "Button4")
            {
                Response.Redirect("Buffaloes.aspx");
            } else if(b.ID == "Button5")
            {
                Response.Redirect("Ducks.aspx");
            } else if(b.ID == "Button6")
            {
                Response.Redirect("Beavers.aspx");
            } else if(b.ID == "Button7")
            {
                Response.Redirect("Cardinals.aspx");
            } else if(b.ID == "Button8")
            {
                Response.Redirect("Bruins.aspx");
            } else if(b.ID == "Button9")
            {
                Response.Redirect("Trojans.aspx");
            } else if(b.ID == "Button10")
            {
                Response.Redirect("Utes.aspx");
            } else if(b.ID == "Button11")
            {
                Response.Redirect("Huskies.aspx");
            } else if(b.ID == "Button12")
            {
                Response.Redirect("Cougars.aspx");
            }
            
            
        }
        </script>
        <p class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/79/793b5618f627ed126194f4079d4dc1d8.jpeg" style="height: 83px; width: 60px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/54/540a7adcf2de8cb8f5f8c8a27fad60f0.png" style="height: 69px; width: 99px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/61/612682169d17f5ad00284f5de0796418.jpeg" style="height: 89px; width: 98px; margin-right: 0px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/c7/c7b771bacffb10f317fdde92d60c9770.png" style="height: 70px; width: 106px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/82/8216bcb7b1527a8df2479918f3ceec51.png" style="height: 63px; width: 88px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="https://www.logolynx.com/images/logolynx/d0/d036582ca348000ad5d20173bfce3cd7.png" style="height: 65px; width: 120px" /></p>
        <p class="auto-style2">
            <asp:Button ID="Button7" runat="server" OnClick="Button1_Click" Text="Cardinals" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button8" runat="server" OnClick="Button1_Click" Text="Bruins" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button9" runat="server" OnClick="Button1_Click" Text="Trojans" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button10" runat="server" OnClick="Button1_Click" Text="Utes" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button11" runat="server" OnClick="Button1_Click" Text="Huskies" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button12" runat="server" OnClick="Button1_Click" Text="Cougars" />

        </p>
        <p class="auto-style2">
            <b id="docs-internal-guid-6b099a37-7fff-277e-250a-3995c767da09" style="font-weight: normal;">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="FunStats.aspx" style="font-size: x-large">Click Here For Fun Stats!</asp:HyperLink>
            </b>

        </p>
        <meta charset="utf-8" />
        <b id="docs-internal-guid-6b099a37-7fff-277e-250a-3995c767da09" style="font-weight: normal;">
        <p class="auto-style2" dir="ltr" style="line-height: 1.38; text-indent: 36pt; margin-top: 0pt; margin-bottom: 0pt;">
            <span class="auto-style3" style="font-family: 'Times New Roman'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre; white-space: pre-wrap; text-align: left;">Welcome to our Pac-12 database.&nbsp; Pac-Base was built in response to requests from fans who support their favorite team from the Pac-12 Conference. We wanted to accomplish many of the capabilities that other sports systems can do. This includes allowing fans to be able to view any information about their favorite team including performances, the matches, the coach of the team, and track players’ statistics. We want to provide the information about their preferred team in the Pac-12 quickly and expertly. Meaning our database is structured efficiently to provide the most positive experience. In addition, using data analysis to provide a winning percentage prediction of the future match depending on the users 
            chosen teams.&nbsp; Pac-base only covers all football teams from the Pac-12 Conference instead of from the NCAA league. Our database stores information about matches, season records, coaches, and players in Pac-12 teams after 2011. On our website, users can select their favorite team and view the information, and use the prediction functionality for the next match.</span></p>
        <p class="auto-style2" dir="ltr" style="line-height:1.38;text-indent: 36pt;margin-top:0pt;margin-bottom:0pt;">
            &nbsp;</p>
        <p class="auto-style2" dir="ltr" style="line-height:1.38;text-indent: 36pt;margin-top:0pt;margin-bottom:0pt;">
            &nbsp;</p>
        </b>
    </form>
    <br class="Apple-interchange-newline" />

    </body>
</html>
