<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication6.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div > 
        <h1>Kontakt</h1>
        <p>&nbsp;</p>
     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Naziv" DataValueField="Naziv">
     </asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TeretanaConnectionString %>" SelectCommand="SELECT DISTINCT [Naziv] FROM [Teretana]"></asp:SqlDataSource>

 <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" Text="Prikazi kontakt" BorderColor="White" BorderStyle="Double" OnClick="Button1_Click" />
 <p>
     <asp:Label ID="Label1" runat="server"></asp:Label>
 </p></div>
   
    </asp:Content>
