Imports System.Web
Imports System.Data.SqlClient
Public Class Conexiones
    Public Shared Cnn As SqlClient.SqlConnection
    Public Shared Validar As String = "0"

    Public Shared Sub AbrirConexion()
        Cnn = New SqlConnection("Server=usafiliaciones.database.windows.net;DataBase=DMS;User Id=lyoco;Password=C0dely0c0*.1")
    End Sub

End Class
