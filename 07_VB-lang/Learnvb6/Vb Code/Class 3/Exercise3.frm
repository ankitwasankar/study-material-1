VERSION 5.00
Begin VB.Form frmCustomer 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Customer Profile"
   ClientHeight    =   4485
   ClientLeft      =   1215
   ClientTop       =   1545
   ClientWidth     =   6690
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   4485
   ScaleWidth      =   6690
   Begin VB.TextBox txtAge 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   5040
      TabIndex        =   2
      Top             =   120
      Width           =   1095
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   495
      Left            =   5040
      TabIndex        =   22
      Top             =   3840
      Width           =   1095
   End
   Begin VB.Frame Frame5 
      Caption         =   "City of Residence"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   2400
      TabIndex        =   8
      Top             =   720
      Width           =   2175
      Begin VB.ComboBox cboCity 
         Height          =   1350
         Left            =   120
         Sorted          =   -1  'True
         Style           =   1  'Simple Combo
         TabIndex        =   9
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.CommandButton cmdNew 
      Caption         =   "&New Profile"
      Height          =   495
      Left            =   5040
      TabIndex        =   7
      Top             =   3240
      Width           =   1095
   End
   Begin VB.CommandButton cmdShow 
      Caption         =   "&Show Profile"
      Height          =   495
      Left            =   5040
      TabIndex        =   6
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Frame Frame4 
      Caption         =   "Athletic Level"
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
      TabIndex        =   5
      Top             =   2520
      Width           =   2175
      Begin VB.OptionButton optLevel 
         Caption         =   "Beginner"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   20
         Top             =   1440
         Width           =   1335
      End
      Begin VB.OptionButton optLevel 
         Caption         =   "Intermediate"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   19
         Top             =   1080
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.OptionButton optLevel 
         Caption         =   "Advanced"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   18
         Top             =   720
         Width           =   1335
      End
      Begin VB.OptionButton optLevel 
         Caption         =   "Extreme"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   17
         Top             =   360
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
      TabIndex        =   4
      Top             =   600
      Width           =   2055
      Begin VB.OptionButton optSex 
         Caption         =   "Female"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   16
         Top             =   720
         Width           =   1695
      End
      Begin VB.OptionButton optSex 
         Caption         =   "Male"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   15
         Top             =   360
         Value           =   -1  'True
         Width           =   1695
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Activities"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   120
      TabIndex        =   3
      Top             =   1800
      Width           =   2055
      Begin VB.CheckBox chkAct 
         Caption         =   "In-Line Skating"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   21
         Top             =   2160
         Width           =   1455
      End
      Begin VB.CheckBox chkAct 
         Caption         =   "Skiing"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   14
         Top             =   1800
         Width           =   1455
      End
      Begin VB.CheckBox chkAct 
         Caption         =   "Swimming"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   13
         Top             =   1440
         Width           =   1215
      End
      Begin VB.CheckBox chkAct 
         Caption         =   "Biking"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   12
         Top             =   1080
         Width           =   1335
      End
      Begin VB.CheckBox chkAct 
         Caption         =   "Walking"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   11
         Top             =   720
         Width           =   1455
      End
      Begin VB.CheckBox chkAct 
         Caption         =   "Running"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   10
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.TextBox txtName 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   840
      TabIndex        =   1
      Top             =   120
      Width           =   3495
   End
   Begin VB.Label Label2 
      Caption         =   "Age"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4440
      TabIndex        =   23
      Top             =   240
      Width           =   615
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
      TabIndex        =   0
      Top             =   240
      Width           =   735
   End
End
Attribute VB_Name = "frmCustomer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Activity As String

Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdNew_Click()
'Blank out name and reset check boxes
Dim I As Integer
txtName.Text = ""
txtAge.Text = ""
For I = 0 To 5
  chkAct(I).Value = vbUnchecked
Next I
End Sub

Private Sub cmdShow_Click()
Dim NoAct As Integer, I As Integer
Dim Msg As String, Pronoun As String

'Check to make sure name entered
If txtName.Text = "" Then
  MsgBox "The profile requires a name.", vbOKOnly + vbCritical, "No Name Entered"
  Exit Sub
End If

'Check to make sure age entered
If txtAge.Text = "" Then
  MsgBox "The profile requires an age.", vbOKOnly + vbCritical, "No Age Entered"
  Exit Sub
End If

'Put together customer profile message
Msg = txtName.Text + " is" + Str$(txtAge.Text) + " years old." + vbCr
If optSex(0).Value = True Then Pronoun = "He " Else Pronoun = "She "
Msg = Msg + Pronoun + "lives in " + cboCity.Text + "." + vbCr
Msg = Msg + Pronoun + "is a"
If optLevel(3).Value = False Then Msg = Msg + "n " Else Msg = Msg + " "
Msg = Msg + Activity + " level athlete." + vbCr
NoAct = 0
For I = 0 To 5
  If chkAct(I).Value = vbChecked Then NoAct = NoAct + 1
Next I
If NoAct > 0 Then
  Msg = Msg + "Activities include:" + vbCr
  For I = 0 To 5
    If chkAct(I).Value = vbChecked Then Msg = Msg + String$(10, 32) + chkAct(I).Caption + vbCr
  Next I
Else
  Msg = Msg + vbCr
End If
MsgBox Msg, vbOKOnly, "Customer Profile"
End Sub


Private Sub Form_Load()
'Load combo box with potential city names
cboCity.AddItem "Seattle"
cboCity.Text = "Seattle"
cboCity.AddItem "Bellevue"
cboCity.AddItem "Kirkland"
cboCity.AddItem "Everett"
cboCity.AddItem "Mercer Island"
cboCity.AddItem "Renton"
cboCity.AddItem "Issaquah"
cboCity.AddItem "Kent"
cboCity.AddItem "Bothell"
cboCity.AddItem "Tukwila"
cboCity.AddItem "West Seattle"
cboCity.AddItem "Edmonds"
cboCity.AddItem "Tacoma"
cboCity.AddItem "Federal Way"
cboCity.AddItem "Burien"
cboCity.AddItem "SeaTac"
cboCity.AddItem "Woodinville"
Activity = "intermediate"
End Sub


Private Sub optLevel_Click(Index As Integer)
Select Case Index
Case 0
   Activity = "extreme"
Case 1
  Activity = "advanced"
Case 2
  Activity = "intermediate"
Case 3
  Activity = "beginner"
End Select
End Sub






Private Sub txtAge_KeyPress(KeyAscii As Integer)
'Only allow numbers for age
If (KeyAscii >= vbKey0 And KeyAscii <= vbKey9) Or KeyAscii = vbKeyBack Then
  Exit Sub
Else
  KeyAscii = 0
End If
End Sub


