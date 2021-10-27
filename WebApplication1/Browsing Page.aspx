<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Browsing Page.aspx.vb" Inherits="WebApplication1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        search course&#39;s content</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="syllabusName" DataValueField="syllabusName" DataMember="DefaultView">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [syllabusName] FROM [Syllabus]"></asp:SqlDataSource>
    </p>
    <p>
        To get the files go to
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Syllabus.html">Syllabus</asp:HyperLink>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="chapterName" DataValueField="chapterName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [chapterNumber], [chapterName] FROM [Slides]"></asp:SqlDataSource>
    </p>
    <p>
        To get the files go to
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Lectures.html">Lectures</asp:HyperLink>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="tutorialName" DataValueField="tutorialName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [tutorialName] FROM [Tutorial]"></asp:SqlDataSource>
    </p>
    <p>
        To get the files go to
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Tutorials.html">Tutorials</asp:HyperLink>
    </p>
    <p>
        <asp:DropDownList  ID="DropDownList4" runat="server"  AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="examName" DataValueField="examName" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [examName] FROM [Exams]"></asp:SqlDataSource>
    </p>
    <p>
        To get the files go to
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Exams.html">Exams</asp:HyperLink>
    </p>

    <p>
        &nbsp;</p>
    <p>
        go back to the
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home Page.aspx">Home Page</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
