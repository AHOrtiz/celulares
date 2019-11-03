<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="celulares.aspx.cs" Inherits="tiendita.celulares" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tienda de celulares</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">

        <%--Contenedor de Formulario--%>
        <div class="container">
            <asp:Label ID="Label1" runat="server" Text="Marca" ></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListMarca" runat="server" CssClass="form-control">
                <asp:ListItem>Iphone</asp:ListItem>
                <asp:ListItem>Motorola</asp:ListItem>
                <asp:ListItem>LG</asp:ListItem>
                <asp:ListItem>Samsung</asp:ListItem>
                <asp:ListItem>Nokia</asp:ListItem>
                <asp:ListItem>HTC</asp:ListItem>
                <asp:ListItem>Xiaomi</asp:ListItem>
                <asp:ListItem>Sony</asp:ListItem>
                <asp:ListItem>Huawei</asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <asp:Label ID="Label3" runat="server" Text="Temporada"></asp:Label>
              &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownTemporada" runat="server" CssClass="form-control">
                <asp:ListItem>Ninguno</asp:ListItem>
                <asp:ListItem>Buen fin</asp:ListItem>
               
                <asp:ListItem>Navidad</asp:ListItem>
               
            </asp:DropDownList>
            
            
            <br />
            Precio<asp:TextBox ID="TxtPrecio" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            
            Cantidad<asp:TextBox ID="TxtCantidad" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            
            &nbsp;
                        
            <br />
            <br />

        <asp:Button ID="BtnCalcular" runat="server"  class="btn btn-success" Text="Total" OnClick="BtnCalcular_Click" />
        </div>
        <%--FIN Contenedor de Formulario--%>


    </form>

</body>
</html>
