<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UnosTeretane.aspx.cs" Inherits="WebApplication6.UnosTeretane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Naziv teretane:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        Adresa:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        Broj telefona:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        Grad:<asp:TextBox ID="TextBox4" runat="server" Height="18px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Unesi teretanu" />
    </p>
    <p>
    </p>
</asp:Content>
