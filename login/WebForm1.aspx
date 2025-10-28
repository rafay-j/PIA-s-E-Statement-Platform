<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="login.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #e0eafc, #cfdef3); /* soft blue gradient */
        }

        .login-box {
            background-color: white;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 360px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #333;
            font-weight: 600;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
        }

        .asp-button {
            width: 100%;
            padding: 12px;
            font-size: 15px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .asp-button:hover {
            background-color: #0056b3;
        }

        .message {
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h2>Login</h2>

            <asp:Label ID="Label1" runat="server" Text="Designation:" />
            <asp:TextBox ID="txtdesig" runat="server" /><br />

            <asp:Label ID="lblUsername" runat="server" Text="Username:" />
            <asp:TextBox ID="txtUsername" runat="server" /><br />

            <asp:Label ID="lblPassword" runat="server" Text="Password:" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /><br />

            <asp:Button ID="btnLogin" runat="server" CssClass="asp-button" Text="Login" OnClick="btnLogin_Click" /><br />
            <asp:Label ID="lblMessage" runat="server" CssClass="message" />

            <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="Register.aspx" CssClass="message" Text="Don't have an account? Register here." />

          </div>
    </form>


</body>
</html>




