<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication6._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" >
        <h1>Prikaz teretana</h1>
     

        <br />
          <br />
          &nbsp; Teretane&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#FFCCFF" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" BackColor="#FFCCFF" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
          <br />
          <br />
        <asp:Button ID="Button1" runat="server" Text="PRIKAZI" BackColor="#FFCCFF" BorderColor="Black" BorderStyle="Solid" OnClick="Button1_Click" />
        <br />
          <br />
          <br />
        <asp:GridView ID="GridView1" runat="server" Width="605px" BackColor="#FFCCFF" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" Height="204px">
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
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TeretanaConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Teretana] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
     
    </div>

</asp:Content>
