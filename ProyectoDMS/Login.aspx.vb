Imports Datos

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("Select *from DataUser where Email ='" & txtEmail.Text & "' and Password = '" & txtEmail.Text & "'", Conexiones.Cnn)
        Dim ds As New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            CreateCookies()
            Response.Redirect("~/DetalleTareas.aspx")

        Else
            MsgBox("Datos de usuario invalido, favor revisar!!", vbCritical, "Login Error")
        End If

        Conexiones.Cnn.Close()
    End Sub

    Private Sub CreateCookies()
        Dim FechaHora As String = Now.AddMinutes(3)
        If Request.Cookies("EmpleadoASP") Is Nothing Then
            Dim aCookie As New HttpCookie("EmpleadoASP")
            aCookie.Value = "Activa"
            aCookie.Expires = FechaHora
            Response.Cookies.Add(aCookie)
        Else

        End If
    End Sub
End Class