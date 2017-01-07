<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Timeline</h2>
    <%--<div id="chart_div"></div>--%>
    <address>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" Pagesize="20" AllowSorting="True" AutoGenerateColumns="False" Height="500" Width="400" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Teacher" SortExpression="Name" />
                <asp:BoundField DataField="Expr1" HeaderText="Student" SortExpression="Expr1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Person.Name, Person_1.Name AS Expr1 FROM Person INNER JOIN Taught ON Person.Id = Taught.TeacherId INNER JOIN Person AS Person_1 ON Taught.StudentId = Person_1.Id"></asp:SqlDataSource>
    </address>
    <div id="example2.2" style="height: 1000px;"></div>

</asp:Content>
