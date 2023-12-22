<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DodajTrenera.aspx.cs" Inherits="WebApplication6.DodajTrenera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="jumbotron" >
           <p>
       Ime:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
   </p>
   <p>
       Prezime:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
   </p>
   <p>
       Kontakt:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
   </p>
   <p>
       Pol:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
           <asp:ListItem>M</asp:ListItem>
           <asp:ListItem>Z</asp:ListItem>
       </asp:DropDownList>
   </p>
   <p>
       Teretana:&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
       </asp:DropDownList>
   </p>
   <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" Text="Unesi" BorderColor="Black" BorderStyle="Solid" Height="31px" Width="74px" OnClick="Button1_Click" />
   <br />
    </div>
 
</asp:Content>
