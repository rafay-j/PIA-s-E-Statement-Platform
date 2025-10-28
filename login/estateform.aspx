<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="estateform.aspx.cs" Inherits="login.estatefomr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID ="textd" runat = "server" text ="Enter Date"></asp:Label>
        <asp:TextBox ID = "txtDate" runat ="server" ></asp:TextBox>
        <br />
        <asp:Label ID="lblFile1" runat="server" Text="File 1:" />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Label ID="lblFIle2" runat="server" Text="File 2:" />
        <asp:FileUpload ID="FileUpload2" runat="server" />
        <br />
        <asp:Label ID="Label3" runat="server" Text="File 3:" />
        <asp:FileUpload ID="FileUpload3" runat="server" />
        <br />
        <asp:Label ID="Label4" runat="server" Text="File 4:" />
        <asp:FileUpload ID="FileUpload4" runat="server" />
        <br />
        <asp:Label ID="Label5" runat="server" Text="File 5:" />
        <asp:FileUpload ID="FileUpload5" runat="server" />
        <br />
        <asp:Label ID="Label6" runat="server" Text="File 6:" />
        <asp:FileUpload ID="FileUpload6" runat="server" />
        <br /> 
         
        <asp:Button ID = "btnupload"  runat="server" Text= "update" OnClick = "btn_upl1"/>
        <br />

        <asp:Button ID="btnSubmit" runat="server" Text="Generate e-Statement" OnClick="btnSubmit_Click"/>



        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        </div>
    </form>
</body>
</html>
