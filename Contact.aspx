<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication6.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </h2>
    <asp:Button ID="Button1" runat="server" BackColor="#FF66CC" Text="Prikazi kontakt" />
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    </asp:Content>
