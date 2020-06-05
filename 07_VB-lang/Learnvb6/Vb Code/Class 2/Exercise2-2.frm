VERSION 5.00
Begin VB.Form frmAdd 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Flash Card Addition"
   ClientHeight    =   2955
   ClientLeft      =   2070
   ClientTop       =   1500
   ClientWidth     =   5370
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   2955
   ScaleWidth      =   5370
   Begin VB.CommandButton cmdNext 
      Caption         =   "&Next Problem"
      Enabled         =   0   'False
      Height          =   495
      Left            =   2280
      TabIndex        =   9
      Top             =   2400
      Width           =   1335
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   495
      Left            =   4440
      TabIndex        =   5
      Top             =   2400
      Width           =   855
   End
   Begin VB.TextBox txtAnswer 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Left            =   3960
      MaxLength       =   2
      TabIndex        =   4
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label lblMessage 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFF00&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1560
      TabIndex        =   8
      Top             =   1560
      Width           =   3735
   End
   Begin VB.Label lblScore 
      Alignment       =   2  'Center
      BackColor       =   &H0000FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   7
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Score:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "="
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3240
      TabIndex        =   3
      Top             =   120
      Width           =   615
   End
   Begin VB.Label lblNum2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2040
      TabIndex        =   2
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1320
      TabIndex        =   1
      Top             =   120
      Width           =   615
   End
   Begin VB.Label lblNum1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "frmAdd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Sum As Integer
Dim NumProb As Integer, NumRight As Integer

Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdNext_Click()
'Generate next addition problem
Dim Number1 As Integer
Dim Number2 As Integer
txtAnswer.Text = ""
lblMessage.Caption = ""
NumProb = NumProb + 1
'Generate random numbers for addends
Number1 = Int(Rnd * 21)
Number2 = Int(Rnd * 21)
lblNum1.Caption = Format(Number1, "#0")
lblNum2.Caption = Format(Number2, "#0")
'Find sum
Sum = Number1 + Number2
cmdNext.Enabled = False
txtAnswer.SetFocus
End Sub


Private Sub Form_Activate()
Call cmdNext_Click
End Sub

Private Sub Form_Load()
Randomize Timer
NumProb = 0
NumRight = 0
End Sub


Private Sub txtAnswer_KeyPress(KeyAscii As Integer)
Dim Ans As Integer
'Check for number only input and for return key
If (KeyAscii >= vbKey0 And KeyAscii <= vbKey9) Or KeyAscii = vbKeyBack Then
  Exit Sub
ElseIf KeyAscii = vbKeyReturn Then
'Check answer
  Ans = Val(txtAnswer.Text)
  If Ans = Sum Then
    NumRight = NumRight + 1
    lblMessage.Caption = "That's correct!"
  Else
    lblMessage.Caption = "Answer is " + Format(Sum, "#0")
  End If
  lblScore.Caption = Format(100 * NumRight / NumProb, "##0")
  cmdNext.Enabled = True
  cmdNext.SetFocus
Else
  KeyAscii = 0
End If
End Sub


