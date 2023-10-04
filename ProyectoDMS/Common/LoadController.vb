Imports System.Data.Odbc
Imports System.Security.Cryptography
Imports Datos

Public Class LoadController
    Public Function Encrypt(ByVal strInput As String, conn As OdbcConnection) As String

        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

    End Function
End Class
