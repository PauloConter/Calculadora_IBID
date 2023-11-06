<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Calculadora._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Calculadora
    </title>
</head>
<body>
    <form id="form1" runat="server">
            <h2>CALCULADORA</h2>
            <div>
                <label for="txtNumero1" aria-atomic="True">1° Número:</label>
                <asp:TextBox ID="txtNumero1" runat="server" Width="44px"></asp:TextBox>
                <br />

                <label for="txtNumero2" aria-atomic="True">2° Número:</label>
                <asp:TextBox ID="txtNumero2" runat="server" Width="44px"></asp:TextBox>
                <br />

                <label for="ddlOperacao">Operação:</label>
                <asp:DropDownList ID="ddlOperacao" runat="server">
                    <asp:ListItem Text="Somar" Value="soma" />
                    <asp:ListItem Text="Subtrair" Value="subtracao" />
                    <asp:ListItem Text="Multiplicar" Value="multiplicacao" />
                    <asp:ListItem Text="Dividir" Value="divisao" />
                </asp:DropDownList>
                <br />

                <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" BackColor="#009933" ForeColor="White" />
            </div>
            <br />
            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
