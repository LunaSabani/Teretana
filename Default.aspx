<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication6._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color:fuchsia">
     

        <br />
          <br />
          <br />
        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#FFCCFF">
        </asp:DropDownList>
        <br />
          <br />
          <br />
        <asp:Button ID="Button1" runat="server" Text="PRIKAZI" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Double" OnClick="Button1_Click" />
        <br />
          <br />
          <br />
        <asp:GridView ID="GridView1" runat="server" Width="46px" BackColor="#FFCCFF" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
     
    </div>

</asp:Content>
