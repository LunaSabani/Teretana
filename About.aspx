<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication6.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     

    <div class="jumbotron" >
           <h1>Dodavanje clana</h1>
           <p>&nbsp;</p>
<p>Ime:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p>Prezime:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p>Kontakt:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p>Datum rodjenja: <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</p>
<p>Pol<asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem>M</asp:ListItem>
    <asp:ListItem>Z</asp:ListItem>
    </asp:DropDownList>
</p>
<p>Teretana:<asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
</p>
<p>Trener:<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
    </asp:DropDownList>
</p>
<p>
    <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Double" Text="Unesi" OnClick="Button1_Click" />
</p>
    </div>
    
    </asp:Content>
