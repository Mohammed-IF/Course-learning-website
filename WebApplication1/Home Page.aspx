<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Home Page.aspx.vb" Inherits="WebApplication1.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Welcom to the IS370 Learning and evaluation website</p>
    <p>
        To explore the course content go to
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Browsing Page.aspx">Course content</asp:HyperLink>
    </p>
    <p>
        To take an exam go to
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Evalution Page.aspx">Evaluation Page</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/About.aspx">About us</asp:HyperLink>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
