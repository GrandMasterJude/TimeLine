<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        &nbsp;</h2>
    <h3>A page about each individual.</h3>
    <p><asp:SqlDataSource ID="sqlPerson" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Person.Picture, Person.Name, Person.DOB, Person.DOD, Style.Style FROM Person INNER JOIN Style ON Person.Id = Style.Id WHERE Person.Id = @CurrentPerson">
        <SelectParameters>
            <asp:QueryStringParameter Name="CurrentPerson" QueryStringField="id" />
        </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlTeachers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Person.Name, Person.Id FROM Person INNER JOIN Taught ON Person.Id = Taught.TeacherId WHERE Taught.StudentId = @StudentId">
            <SelectParameters>
                <asp:QueryStringParameter Name="StudentId" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlStudents" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Person.Name, Person.Id FROM Person INNER JOIN Taught ON Person.Id = Taught.StudentId WHERE Taught.TeacherId = @StudentId">
            <SelectParameters>
                <asp:QueryStringParameter Name="StudentId" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:FormView ID="FormView2" runat="server" DataSourceID="sqlPerson" CellPadding="2" CellSpacing="2">
            <EditItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                DOB:
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                <br />
                DOD:
                <asp:TextBox ID="DODTextBox" runat="server" Text='<%# Bind("DOD") %>' />
                <br />
                Style:
                <asp:TextBox ID="StyleTextBox" runat="server" Text='<%# Bind("Style") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                DOB:
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                <br />
                DOD:
                <asp:TextBox ID="DODTextBox" runat="server" Text='<%# Bind("DOD") %>' />
                <br />
                Style:
                <asp:TextBox ID="StyleTextBox" runat="server" Text='<%# Bind("Style") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <strong>
                <asp:Image ID="Image1" runat="server" CssClass="ProfilePic" ImageUrl='<%# Eval("Picture") %>' />
                <br />
                Name:</strong>
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <strong>Birth:</strong>
                <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                <br />
                <strong>Death:</strong>
                <asp:Label ID="DODLabel" runat="server" Text='<%# Bind("DOD") %>' />
                <br />
                <strong>Style:</strong>
                <asp:Label ID="StyleLabel" runat="server" Text='<%# Bind("Style") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Teachers</strong></p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="sqlTeachers" DataKeyField="Id" CellPadding="1">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "/AllUserPages/About.aspx?id={0}") %>' Text='<%# Eval("Name") %>'></asp:HyperLink>
                <br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        <strong>Students</strong></p>
        <asp:DataList ID="DataList2" runat="server" DataSourceID="sqlStudents" DataKeyField="Id" CellPadding="0">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "/AllUserPages/About.aspx?id={0}") %>' Text='<%# Eval("Name") %>'></asp:HyperLink>
                <br />
            </ItemTemplate>
            <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        </asp:DataList>
    </asp:Content>
