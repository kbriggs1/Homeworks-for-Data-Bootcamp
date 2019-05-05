Sub tickertotaler_Easy()



'define everything
Dim ws As Worksheet
Dim ticker As String
Dim last_row As Long
Dim vol As Double
Dim year_open As Long
Dim year_close As Long
Dim yearly_change As Single
Dim percent_change As Single
Dim Summary_Table_Row As Integer



'run through each worksheet
For Each ws In ThisWorkbook.Worksheets
ws.Activate
    'set headers
    Cells(1, 9).Value = "Ticker"
    Cells(1, 10).Value = "Yearly Change"
    Cells(1, 11).Value = "Percent Change"
    Cells(1, 12).Value = "Total Stock Volume"

    'setup integers for loop
    Summary_Table_Row = 2

    'loop
    last_row = Cells(Rows.Count, 1).End(xlUp).Row
        For I = 2 To last_row
             If ws.Cells(I + 1, 1).Value <> ws.Cells(I, 1).Value Then
            
            'find all the values
            ticker = Cells(I, 1).Value
            vol = vol + Cells(I, 7).Value

            year_open = Cells(I, 3).Value
            year_close = Cells(I, 6).Value

            yearly_change = year_close - year_open
            'percent_change = Round((yearly_change / Cells(year_open, 3) * 100))

            'insert values into summary
            Cells(Summary_Table_Row, 9).Value = ticker
            Cells(Summary_Table_Row, 10).Value = yearly_change
            'Cells(Summary_Table_Row, 11).Value = percent_change
            Cells(Summary_Table_Row, 12).Value = vol
            Summary_Table_Row = Summary_Table_Row + 1

             vol = 0
             Change = 0
        
        End If

'finish loop
    Next I
    
Columns("K").NumberFormat = "0.00%"


'format columns colors
    Dim rg As Range
    Dim g As Long
    Dim c As Long
    Dim color_cell As Range

    Set rg = ws.Range("J2", Range("J2").End(xlDown))
    c = rg.Cells.Count

    For g = 1 To c
    Set color_cell = rg(g)

'    If color_cell >= 0 Then
'    color_cell.Interior.ColorIndex = 4
'    Else
'    color_cell.Interior.ColorIndex = 3
'    End If
'
    
    
    
    
    
    Select Case color_cell
        Case Is >= 0
            With color_cell
                .Interior.ColorIndex = 4
            End With
        Case Is < 0
            With color_cell
                .Interior.ColorIndex = 3
            End With
       End Select
    Next g


'move to next worksheet
Next ws


End Sub


