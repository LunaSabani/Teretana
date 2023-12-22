<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication6.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div  class="jumbotron" > 
        <h1>Kontakt</h1>
        <p>&nbsp;</p>
     <asp:DropDownList ID="DropDownList1" runat="server">
     </asp:DropDownList>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

 <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" Text="Prikazi kontakt" BorderColor="Black" BorderStyle="Solid" OnClick="Button1_Click" />
        <br />
 <p>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FFCCFF" BorderColor="#FF99FF" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="260px">
         <Columns>
             <asp:BoundField DataField="broj_telefona" HeaderText="Kontakt" />
         </Columns>
         <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
         <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
         <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F7F7F7" />
         <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
         <SortedDescendingCellStyle BackColor="#E5E5E5" />
         <SortedDescendingHeaderStyle BackColor="#242121" />
     </asp:GridView>
 </p></div>
   
    </asp:Content>
