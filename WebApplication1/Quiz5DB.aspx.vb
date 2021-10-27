Public Class WebForm4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        Dim sql
        sql = "Insert into Questions Values (" & txtQ.Text &
        ", '" & txtQC.Text &
        "','" & txtCA.Text & "')"
        SqlDataSource11.InsertCommand = sql
        SqlDataSource11.Insert()
        GridView11.DataBind()
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        Dim sql
        sql = "Update Questions set questionContent =" & "'" & txtQC.Text &
          "' Where questionID = " & txtQ.Text

        SqlDataSource11.UpdateCommand = sql
        SqlDataSource11.Update()
        GridView11.DataBind()
    End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        Dim sql
        sql = "Delete * From Questions Where questionID = " & txtQ.Text
        SqlDataSource11.DeleteCommand = sql
        SqlDataSource11.Delete()
        GridView11.DataBind()
    End Sub

    Protected Sub Button13_Click(sender As Object, e As EventArgs) Handles Button13.Click
        Dim sql
        sql = "Insert into Answers Values (" & txtAID.Text &
        ", '" & txtAC.Text &
        "', " & txtQID1.Text & ")"
        SqlDataSource12.InsertCommand = sql
        SqlDataSource12.Insert()
        GridView12.DataBind()
    End Sub

    Protected Sub Button14_Click(sender As Object, e As EventArgs) Handles Button14.Click
        Dim sql
        sql = "Update Answers set answerContent =" & "'" & txtAC.Text &
          "' Where answerID = " & txtAID.Text

        SqlDataSource12.UpdateCommand = sql
        SqlDataSource12.Update()
        GridView12.DataBind()
    End Sub

    Protected Sub Button15_Click(sender As Object, e As EventArgs) Handles Button15.Click
        Dim sql
        sql = "Delete From Answers Where answerID = " & txtAID.Text
        SqlDataSource12.DeleteCommand = sql
        SqlDataSource12.Delete()
        GridView12.DataBind()
    End Sub
End Class