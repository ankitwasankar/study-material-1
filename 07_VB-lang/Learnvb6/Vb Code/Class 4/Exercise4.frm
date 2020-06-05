VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.1#0"; "COMDLG32.OCX"
Begin VB.Form frmStudent 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Student Profile"
   ClientHeight    =   4485
   ClientLeft      =   1185
   ClientTop       =   1515
   ClientWidth     =   6690
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   4485
   ScaleWidth      =   6690
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame3 
      Caption         =   "Picture"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3252
      Left            =   4560
      TabIndex        =   20
      Top             =   720
      Width           =   1932
      Begin VB.CommandButton cmdLoad 
         Caption         =   "&Load Picture"
         Height          =   492
         Left            =   360
         TabIndex        =   23
         Top             =   2640
         Width           =   1212
      End
      Begin VB.Image imgStudent 
         BorderStyle     =   1  'Fixed Single
         Height          =   2292
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1692
      End
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   492
      Left            =   2760
      TabIndex        =   19
      Top             =   3720
      Width           =   1092
   End
   Begin VB.CommandButton cmdNew 
      Caption         =   "&New Profile"
      Height          =   492
      Left            =   2760
      TabIndex        =   6
      Top             =   3120
      Width           =   1092
   End
   Begin VB.CommandButton cmdShow 
      Caption         =   "&Show Profile"
      Height          =   495
      Left            =   2760
      TabIndex        =   5
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Frame Frame4 
      Caption         =   "Grade Level"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2532
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   1932
      Begin VB.OptionButton optLevel 
         Caption         =   "Grade 6"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   22
         Top             =   2160
         Width           =   1335
      End
      Begin VB.OptionButton optLevel 
         Caption         =   "Grade 5"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   21
         Top             =   1800
         Width           =   1335
      End
      Begin VB.OptionButton optLevel 
         Caption         =   "Grade 4"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   18
         Top             =   1440
         Width           =   1335
      End
      Begin VB.OptionButton optLevel 
         Caption         =   "Grade 3"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   17
         Top             =   1080
         Width           =   1215
      End
      Begin VB.OptionButton optLevel 
         Caption         =   "Grade 2"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   16
         Top             =   720
         Width           =   1335
      End
      Begin VB.OptionButton optLevel 
         Caption         =   "Grade 1"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   15
         Top             =   360
         Value           =   -1  'True
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Sex"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   2055
      Begin VB.OptionButton optSex 
         Caption         =   "Female"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   14
         Top             =   720
         Width           =   1695
      End
      Begin VB.OptionButton optSex 
         Caption         =   "Male"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   13
         Top             =   360
         Value           =   -1  'True
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Date of Birth"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   2400
      TabIndex        =   2
      Top             =   600
      Width           =   1935
      Begin VB.VScrollBar vsbYear 
         Height          =   375
         Left            =   1560
         Max             =   1800
         Min             =   2100
         TabIndex        =   12
         Top             =   1320
         Value           =   1960
         Width           =   255
      End
      Begin VB.VScrollBar vsbDay 
         Height          =   375
         Left            =   1560
         Max             =   1
         Min             =   31
         TabIndex        =   11
         Top             =   840
         Value           =   1
         Width           =   255
      End
      Begin VB.VScrollBar vsbMonth 
         Height          =   375
         Left            =   1560
         Max             =   1
         Min             =   12
         TabIndex        =   10
         Top             =   360
         Value           =   1
         Width           =   255
      End
      Begin VB.Label lblYear 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Top             =   1320
         Width           =   1455
      End
      Begin VB.Label lblDay 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   8
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label lblMonth 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.TextBox txtName 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   840
      TabIndex        =   0
      Top             =   120
      Width           =   5652
   End
   Begin MSComDlg.CommonDialog cdlBox 
      Left            =   5280
      Top             =   4080
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   327681
      DefaultExt      =   "bmp"
      Filter          =   "Bitmaps (*.bmp)|*.bmp"
   End
   Begin VB.Label Label1 
      Caption         =   "Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   240
      Width           =   735
   End
End
Attribute VB_Name = "frmStudent"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Months(12) As String
Dim Days(12) As Integer
Dim Grade As String

Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdLoad_Click()
cdlBox.ShowOpen
imgStudent.Picture = LoadPicture(cdlBox.filename)
End Sub

Private Sub cmdNew_Click()
'Blank out name and picture
txtName.Text = ""
imgStudent.Picture = LoadPicture("")
End Sub

Private Sub cmdShow_Click()
Dim Is_Leap As Integer
Dim Msg As String, Age As Integer, Pronoun As String
Dim M As Integer, D As Integer, Y As Integer

'Check for leap year and if February is current month
If vsbMonth.Value = 2 And vsbYear.Value Mod 4 = 0 And vsbYear.Value Mod 100 <> 0 Then
  Is_Leap = 1
Else
  Is_Leap = 0
End If

'Check to make sure current day doesn't exceed number of days in month
If vsbDay.Value > Days(vsbMonth.Value) + Is_Leap Then
  MsgBox "Only" + Str(Days(vsbMonth.Value) + Is_Leap) + " days in " + Months(vsbMonth.Value), vbOKOnly + vbCritical, "Invalid Birth Date"
  Exit Sub
End If

'Get current date to compute age
M = Val(Format(Now, "mm"))
D = Val(Format(Now, "dd"))
Y = Val(Format(Now, "yyyy"))
Age = Y - vsbYear
If vsbMonth.Value > M Or (vsbMonth.Value = M And vsbDay > D) Then Age = Age - 1

'Check for valid age
If Age < 0 Then
  MsgBox "Birth date is before current date.", vbOKOnly + vbCritical, "Invalid Birth Date"
  Exit Sub
End If

'Check to make sure name entered
If txtName.Text = "" Then
  MsgBox "The profile requires a name.", vbOKOnly + vbCritical, "No Name Entered"
  Exit Sub
End If

'Put together student profile message
Msg = txtName.Text + " is a student in the " + Grade + " grade." + vbCr
If optSex(0).Value = True Then Pronoun = "He " Else Pronoun = "She "
Msg = Msg + Pronoun + " is" + Str(Age) + " years old." + vbCr
MsgBox Msg, vbOKOnly, "Student Profile"
End Sub


Private Sub Form_Load()
'Set arrays for dates and initialize labels
Months(1) = "January": Days(1) = 31
Months(2) = "February": Days(2) = 28
Months(3) = "March": Days(3) = 31
Months(4) = "April": Days(4) = 30
Months(5) = "May": Days(5) = 31
Months(6) = "June": Days(6) = 30
Months(7) = "July": Days(7) = 31
Months(8) = "August": Days(8) = 31
Months(9) = "September": Days(9) = 30
Months(10) = "October": Days(10) = 31
Months(11) = "November": Days(11) = 30
Months(12) = "December": Days(12) = 31
lblMonth.Caption = Months(vsbMonth.Value)
lblDay.Caption = Str(vsbDay.Value)
lblYear.Caption = Str(vsbYear.Value)
Grade = "first"
End Sub


Private Sub optLevel_Click(Index As Integer)
Select Case Index
Case 0
   Grade = "first"
Case 1
   Grade = "second"
Case 2
   Grade = "third"
Case 3
   Grade = "fourth"
Case 4
   Grade = "fifth"
Case 5
   Grade = "sixth"
End Select
End Sub

Private Sub vsbDay_Change()
lblDay.Caption = Str(vsbDay.Value)
End Sub

Private Sub vsbMonth_Change()
lblMonth.Caption = Months(vsbMonth.Value)
End Sub


Private Sub vsbYear_Change()
lblYear.Caption = Str(vsbYear.Value)
End Sub


