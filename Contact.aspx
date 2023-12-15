<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication6.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div  class="jumbotron" > 
        <h1>Kontakt</h1>
        <p>&nbsp;</p>
     <asp:DropDownList ID="DropDownList1" runat="server">
     </asp:DropDownList>

 <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" Text="Prikazi kontakt" BorderColor="Black" BorderStyle="Solid" OnClick="Button1_Click" />
 <p>
     <asp:Label ID="Label1" runat="server"></asp:Label>
 </p></div>
   
    </asp:Content>
