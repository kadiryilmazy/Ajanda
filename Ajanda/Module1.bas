Attribute VB_Name = "Module1"
Global adconnec As ADODB.Connection
Global adrec As ADODB.Recordset
Sub vtbag()
Set adconnec = New ADODB.Connection
adconnec.ConnectionString = "DRIVER={MySQL ODBC 3.51 Driver};" _
            & "SERVER=localhost;" _
            & "Port=3306;" _
            & "DATABASE=takvim;" _
            & "UID=root;" _
            & "PWD=;" _
            & "OPTION=3"
adconnec.Open
End Sub
Sub tbag(tbagstr As String)
On Local Error GoTo hatavar
Set adrec = New ADODB.Recordset
adrec.Open tbagstr, adconnec, adOpenDynamic, adLockOptimistic
Exit Sub
hatavar:
MsgBox tbagstr, , "VERI GIRISINDE HATA VAR KONTROL ET"
End Sub

        


