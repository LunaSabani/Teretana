<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UnosTeretane.aspx.cs" Inherits="WebApplication6.UnosTeretane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" ><p>
        &nbsp;</p>
        <h1>Dodavanje teretane</h1>
        <p>&nbsp;</p>
        <p>
    Naziv teretane&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p>
    Adresa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p>
    Broj telefona&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p>
    Grad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Height="28px"></asp:TextBox>
    <br />
</p>
        <p>
            &nbsp;</p>
        <p>
    <asp:Button ID="Button1" runat="server" Text="Unesi teretanu" BackColor="#FFCCFF" BorderColor="Black" BorderStyle="Solid" OnClick="Button1_Click" />
</p></div>
    
   
</asp:Content>
