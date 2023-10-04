Imports System
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity
Imports System.Linq

Partial Public Class BD
    Inherits DbContext

    Public Sub New()
        MyBase.New("name=BD")
    End Sub

    Public Overridable Property Categories As DbSet(Of Categories)
    Public Overridable Property DataUser As DbSet(Of DataUser)
    Public Overridable Property Profiles As DbSet(Of Profiles)
    Public Overridable Property TaskData As DbSet(Of TaskData)
    Public Overridable Property TaskStatus As DbSet(Of TaskStatus)

    Protected Overrides Sub OnModelCreating(ByVal modelBuilder As DbModelBuilder)
        modelBuilder.Entity(Of Categories)() _
            .HasMany(Function(e) e.TaskData) _
            .WithRequired(Function(e) e.Categories) _
            .HasForeignKey(Function(e) e.IdCategory) _
            .WillCascadeOnDelete(False)

        modelBuilder.Entity(Of DataUser)() _
            .Property(Function(e) e.Name) _
            .IsUnicode(False)

        modelBuilder.Entity(Of DataUser)() _
            .Property(Function(e) e.Email) _
            .IsUnicode(False)

        modelBuilder.Entity(Of DataUser)() _
            .HasMany(Function(e) e.TaskData) _
            .WithRequired(Function(e) e.DataUser) _
            .HasForeignKey(Function(e) e.IdUser) _
            .WillCascadeOnDelete(False)

        modelBuilder.Entity(Of Profiles)() _
            .HasMany(Function(e) e.DataUser) _
            .WithRequired(Function(e) e.Profiles) _
            .HasForeignKey(Function(e) e.IdProfile) _
            .WillCascadeOnDelete(False)

        modelBuilder.Entity(Of TaskData)() _
            .Property(Function(e) e.Task) _
            .IsUnicode(False)

        modelBuilder.Entity(Of TaskData)() _
            .Property(Function(e) e.Description) _
            .IsUnicode(False)

        modelBuilder.Entity(Of TaskStatus)() _
            .HasMany(Function(e) e.TaskData) _
            .WithRequired(Function(e) e.TaskStatus) _
            .HasForeignKey(Function(e) e.IdStateTask) _
            .WillCascadeOnDelete(False)
    End Sub
End Class
