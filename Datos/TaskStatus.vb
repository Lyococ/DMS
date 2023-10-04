Imports System
Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity.Spatial

Partial Public Class TaskStatus
    Public Sub New()
        TaskData = New HashSet(Of TaskData)()
    End Sub

    Public Property Id As Guid

    <Required>
    <StringLength(50)>
    Public Property State As String

    Public Property Active As Boolean

    Public Overridable Property TaskData As ICollection(Of TaskData)
End Class
