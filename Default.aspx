<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Karate_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Search Anything:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server" Height="20px" PlaceHolder ="Search for Anything"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" Width="108px" />
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" Pagesize="15" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlPerson" DataKeyNames="Id" CellPadding="10" OnSorting="GridView1_Sorting">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AllUserPages/About.aspx?id={0}" Text="View Details" InsertVisible="False" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="DOB" HeaderText="Date of Birth" SortExpression="DOB" />
            <asp:BoundField DataField="DOD" HeaderText="Date of Death" SortExpression="DOD"/>
            <asp:BoundField DataField="Style" HeaderText="Style" SortExpression="Style" />
        </Columns>
    </asp:GridView>
    <p>
      
    </p>
    <p>
      
        &nbsp;</p>
    <p>
        
        <asp:SqlDataSource ID="sqlPerson" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="original_{0}" >
            
            
             
        </asp:SqlDataSource>


    </p>
</asp:Content>

