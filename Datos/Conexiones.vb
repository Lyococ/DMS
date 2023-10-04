Imports System.Web
Imports System.Data.SqlClient
Public Class Conexiones
    Public Shared Cnn As SqlClient.SqlConnection
    Public Shared Validar As String = "0"

    Public Shared Sub AbrirConexion()
        Cnn = New SqlConnection("Server=DESKTOP-JRKLD0V\SQLEXPRESS;DataBase=DMS;User Id=UserDMS;Password=Colombia123")
    End Sub

End Class
