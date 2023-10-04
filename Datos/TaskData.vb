Imports System
Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity.Spatial

<Table("TaskData")>
Partial Public Class TaskData
    Public Property Id As Guid

    <Required>
    <StringLength(50)>
    Public Property Task As String

    <Required>
    <StringLength(50)>
    Public Property Description As String

    Public Property IdStateTask As Guid

    Public Property IdCategory As Guid

    Public Property IdUserAssignment As Guid?

    <Column(TypeName:="date")>
    Public Property ExpirationDate As Date?

    Public Property IdUser As Guid

    Public Property CreateDate As Date

    Public Property Active As Boolean

    Public Overridable Property Categories As Categories

    Public Overridable Property DataUser As DataUser

    Public Overridable Property TaskStatus As TaskStatus
End Class
