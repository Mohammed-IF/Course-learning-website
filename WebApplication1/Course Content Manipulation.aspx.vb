Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None
    End Sub
    Private Sub courseContent_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Dim sql
        sql = "Update Course set courseName =" & "'" & txtName.Text &
          "' Where courseCode = '" & txtCode.Text & "'"

        SqlDataSource1.UpdateCommand = sql
        SqlDataSource1.Update()
        GridView1.DataBind()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim sql
        sql = "Insert into Course Values ('" & txtCode.Text &
        "', '" & txtName.Text &
        "')"
        SqlDataSource1.InsertCommand = sql
        SqlDataSource1.Insert()
        GridView1.DataBind()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim sql
        sql = "Delete * From Course Where courseCode = '" & txtCode.Text & "'"
        SqlDataSource1.DeleteCommand = sql
        SqlDataSource1.Delete()
        GridView1.DataBind()
    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim sql
        sql = "Insert into Syllabus Values ('" & txtSyl.Text &
        "', '" & txtCode0.Text &
         "')"
        SqlDataSource2.InsertCommand = sql
        SqlDataSource2.Insert()
        GridView2.DataBind()
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim sql
        sql = "Update Syllabus set syllabusName =" & "'" & txtSyl.Text &
          "' Where courseCode = " & txtCode0.Text

        SqlDataSource2.UpdateCommand = sql
        SqlDataSource2.Update()
        GridView2.DataBind()
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Dim sql
        sql = "Delete * From Syllabus Where syllabusName = " & txtSyl.Text
        SqlDataSource2.DeleteCommand = sql
        SqlDataSource2.Delete()
        GridView2.DataBind()
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Dim sql
        sql = "Insert into Slides Values (" & txtCN.Text &
        ", '" & txtName1.Text &
         "', '" & txtCode1.Text & "')"
        SqlDataSource3.InsertCommand = sql
        SqlDataSource3.Insert()
        GridView3.DataBind()
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Dim sql
        sql = "Update Slides set chapterName =" & "'" & txtName1.Text &
       "' Where chapterNumber = " & txtCN.Text

        SqlDataSource3.UpdateCommand = sql
        SqlDataSource3.Update()
        GridView3.DataBind()
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Dim sql
        sql = "Delete * From Slides Where chapterNumber = " & txtCN.Text
        SqlDataSource3.DeleteCommand = sql
        SqlDataSource3.Delete()
        GridView3.DataBind()
    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        Dim sql
        sql = "Insert into Tutorial Values ('" & txtTN.Text &
        "', '" & txtCode2.Text & "')"
        SqlDataSource4.InsertCommand = sql
        SqlDataSource4.Insert()
        GridView4.DataBind()
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        Dim sql
        sql = "Update Tutorial set tutorialNumber =" & "" & txtTN.Text &
       " Where courseCode = " & txtCode2.Text

        SqlDataSource4.UpdateCommand = sql
        SqlDataSource4.Update()
        GridView4.DataBind()
    End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        Dim sql
        sql = "DELETE FROM Tutorial WHERE tutorialName = '" & txtTN.Text & "'"
        SqlDataSource4.DeleteCommand = sql
        SqlDataSource4.Delete()
        GridView4.DataBind()
    End Sub

    Protected Sub Button13_Click(sender As Object, e As EventArgs) Handles Button13.Click
        Dim sql
        sql = "Insert into Exams Values ('" & txtEN.Text &
        "', '" & txtET.Text &
         "', '" & txtCode3.Text & "')"
        SqlDataSource5.InsertCommand = sql
        SqlDataSource5.Insert()
        GridView5.DataBind()
    End Sub

    Protected Sub Button14_Click(sender As Object, e As EventArgs) Handles Button14.Click
        Dim sql
        sql = "Update Exams set examType =" & "'" & txtET.Text &
       "' Where courseCode = " & txtCode3.Text

        SqlDataSource5.UpdateCommand = sql
        SqlDataSource5.Update()
        GridView5.DataBind()
    End Sub

    Protected Sub Button15_Click(sender As Object, e As EventArgs) Handles Button15.Click
        Dim sql
        sql = "DELETE FROM Exams WHERE examName = '" & txtEN.Text & "'"

        SqlDataSource5.DeleteCommand = sql
        SqlDataSource5.Delete()
        GridView5.DataBind()
    End Sub


End Class