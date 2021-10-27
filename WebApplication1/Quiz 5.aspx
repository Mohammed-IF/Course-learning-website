<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Quiz 5.aspx.vb" Inherits="WebApplication1.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 179px;
        }
        .auto-style4 {
            width: 193px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            Question:
            <asp:Label ID="questionContentLabel" runat="server" Text='<%# Eval("questionContent") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <br />
    Choose the correct answer:<br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT [answerContent] FROM [Answers] where questionID =1 ;"></asp:SqlDataSource>
    <br />
    Question 1 answer:<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="answerContent" DataValueField="answerContent" CssClass="auto-style5">
    </asp:RadioButtonList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [answerContent] FROM [Answers] WHERE questionID = 2;"></asp:SqlDataSource>
    <br />
    Question 2 answer:<asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="answerContent" DataValueField="answerContent">
    </asp:RadioButtonList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [answerContent] FROM [Answers] WHERE questionID = 3;"></asp:SqlDataSource>
    <br />
    Question 3 answer:<asp:RadioButtonList ID="RadioButtonList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="answerContent" DataValueField="answerContent">
    </asp:RadioButtonList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [answerContent] FROM [Answers] WHERE questionID = 4;"></asp:SqlDataSource>
    <br />
    Question 4 answer:<asp:RadioButtonList ID="RadioButtonList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="answerContent" DataValueField="answerContent">
    </asp:RadioButtonList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [answerContent] FROM [Answers] WHERE questionID = 5;"></asp:SqlDataSource>
    <br />
    Question 5 answer:<asp:RadioButtonList ID="RadioButtonList5" runat="server" DataSourceID="SqlDataSource6" DataTextField="answerContent" DataValueField="answerContent">
    </asp:RadioButtonList>
    <br />
    <input id="Submit1" class="auto-style4" type="submit" value="submit" onclick =" cal() " />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Reset1" class="auto-style3" type="reset" value="reset" /><br />
    <br />
    <br />
    <br />
    <script type="text/javascript">
        function cal() {
            var score = 0;
            var answer = 0;
            for (var i = 3; i <= 4; i++) {
             
                    score++;
            }
            document.writeln("Your final score is " + score);
        }
       
    </script>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [questionContent] FROM [Questions]"></asp:SqlDataSource>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
