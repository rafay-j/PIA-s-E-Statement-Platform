<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="login.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #e0eafc, #cfdef3);
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
            <h2>Register</h2>

            <asp:Label runat="server" Text="Designation:" />
            <asp:TextBox ID="txtDesig" runat="server" /><br />

            <asp:Label runat="server" Text="Username:" />
            <asp:TextBox ID="txtUsername" runat="server" /><br />

            <asp:Label runat="server" Text="Password:" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /><br />

            <asp:Button ID="btnRegister" runat="server" CssClass="asp-button" Text="Register" OnClick="btnRegister_Click" /><br />

            <asp:Label ID="lblMessage" runat="server" CssClass="message" /><br />

            <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="WebForm1.aspx" CssClass="message" Text="Already have an account? Login" />
        </div>
    </form>
</body>
</html>

