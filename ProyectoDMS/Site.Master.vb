Imports System.Web.Http.Results
Imports Datos
Imports WebGrease.Css

Public Class SiteMaster
    Inherits MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim idProfile As Guid = HttpContext.Current.Session("idProfile")

        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.
            SqlDataAdapter("select *from [dbo].[MenuProfiles] mp
                            inner join [dbo].[Menu] m on mp.IdMenu = m.IdMenu
                            inner join [dbo].[Profiles] p on p.Id = mp.IdProfile
                            where p.Id = '" & idProfile.ToString() & "'", Conexiones.Cnn)

        Dim ds As New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then

            For Each row As DataRow In ds.Tables(0).Rows
                menu.InnerHtml += "<li class='nav-item'><a class='nav-link' href='" & row.ItemArray(5).ToString() & "'>" & row.ItemArray(4).ToString() & "</a></li>"
            Next
        End If
    End Sub
End Class