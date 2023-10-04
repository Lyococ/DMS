Imports Datos

Public Class SiteMaster
    Inherits MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim idProfile As String = HttpContext.Current.Session("idProfile")
        menu.InnerHtml = "<li class='nav-item'><a class='nav-link' href='DetalleTareas'>Detalles</a></li>"
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.
            SqlDataAdapter("select *from [dbo].[MenuProfiles] mp
                            inner join [dbo].[Menu] m on mp.IdMenu = m.IdMenu
                            inner join [dbo].[Profiles] p on p.Id = mp.IdProfile
                            where mp.IdProfile = '" & idProfile & "'", Conexiones.Cnn)

        'TODO: Recorrer y validar, crear menú basado en la linea 7
        Dim ds As New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            Response.Redirect("~/Default.aspx")
        Else
            MsgBox("Datos de usuario invalido, favor revisar!!", vbCritical, "Login Error")
        End If

        Conexiones.Cnn.Close()

    End Sub
End Class