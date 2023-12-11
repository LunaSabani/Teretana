<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DodajTrenera.aspx.cs" Inherits="WebApplication6.DodajTrenera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Ime;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        Prezime:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        Kontakt:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        Pol:<asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        Teretana:<asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
    </p>
    <asp:Button ID="Button1" runat="server" BackColor="#FF99CC" Text="Unesi" />
    <br />
</asp:Content>
