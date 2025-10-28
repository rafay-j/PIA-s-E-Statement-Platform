<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eStatement.aspx.cs" Inherits="login.eStatement" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>PIA Awards +Plus eStatement</title>
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&display=swap" rel="stylesheet">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Lato', sans-serif;
    }
    body {
      border: 4px double black;
      background: #f9f9f9;
      padding: 0px;
    }
    header {
      margin-bottom: 20px;
    }
    .full-width-logo {
      width: 100%;
      height: auto;
      display: block;
    }
    .statement-title {
      font-size: 22px;
      color: #ff0000;
      margin-bottom: 20px;
      text-align: center;
    }
    .box1, .box2 {
      background: #fff;
      padding: 20px;
      margin-bottom: 30px;
      display: flex;
      gap: 30px;
    }
    .box1 {
      border-top: 2px solid black;
      border-bottom: 2px solid black;
    }
    .left {
      flex: 2;
    }
    .right {
      flex: 1;
      height: auto;
    }
    h3 {
      margin-bottom: 10px;
      color: #A67C00;
      font-size: 16px;
    }
    p, ul {
      margin-bottom: 10px;
      line-height: 1.5;
      color: #333;
    }
    ul{
      padding-left: 20px;
    }
    ul li {
      margin-bottom: 5px;
    }
    .member-name {
      font-weight: bold;
      font-size: 18px;
      margin-bottom: 10px;
    }
    .slogan {
      color: #444;
      font-style: italic;
      margin-bottom: 20px;
    }
    .tier-level {
      color: #A67C00;
      font-weight: bold;
    }
    .banners img {
      width: 500px;
      height: 140px;
     border-radius: 8px;
      /*box-shadow: 0 2px 5px rgba(0,0,0,0.1);*/
      margin-bottom: 10px;
    }
    .banners_1 {
      position: relative;
      width: 100%;
      text-align: center;
      margin-bottom: 30px;
    }
    .banners_1::before {
      content: "";
      position: absolute;
      top: 25px; 
      left: 0;
      width: 100%;
      height: 0;
      border-top: 2px solid black;
      z-index: 1;
    }
    .banner-label {
      font-size: 8px;
      color: darkgray;
      margin-bottom: 3px;
      position: relative;
      z-index: 2;
      background: white;
      display: inline-block;
      padding: 3px;
      font-weight: lighter;
    }
    .banners_1 img {
      width: 500px;
      height: 140px;
      margin-top: 10px; 
      object-fit: cover;
      border-radius: 8px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .add{
        color: lightgray;
        font-size: 14px;
    }
  </style>
</head>

<body>
  <form id="form1" runat="server">
    <div class="outer">
      <div class="outline">
        <header>
          <asp:Image ID="imgLogo" runat="server" CssClass="full-width-logo" ImageUrl="~/PIA/logo.png" />
        </header>
        <h2 class="statement-title">e-Statement, 2nd Quarter 2025</h2>

        <!-- Box 1 -->
        <div class="box1">
          <div class="left">
            <h3>Account Summary</h3>
            <p><strong><asp:Label ID = "add" runat="server" Text ="As of" CssClass ="add"></asp:Label></strong> <strong><asp:Label ID="txtdissue" runat="server" CssClass ="add"></asp:Label></strong> &nbsp;&nbsp; Membership No: <strong><asp:Label ID="lblMembership" runat="server" ></asp:Label> </strong></p>
            
              <p><strong>Name: </strong><asp:Label ID="lblMemberName" runat="server" CssClass="member-name" /></p>
            <asp:Label ID="lblSlogan" runat="server" CssClass="slogan" />
          </div>
          <div class="right">
            <div class="banners_1">
              <span class="banner-label">Important Alerts/Promotion</span>
              <asp:Image ID="imgBanner1" runat="server" />
            </div>
          </div>
        </div>

        <!-- Box 2 -->
        <div class="box2">
          <div class="left">
            <p><asp:Label ID="lblGreeting" runat="server" /></p>
            <p><asp:Label ID="lblMessage" runat="server" /></p>

            <div class="miles-report">
              <h4>Miles Report as of Jun 30, 2025:</h4>
              <p>Previous Balance: <strong><asp:Label ID="lblPreviousBalance" runat="server" /></strong></p>
              <p>Miles Earned: <strong><asp:Label ID="lblMilesEarned" runat="server" /></strong></p>
              <p>Miles Redeemed: <strong><asp:Label ID="lblMilesRedeemed" runat="server" /></strong></p>
              <p>Current Balance: <strong><asp:Label ID="lblCurrentBalance" runat="server" /></strong></p>
              <p>Expiring Miles: <strong><asp:Label ID="lblExpiringMiles" runat="server" /></strong></p>
            </div>

            <div class="tier">
              <h4>Current Tier Status: <span class="tier-level"><asp:Label ID="lblTierLevel" runat="server" /></span></h4>
              <p>Miles: <strong><asp:Label ID="lblTierMiles" runat="server" /></strong></p>
              <p>Total Trips: <strong><asp:Label ID="lblTierTrips" runat="server" /></strong></p>
            </div>

            <div class="tips">
              <h4>Useful Tips:</h4>
              <asp:Literal ID="litTips" runat="server" />
              <p>Visit <a href="https://www.piac.com.pk/">www.piac.com.pk</a> or call +92-21-111-786-786.</p>
            </div>
          </div>

          <div class="right">
            <div class="banners">
              <asp:Image ID="imgBanner2" runat="server" ImageUrl="~/PIA/banner 2.jpg" />
              <asp:Image ID="imgBanner3" runat="server" ImageUrl="~/PIA/banner 3.jpg" />
              <asp:Image ID="imgBanner4" runat="server" ImageUrl="~/PIA/banner 4.jpg" />
              <asp:Image ID="imgBanner5" runat="server" ImageUrl="~/PIA/banner 5.jpg" />
              <asp:Image ID="imgBanner6" runat="server" ImageUrl="~/PIA/banner 6.jpg" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
</body>
</html>