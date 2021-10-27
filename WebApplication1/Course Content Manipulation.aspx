<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Course Content Manipulation.aspx.vb" Inherits="WebApplication1.WebForm3" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [courseCode], [courseName] FROM [Course]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="courseCode" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="courseCode" HeaderText="courseCode" SortExpression="courseCode" ReadOnly="True" />
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
         </p>
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">courseCode</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCode" runat="server" Width="538px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">courseName</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtName" runat="server" Width="533px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Insert" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Update" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Delete" />
                </td>
            </tr>
        </table>
   
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [syllabusName], [courseCode] FROM [Syllabus]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource2" GridLines="None" DataKeyNames="syllabusName">
            <Columns>
                <asp:BoundField DataField="syllabusName" HeaderText="syllabusName" SortExpression="syllabusName" ReadOnly="True" />
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
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">SyllabusName</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSyl" runat="server" Width="538px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">courseCode</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCode0" runat="server" Width="533px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" Text="Insert" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button5" runat="server" Text="Update" />
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="Delete" />
                </td>
            </tr>
        </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [chapterNumber], [chapterName], [courseCode] FROM [Slides]"></asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource3" GridLines="None" DataKeyNames="chapterNumber">
            <Columns>
                <asp:BoundField DataField="chapterNumber" HeaderText="chapterNumber" SortExpression="chapterNumber" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="chapterName" HeaderText="chapterName" SortExpression="chapterName" />
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
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">chapterNumber</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCN" runat="server" Width="538px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">chapterName</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtName1" runat="server" Width="533px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">courseCode</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCode1" runat="server" Width="524px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button7" runat="server" Text="Insert" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button8" runat="server" Text="Update" />
                </td>
                <td>
                    <asp:Button ID="Button9" runat="server" Text="Delete" style="height: 56px" />
                </td>
            </tr>
        </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [tutorialName], [courseCode] FROM [Tutorial]"></asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource4" GridLines="None" DataKeyNames="tutorialName">
            <Columns>
                <asp:BoundField DataField="tutorialName" HeaderText="tutorialName" SortExpression="tutorialName" ReadOnly="True" />
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
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">tutorialName</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtTN" runat="server" Width="538px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">courseCode</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCode2" runat="server" Width="533px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [examName], [examType], [courseCode] FROM [Exams]"></asp:SqlDataSource>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource5" GridLines="None">
            <Columns>
                <asp:BoundField DataField="examName" HeaderText="examName" SortExpression="examName" />
                <asp:BoundField DataField="examType" HeaderText="examType" SortExpression="examType" />
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
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">examName</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEN" runat="server" Width="538px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">examType</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtET" runat="server" Width="533px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">courseCode</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCode3" runat="server" Width="529px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
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
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
