<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Student Course Manipulation.aspx.vb" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 357px;
    }
    .auto-style5 {
        width: 357px;
        height: 70px;
    }
    .auto-style7 {
            height: 70px;
            width: 602px;
        }
        .auto-style8 {
            width: 357px;
            height: 58px;
        }
        .auto-style10 {
            height: 58px;
            width: 602px;
        }
        .auto-style11 {
            width: 602px;
        }
        .auto-style12 {
            margin-right: 0px;
        }
        .auto-style13 {
            width: 357px;
            height: 69px;
        }
        .auto-style14 {
            width: 591px;
            height: 69px;
        }
        .auto-style15 {
            height: 69px;
        }
        .auto-style17 {
            width: 591px;
        }
        .auto-style18 {
            height: 70px;
            width: 592px;
        }
        .auto-style19 {
            height: 58px;
            width: 592px;
        }
        .auto-style20 {
            width: 592px;
        }
        .auto-style21 {
            width: 596px;
        }
        .auto-style22 {
            width: 596px;
            height: 70px;
        }
        .auto-style23 {
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [studentID], [studentName], [city] FROM [Student]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="studentID" DataSourceID="SqlDataSource1" GridLines="None" Height="16px" Width="238px" CssClass="auto-style12">
    <Columns>
        <asp:BoundField DataField="studentID" HeaderText="studentID" InsertVisible="False" ReadOnly="True" SortExpression="studentID" />
        <asp:BoundField DataField="studentName" HeaderText="studentName" SortExpression="studentName" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
<table class="auto-style2">
    <tr>
        <td class="auto-style5">student id</td>
        <td class="auto-style18">
            <asp:TextBox ID="txtID" runat="server" Width="541px"></asp:TextBox>
        </td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style3">student name</td>
        <td class="auto-style20">
            <asp:TextBox ID="txtName" runat="server" Width="538px"></asp:TextBox>
        </td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">student email</td>
        <td class="auto-style18">
            <asp:TextBox ID="txtEmail" runat="server" Width="542px"></asp:TextBox>
        </td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Button ID="Button1" runat="server" Text="Insert" />
        </td>
        <td class="auto-style19">
            <asp:Button ID="Button2" runat="server" Text="Update" />
        </td>
        <td class="auto-style10">
            <asp:Button ID="Button3" runat="server" Text="Delete" />
        </td>
    </tr>
</table>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="courseCode" DataSourceID="SqlDataSource2" GridLines="None">
        <Columns>
            <asp:BoundField DataField="courseCode" HeaderText="courseCode" ReadOnly="True" SortExpression="courseCode" />
            <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [courseCode], [courseName] FROM [Course]"></asp:SqlDataSource>
    <table class="auto-style2">
        <tr>
            <td class="auto-style5">courseCode</td>
            <td class="auto-style22">
                <asp:TextBox ID="txtCode" runat="server" Width="538px"></asp:TextBox>
            </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style3">courseName</td>
            <td class="auto-style21">
                <asp:TextBox ID="txtName0" runat="server" Width="533px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button4" runat="server" Text="Insert" />
            </td>
            <td class="auto-style21">
                <asp:Button ID="Button5" runat="server" Text="Update" />
            </td>
            <td>
                <asp:Button ID="Button6" runat="server" Text="Delete" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource3" GridLines="None">
        <Columns>
            <asp:BoundField DataField="studentID" HeaderText="studentID" SortExpression="studentID" />
            <asp:BoundField DataField="courseCode" HeaderText="courseCode" SortExpression="courseCode" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [studentID], [courseCode] FROM [Enroll]"></asp:SqlDataSource>
    <table class="auto-style2">
        <tr>
            <td class="auto-style13">studentID</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtID1" runat="server" Width="538px"></asp:TextBox>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style3">courseCode</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtID2" runat="server" Width="533px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button7" runat="server" Text="Insert" />
            </td>
            <td class="auto-style17">
                <asp:Button ID="Button8" runat="server" Text="Update" />
            </td>
            <td>
                <asp:Button ID="Button9" runat="server" Text="Delete" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
