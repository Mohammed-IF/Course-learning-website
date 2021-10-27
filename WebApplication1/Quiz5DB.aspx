<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Quiz5DB.aspx.vb" Inherits="WebApplication1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 397px;
        }
        .auto-style4 {
            width: 679px;
        }
    .auto-style5 {
        width: 397px;
        height: 64px;
    }
    .auto-style6 {
        width: 679px;
        height: 64px;
    }
    .auto-style7 {
        height: 64px;
    }
    .auto-style8 {
        width: 397px;
        height: 69px;
    }
    .auto-style9 {
        width: 679px;
        height: 69px;
    }
    .auto-style10 {
        height: 69px;
    }
        .auto-style11 {
            width: 397px;
            height: 70px;
        }
        .auto-style12 {
            width: 679px;
            height: 70px;
        }
        .auto-style13 {
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [questionID], [questionContent], [correctAnswerID] FROM [Questions]"></asp:SqlDataSource>
<asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource11" GridLines="None" DataKeyNames="questionID">
    <Columns>
        <asp:BoundField DataField="questionID" HeaderText="questionID" SortExpression="questionID" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="questionContent" HeaderText="questionContent" SortExpression="questionContent" />
        <asp:BoundField DataField="correctAnswerID" HeaderText="correctAnswerID" SortExpression="correctAnswerID" />
    </Columns>
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#594B9C" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
<br />
<table class="auto-style2">
    <tr>
        <td class="auto-style11">Question ID</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtQ" runat="server" Width="538px"></asp:TextBox>
        </td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td class="auto-style8">Question Content</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtQC" runat="server" Width="533px"></asp:TextBox>
        </td>
        <td class="auto-style10"></td>
    </tr>
    <tr>
        <td class="auto-style3">Correct Answer ID<br />
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtCA" runat="server" Width="527px"></asp:TextBox>
        </td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button10" runat="server" Text="Insert" />
        </td>
        <td class="auto-style4">
            <asp:Button ID="Button11" runat="server" Text="Update" />
        </td>
        <td>
            <asp:Button ID="Button12" runat="server" Text="Delete" />
        </td>
    </tr>
</table>
<br />
<asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Answers]"></asp:SqlDataSource>
<asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource12" GridLines="None" DataKeyNames="answerID">
    <Columns>
        <asp:BoundField DataField="answerID" HeaderText="answerID" SortExpression="answerID" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="answerContent" HeaderText="answerContent" SortExpression="answerContent" />
        <asp:BoundField DataField="questionID" HeaderText="questionID" SortExpression="questionID" />
    </Columns>
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#594B9C" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
<br />
<table class="auto-style2">
    <tr>
        <td class="auto-style3">Answer ID</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtAID" runat="server" Width="538px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Answer Content</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtAC" runat="server" Width="533px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Question ID</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtQID1" runat="server" Width="527px"></asp:TextBox>
        </td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button13" runat="server" Text="Insert" />
        </td>
        <td class="auto-style4">
            <asp:Button ID="Button14" runat="server" Text="Update" />
        </td>
        <td>
            <asp:Button ID="Button15" runat="server" Text="Delete" />
        </td>
    </tr>
</table>
<br />
<br />
<br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
