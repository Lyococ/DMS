Imports System
Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity.Spatial

Partial Public Class Profiles
    Public Sub New()
        DataUser = New HashSet(Of DataUser)()
    End Sub

    Public Property Id As Guid

    <Required>
    <StringLength(50)>
    Public Property Profile As String

    Public Property Active As Boolean

    Public Overridable Property DataUser As ICollection(Of DataUser)
End Class
