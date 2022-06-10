Public Class _Default
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Not IsPostBack Then

            Me.CeldaActual.Text = "&nbsp;"
            For Each cell In Tablero.Controls
                cell.CssClass = "Celda"

            Next

        End If

    End Sub



End Class