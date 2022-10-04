VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7530
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7890
   LinkTopic       =   "Form1"
   ScaleHeight     =   7530
   ScaleWidth      =   7890
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text13 
      Height          =   285
      Left            =   1560
      TabIndex        =   20
      Text            =   "ASIL NO"
      Top             =   3960
      Width           =   855
   End
   Begin VB.TextBox Text11 
      Height          =   285
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   19
      Text            =   "Olay Gunlugu"
      Top             =   2880
      Width           =   7215
   End
   Begin VB.TextBox Text12 
      Height          =   285
      Left            =   360
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   17
      Text            =   "Form1.frx":0000
      Top             =   3240
      Width           =   7215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "TEMIZLE"
      Height          =   255
      Left            =   1560
      TabIndex        =   16
      Top             =   6720
      Width           =   855
   End
   Begin VB.TextBox Text10 
      Height          =   285
      Left            =   5040
      Locked          =   -1  'True
      TabIndex        =   15
      Text            =   "Hazirlayan:Kadir Yilmaz-20860111004"
      Top             =   7200
      Width           =   2775
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   6000
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   360
      Width           =   1575
   End
   Begin VB.ListBox takvim 
      Height          =   2205
      ItemData        =   "Form1.frx":000D
      Left            =   360
      List            =   "Form1.frx":000F
      MultiSelect     =   1  'Simple
      TabIndex        =   8
      Top             =   600
      Width           =   7215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "YENILE"
      Height          =   495
      Left            =   3960
      TabIndex        =   7
      Top             =   4320
      Width           =   1095
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   5520
      Top             =   240
   End
   Begin VB.CommandButton Command4 
      Caption         =   "GUNCELLE"
      Height          =   495
      Left            =   3960
      TabIndex        =   6
      Top             =   6120
      Width           =   1095
   End
   Begin VB.TextBox Text9 
      Height          =   525
      Left            =   360
      TabIndex        =   5
      Text            =   "Notlarý belirtir."
      Top             =   6120
      Width           =   3375
   End
   Begin VB.TextBox Text8 
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Text            =   "Aktivitenin gecmis olup olmadigini belirtir."
      Top             =   5520
      Width           =   3375
   End
   Begin VB.TextBox Text7 
      Height          =   495
      Left            =   360
      MultiLine       =   -1  'True
      TabIndex        =   3
      Text            =   "Form1.frx":0011
      Top             =   4920
      Width           =   3375
   End
   Begin VB.TextBox Text6 
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Text            =   "Takvim sirasini belirtir"
      Top             =   4320
      Width           =   3375
   End
   Begin VB.CommandButton Command3 
      Caption         =   "SIL"
      Height          =   495
      Left            =   3960
      TabIndex        =   1
      Top             =   5520
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "EKLE"
      Height          =   495
      Left            =   3960
      TabIndex        =   0
      Top             =   4920
      Width           =   1095
   End
   Begin VB.Line Line1 
      DrawMode        =   1  'Blackness
      X1              =   1920
      X2              =   1920
      Y1              =   4200
      Y2              =   6600
   End
   Begin VB.Label Label10 
      Caption         =   "Listeden cift tiklayarak islemlerinizi daha kolay halledebilirsiniz."
      Height          =   255
      Left            =   360
      TabIndex        =   18
      Top             =   3600
      Width           =   7215
   End
   Begin VB.Label Label5 
      BackColor       =   &H8000000E&
      Caption         =   "NOT"
      Height          =   255
      Index           =   1
      Left            =   3240
      TabIndex        =   14
      Top             =   360
      Width           =   375
   End
   Begin VB.Label Label4 
      BackColor       =   &H8000000E&
      Caption         =   "GECMÝS MÝ"
      Height          =   255
      Index           =   1
      Left            =   2280
      TabIndex        =   13
      Top             =   360
      Width           =   855
   End
   Begin VB.Label Label3 
      BackColor       =   &H8000000E&
      Caption         =   "SAAT"
      Height          =   255
      Index           =   1
      Left            =   1560
      TabIndex        =   12
      Top             =   360
      Width           =   495
   End
   Begin VB.Label Label2 
      BackColor       =   &H8000000E&
      Caption         =   "GUN"
      Height          =   255
      Index           =   1
      Left            =   720
      TabIndex        =   11
      Top             =   360
      Width           =   375
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "NO"
      Height          =   255
      Index           =   1
      Left            =   360
      TabIndex        =   10
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Image1 
      Height          =   7575
      Left            =   0
      Picture         =   "Form1.frx":0057
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim etkinliklerzaman(50) As Date
Dim etkinliklerhatno(50) As Integer
Dim etkinliklergecmismi(50) As String
Dim etkinliklernot(50) As String
Dim tarihbicim(50) As String
Dim etkinliklerzamantarih(50) As Date
Dim etkinliklerzamansaat(50) As Date
Dim eslesme As Integer
Dim kacveri As Integer
Private Sub Form_Load() 'form yüklenmesi
Call yenile
End Sub
Sub yenile()
takvim.Clear
Call vtbag
Call tbag("select * from takvim")
Call tbag("SELECT * FROM `takvim` ORDER BY `takvim`.`hatno` ASC") 'veritabanýnýn hatnoya göre sýralanmasý
Do While Not adrec.EOF
takvim.AddItem adrec!hatno & "     " & adrec!hatzaman & "    " & adrec!hatgecmismi & "                   " & adrec!hatnot & ""
adrec.MoveNext 'takvime sýra ile veri giriþi
Loop
adrec.Close
Call listele
Call tarihbicimlestirme

For i = 0 To 50 Step 1
If etkinliklerzaman(i) - Now < 0 Then 'zamaný geçmiþ etkinliklerin ayarlanmasý
Call tbag("update takvim set hatgecmismi = 1 WHERE hatno = ' " & etkinliklerhatno(i) & " ' ")
Else
Call tbag("update takvim set hatgecmismi = 0 WHERE hatno = ' " & etkinliklerhatno(i) & " ' ")
End If
bitirgelecek:
Next i


For i = 0 To 50 Step 1 'tarih kýsmýnýn visual basic tarih kýsmýna çevrilerek ilgili diziye kaydedilmesi
  If etkinliklerzaman(i) = Empty Then GoTo tarihbicimbitir:
  If Mid(etkinliklerzaman(i), 2, 1) = "." Then
etkinliklerzamantarih(i) = Left(etkinliklerzaman(i), 1) & "/" & Mid(etkinliklerzaman(i), 3, 2) & "/" & Mid(etkinliklerzaman(i), 6, 4)
 
 Else
 etkinliklerzamantarih(i) = Left(etkinliklerzaman(i), 2) & "/" & Mid(etkinliklerzaman(i), 4, 2) & "/" & Mid(etkinliklerzaman(i), 7, 4)
 End If
tarihbicimbitir:
Next i

For i = 0 To 50 Step 1 'saat kýsmýnýn ilgili diziye kaydedilmesi
  If etkinliklerzaman(i) = Empty Then GoTo tarihbicimbitir2:
etkinliklerzamansaat(i) = Right(etkinliklerzaman(i), 8)
tarihbicimbitir2:
Next i
tbag ("SELECT * FROM `takvim` ORDER BY `takvim`.`hatno` ASC") 'listenin hatno ya göre sýralanmasý
Call defaultext
End Sub
Sub listele()
Call vtbag
Call tbag("select * from takvim") 'tablomuzda ki alanlarda ki verilerin teker teker ilgili dizilere kaydedilmesi
Call tbag("SELECT * FROM `takvim` ORDER BY `takvim`.`hatno` ASC")
kacveri = 0
Do While Not adrec.EOF
etkinliklerzaman(kacveri) = adrec!hatzaman
etkinliklergecmismi(kacveri) = adrec!hatgecmismi
etkinliklernot(kacveri) = adrec!hatnot
etkinliklerhatno(kacveri) = adrec!hatno
kacveri = kacveri + 1
adrec.MoveNext
Loop
i = 0
kacveri = kacveri
For kacveri = kacveri To 50 Step 1
etkinliklerzaman(kacveri) = Empty
etkinliklergecmismi(kacveri) = Empty
etkinliklernot(kacveri) = Empty
etkinliklerhatno(kacveri) = Empty
tarihbicim(kacveri) = Empty
etkinliklerzamantarih(kacveri) = Empty
etkinliklerzamansaat(kacveri) = Empty

Next kacveri
End Sub
Sub tarihbicimlestirme() 'tarihin mysql biçimine çevrilerek tarihbicim adlý diziye kaydedilmesi
For i = 0 To 50 Step 1
  If etkinliklerzaman(i) = Empty Then GoTo tarihbicimbitir:
  If Mid(etkinliklerzaman(i), 2, 1) = "." Then
 tarihbicim(i) = Mid(etkinliklerzaman(i), 6, 4) & "-" & Mid(etkinliklerzaman(i), 3, 2) & "-" & Left(etkinliklerzaman(i), 1) & _
 " " & Right(etkinliklerzaman(i), 8)
 
 Else
 tarihbicim(i) = Mid(etkinliklerzaman(i), 7, 4) & "-" & Mid(etkinliklerzaman(i), 4, 2) & "-" & Left(etkinliklerzaman(i), 2) & _
 " " & Right(etkinliklerzaman(i), 8)
 End If
tarihbicimbitir:
Next i
End Sub
Private Sub Command1_Click() 'yenile butonu
Call yenile
End Sub
Private Sub Command2_Click() 'kayýt ekleme butonu
Call vtbag
Call tbag("select * from takvim")
Call tbag("INSERT INTO takvim (hatno,hatzaman,hatgecmismi,hatnot) VALUES (' " & Text6.Text & " ' , ' " & Text7.Text & " ',' " & Text8.Text & " ',' " & Text9.Text & " ')")
Text11.Text = Text6.Text & " hatirlatma numarali aktivite eklenmistir"
adconnec.Close
Call yenile
End Sub
Private Sub Command3_Click() 'silme butonu
etkinliklerzaman(eslesme) = 0
etkinliklerhatno(eslesme) = Empty
etkinliklernot(eslesme) = Empty
etkinliklergecmismi(eslesme) = Empty
tarihbicim(eslesme) = Empty
etkinliklerzamantarih(eslesme) = Empty
etkinliklerzamansaat(eslesme) = Empty
Call vtbag
Call tbag("select * from takvim where hatno=" & Text13.Text)
Call tbag("delete from takvim where hatno=" & Text13.Text)
Call yenile
Text11.Text = Text13.Text & " hatirlatma numarali aktivite silinmistir"
End Sub
Private Sub Command4_Click() 'güncelleme butonu
Call vtbag
Call tbag("select * from takvim")
Call tbag("update takvim set hatno = '" & Text6.Text & " ' ,hatzaman = ' " & Text7.Text & " ' ,hatgecmismi = ' " & Text8.Text & " ',hatnot = ' " & Text9.Text & " ' WHERE hatno = '" & Text13.Text & " ' ")
takvim.Clear
Call yenile
Text11.Text = Text13.Text & " hatirlatma numarali aktivite guncellenmistir"
End Sub
Private Sub Command5_Click() 'temizle butonu
Text13.Text = " "
Text6.Text = " "
Text7.Text = " "
Text8.Text = " "
Text9.Text = " "
End Sub
Private Sub takvim_DblClick() 'takvimde bulunan etkinliklere týklayýnca ilgili etkinliðin bilgilerinin textboxa getirilmesi
i = takvim.ListIndex
Text13.Text = etkinliklerhatno(i)
Text6.Text = etkinliklerhatno(i)
Text7.Text = tarihbicim(i)
Text8.Text = etkinliklergecmismi(i)
Text9.Text = etkinliklernot(i)
End Sub
Private Sub Timer1_Timer()
Text3.Text = Now 'zamanýn ilgili texte gösterilmesi
For i = 0 To 50 Step 1
If etkinliklerzaman(i) = Empty Then GoTo timerbitir
If Now = etkinliklerzaman(i) Then
Text11.Text = "Hatirlama numarasi " & etkinliklerhatno(i) & " olan etkinliginizin zamani geldi" 'vakti gelen etkinliðin kontrol edilerek bildirilmesi
MsgBox "Hatirlama numarasi " & etkinliklerhatno(i) & " olan etkinliginizin zamani geldi"
Call vtbag
Call tbag("select * from takvim")
Call tbag("update takvim set hatgecmismi = 1 WHERE hatno = ' " & etkinliklerhatno(i) & " ' ") 'vakti gelen etkinliðin geçmiþ etkinlik olarak deðiþtirilmesi
Call Form_Load
End If
Next i
timerbitir:
enkucuk = etkinliklerzaman(0)
enkucukhatno = 0
yakgun = 0

sýfýr = 0
bir = 0
For i = 0 To 50 Step 1
If etkinliklergecmismi(i) = Empty Then GoTo etkbos
If etkinliklergecmismi(i) = 0 Then
sýfýr = sýfýr + 1
Else
bir = bir + 1                             'eðer hiç aktif etkinlik yok ise en yakýn etkinliði bulmanýn atlanmasý
End If
etkbos:
Next i

If sýfýr > 0 Then
GoTo bulkucuk
Else
GoTo etkyok
End If

bulkucuk:

For i = 1 To 50 Step 1
If etkinliklerzaman(i) = Empty Then GoTo bitirend
If (enkucuk - Now < 0) Then
enkucuk = etkinliklerzaman(i)
enkucukhatno = i
End If
If etkinliklerzaman(i) - Now < 0 Then GoTo bitirend
If (enkucuk - Now > etkinliklerzaman(i) - Now) Then 'zamaný yaklaþan etkinliðin bulunmasý
enkucukeksi:
enkucuk = etkinliklerzaman(i)
enkucukhatno = i

bitirend:
End If
yakgun = etkinliklerzamantarih(enkucukhatno) - Date
yaksaat = CDate((etkinliklerzamansaat(enkucukhatno)) - Time)
Next i
If (etkinliklerzamansaat(enkucukhatno)) - Time < 0 Then
yakgun = yakgun - 1
yaksaat = yaksaat + 1.0000005
End If                                                'zamaný yaklaþan etkinliðin geri sayýmýnýn yapýlýp ilgili texte kalan zamanýn yazýlmasý
 

Text12.Text = "En yakýn etkinlik nosu : " & etkinliklerhatno(enkucukhatno) & "               Kalan zaman " & yakgun & " gun ve " & yaksaat & " saattir."

If yakgun = 0 Then GoTo yakgbitir
etkyok:
If yakgun < 0 Or yakgun = Empty Then Text12.Text = "Gelecek etkinliginiz bulunmamaktadir.Lutfen etkinlik giriniz."
yakgbitir:
End Sub
Sub defaultext()       'default textlerin belirtilmesi
Text6.Text = "Takvim sirasini belirtir."
Text7.Text = "yil-ay-gun saat:dakika:saniye zamani belirtir." & Chr(13) & "yyyy-aa-gg ss:dd:ss"
Text8.Text = "Aktivitenin gecmis olup olmadigini belirtir."
Text9.Text = "Notlarý belirtir."
End Sub
Private Sub Text6_dblClick()                     'textboxlara double click ile içinin temizlenmesi
Text6.Text = " "
End Sub
Private Sub Text7_dblClick()
Text7.Text = " "
End Sub
Private Sub Text8_dblClick()
Text8.Text = " "
End Sub
Private Sub Text9_dblClick()
Text9.Text = " "
End Sub
Private Sub Text13_dblClick()
Text13.Text = " "
End Sub
Private Sub Text13_Change()             'text13.textin dizilerle eþleþmesi
If IsNumeric(Text13.Text) Then

If Text13.Text = Empty Then GoTo text13bitir
For i = 0 To 50 Step 1

If Text13.Text = etkinliklerhatno(i) Then eslesme = i


Next i
Else
GoTo text13bitir:
End If
text13bitir:
End Sub



