Imports System.Globalization
Imports Datos

Public Class Login
    Inherits System.Web.UI.Page

    Dim objSimpleDes As New Simple3Des(Encryption.strKey)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.
            SqlDataAdapter("select *from [dbo].[Profiles]", Conexiones.Cnn)

        Dim ds As New DataSet
        da.Fill(ds)
        Conexiones.Cnn.Close()

        ListPerfil.DataSource = ds.Tables(0)
        ListPerfil.DataTextField = "Profile"
        ListPerfil.DataValueField = "Id"
        ListPerfil.DataBind()
    End Sub

    Protected Sub Conexion(sender As Object, e As EventArgs) Handles Button1.Click
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.
            SqlDataAdapter("Select *from DataUser where Email ='" &
            txtEmail.Text & "' and Password = '" &
            objSimpleDes.Encrypt(txtClave.Text) & "'", Conexiones.Cnn)

        Dim ds As New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            'TODO: Arreglar sacar el id de perfil ds.Tables(0).Rows
            SessionData(ds.Tables(0).Rows(0).ItemArray(5))
            Response.Redirect("~/Default.aspx")
        Else
            MsgBox("Datos de usuario invalido, favor revisar!!", vbCritical, "Login Error")
        End If

        Conexiones.Cnn.Close()
    End Sub

    Private Sub SessionData(id As Guid)
        Dim FechaHora As String = Now.AddMinutes(3)
        If Request.Cookies("EmpleadoASP") Is Nothing Then
            Dim aCookie As New HttpCookie("EmpleadoASP")
            aCookie.Value = "Activa"
            aCookie.Expires = FechaHora
            Response.Cookies.Add(aCookie)
        End If

        HttpContext.Current.Session("idProfile") = id
    End Sub

    Private Sub CifratePassword()
        Dim FechaHora As String = Now.AddMinutes(3)
        If Request.Cookies("EmpleadoASP") Is Nothing Then
            Dim aCookie As New HttpCookie("EmpleadoASP")
            aCookie.Value = "Activa"
            aCookie.Expires = FechaHora
            Response.Cookies.Add(aCookie)
        End If
    End Sub
End Class