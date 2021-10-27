Imports System.Data.OleDb

Public Class WebForm1

    Inherits System.Web.UI.Page
    Private con As New OleDbConnection("")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None
    End Sub


    Private Sub StudentCourse_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim sql
        sql = "Insert into Student Values (" & txtID.Text &
        ", '" & txtName.Text &
        "','" & txtEmail.Text & "')"
        SqlDataSource1.InsertCommand = sql
        SqlDataSource1.Insert()
        GridView1.DataBind()

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim sql
        sql = "Update Student set studentName =" & "'" & txtName.Text &
          "' Where studentID = " & txtID.Text

        SqlDataSource1.UpdateCommand = sql
        SqlDataSource1.Update()
        GridView1.DataBind()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim sql
        sql = "DELETE FROM Student WHERE studentID = " & txtID.Text
        SqlDataSource1.DeleteCommand = sql
        SqlDataSource1.Delete()
        GridView1.DataBind()
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Dim sql
        sql = "Insert into Enroll Values (" & txtID1.Text &
        ", '" & txtID2.Text &
        "')"
        SqlDataSource3.InsertCommand = sql
        SqlDataSource3.Insert()
        GridView3.DataBind()
    End Sub



    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Dim sql
        sql = "Update Enroll set courseCode =" & "'" & txtID2.Text &
          "' Where studentID = " & txtID1.Text

        SqlDataSource3.UpdateCommand = sql
        SqlDataSource3.Update()
        GridView3.DataBind()
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Dim sql
        sql = "DELETE FROM Enroll WHERE studentID = " & txtID1.Text
        SqlDataSource3.DeleteCommand = sql
        SqlDataSource3.Delete()
        GridView3.DataBind()
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim sql
        sql = "UPDATE Course SET courseName =" & "'" & txtName0.Text &
          "' WHERE courseCode = '" & txtCode.Text & "'"
        SqlDataSource2.UpdateCommand = sql
        SqlDataSource2.Update()
        GridView2.DataBind()
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Dim sql
        sql = "DELETE FROM Course WHERE courseCode = '" & txtCode.Text & "'"
        SqlDataSource2.DeleteCommand = sql
        SqlDataSource2.Delete()
        GridView2.DataBind()
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim sql
        sql = "Insert into Course Values ('" & txtCode.Text &
        "', '" & txtName0.Text &
        "')"
        SqlDataSource2.InsertCommand = sql
        SqlDataSource2.Insert()
        GridView2.DataBind()
    End Sub
End Class