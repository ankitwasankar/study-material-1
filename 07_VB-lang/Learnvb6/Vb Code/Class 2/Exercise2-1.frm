VERSION 5.00
Begin VB.Form frmStats 
   Caption         =   "Mean and Standard Deviation"
   ClientHeight    =   3300
   ClientLeft      =   5805
   ClientTop       =   3570
   ClientWidth     =   3750
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   3300
   ScaleWidth      =   3750
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   492
      Left            =   2040
      TabIndex        =   11
      Top             =   1680
      Width           =   1332
   End
   Begin VB.CommandButton cmdAccept 
      Caption         =   "&Accept Number"
      Height          =   492
      Left            =   360
      TabIndex        =   10
      Top             =   1080
      Width           =   1332
   End
   Begin VB.CommandButton cmdCompute 
      Caption         =   "&Compute"
      Height          =   492
      Left            =   2040
      TabIndex        =   5
      Top             =   1080
      Width           =   1332
   End
   Begin VB.CommandButton cmdNew 
      Caption         =   "&New Sequence"
      Height          =   492
      Left            =   360
      TabIndex        =   4
      Top             =   1680
      Width           =   1332
   End
   Begin VB.TextBox txtInput 
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
      Left            =   2160
      TabIndex        =   3
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblStdDev 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2160
      TabIndex        =   9
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label Label6 
      Caption         =   "Standard Deviation"
      Height          =   495
      Left            =   360
      TabIndex        =   8
      Top             =   2760
      Width           =   975
   End
   Begin VB.Label lblMean 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2160
      TabIndex        =   7
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "Mean"
      Height          =   495
      Left            =   360
      TabIndex        =   6
      Top             =   2280
      Width           =   975
   End
   Begin VB.Label lblNumber 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Enter Number"
      Height          =   255
      Left            =   360
      TabIndex        =   1
      Top             =   720
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Number of Values"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "frmStats"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim NumValues As Integer
Dim SumX As Single
Dim SumX2 As Single
Const vbKeyMinus = 45
Const vbKeyDecPt = 46



Private Sub cmdAccept_Click()
Dim Value As Single
txtInput.SetFocus
NumValues = NumValues + 1
lblNumber.Caption = Str(NumValues)
'Get number and sum number and number-squared
Value = Val(txtInput.Text)
SumX = SumX + Value
SumX2 = SumX2 + Value ^ 2
txtInput.Text = ""
End Sub

Private Sub cmdCompute_Click()
Dim Mean As Single
Dim StdDev As Single
txtInput.SetFocus
'Make sure there are at least two values
If NumValues < 2 Then
  Beep
  Exit Sub
End If
Mean = SumX / NumValues
lblMean.Caption = Str(Mean)
'Compute standard deviation
StdDev = Sqr((NumValues * SumX2 - SumX ^ 2) / (NumValues * (NumValues - 1)))
lblStdDev.Caption = Str(StdDev)
End Sub


Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdNew_Click()
'Initialize all variables
txtInput.SetFocus
NumValues = 0
lblNumber.Caption = "0"
txtInput.Text = ""
lblMean.Caption = ""
lblStdDev.Caption = ""
SumX = 0
SumX2 = 0
End Sub


Private Sub txtInput_KeyPress(KeyAscii As Integer)
'Only allow numbers, minus sign, decimal point, backspace
If (KeyAscii >= vbKey0 And KeyAscii <= vbKey9) Or KeyAscii = vbKeyMinus Or KeyAscii = vbKeyDecPt Or KeyAscii = vbKeyBack Then
  Exit Sub
ElseIf KeyAscii = vbKeyReturn Then
  Call cmdAccept_Click
Else
  KeyAscii = 0
End If
End Sub


