Imports System
Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity.Spatial

<Table("DataUser")>
Partial Public Class DataUser
    Public Sub New()
        TaskData = New HashSet(Of TaskData)()
    End Sub

    Public Property Id As Guid

    <Required>
    <StringLength(50)>
    Public Property Name As String

    <Required>
    <StringLength(50)>
    Public Property Email As String

    <Required>
    Public Property Password As String

    Public Property Img As Byte()

    Public Property IdProfile As Guid

    Public Property Active As Boolean

    Public Overridable Property Profiles As Profiles

    Public Overridable Property TaskData As ICollection(Of TaskData)
End Class
