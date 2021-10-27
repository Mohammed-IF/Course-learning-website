<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Evalution Page.aspx.vb" Inherits="WebApplication1.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Welcome to the evalutaion page, there are 5 quizes, Quiz 1 and Quiz 2 are based on static questions, </p>
    <p>
        Quiz 3 and Quiz 4 are based on xml document and Quiz 5 is based on microsoft acess database</p>
    <p>
        &nbsp;</p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Quiz 1.html">Quiz 1</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Quiz 2.html">Quiz 2</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Display xml page.html">Quiz 3</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Display xml page.html">Quiz 4</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Quiz 5.aspx">Quiz 5</asp:HyperLink>
    <br />
    <br />
    go back to the
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Home Page.aspx">Home Page</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
