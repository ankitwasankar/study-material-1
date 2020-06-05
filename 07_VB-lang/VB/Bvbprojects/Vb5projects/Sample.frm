VERSION 5.00
Begin VB.Form frmSample 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Beginning Visual Basic - Sample"
   ClientHeight    =   5100
   ClientLeft      =   645
   ClientTop       =   1020
   ClientWidth     =   7035
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   5100
   ScaleWidth      =   7035
   Begin VB.Frame fraColor 
      Caption         =   "Color"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2760
      TabIndex        =   0
      Top             =   2760
      Width           =   2775
      Begin VB.OptionButton optBlack 
         Caption         =   "Black"
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
         Left            =   1440
         TabIndex        =   4
         Top             =   600
         Width           =   1215
      End
      Begin VB.OptionButton optGreen 
         Caption         =   "Green"
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
         Left            =   1440
         TabIndex        =   3
         Top             =   240
         Width           =   1215
      End
      Begin VB.OptionButton optRed 
         Caption         =   "Red"
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
         Left            =   240
         TabIndex        =   2
         Top             =   600
         Width           =   1215
      End
      Begin VB.OptionButton optBlue 
         Caption         =   "Blue"
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
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.CommandButton cmdBall 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6120
      TabIndex        =   18
      Top             =   4560
      Width           =   735
   End
   Begin VB.Timer timBall 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   3840
      Top             =   4680
   End
   Begin VB.PictureBox picBall 
      BackColor       =   &H0000FFFF&
      Height          =   4335
      Left            =   6120
      ScaleHeight     =   4275
      ScaleWidth      =   675
      TabIndex        =   17
      Top             =   120
      Width           =   735
      Begin VB.Shape shpBall 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         FillColor       =   &H00FF0000&
         FillStyle       =   7  'Diagonal Cross
         Height          =   495
         Left            =   120
         Shape           =   3  'Circle
         Top             =   1560
         Width           =   495
      End
   End
   Begin VB.Frame fraPick 
      Caption         =   "Pick a Number"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   120
      TabIndex        =   13
      Top             =   2760
      Width           =   1815
      Begin VB.HScrollBar hsbPick 
         Height          =   255
         LargeChange     =   10
         Left            =   360
         Max             =   100
         TabIndex        =   15
         Top             =   720
         Width           =   1095
      End
      Begin VB.Label lblPick 
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
         Left            =   360
         TabIndex        =   14
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame fraStuff 
      Caption         =   "Stuff"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   1575
      Begin VB.CheckBox chkCard 
         Caption         =   "Card"
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
         TabIndex        =   16
         Top             =   1320
         Width           =   1095
      End
      Begin VB.CheckBox chkFootball 
         Caption         =   "Football"
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
         TabIndex        =   12
         Top             =   2040
         Width           =   1095
      End
      Begin VB.CheckBox chkBaseball 
         Caption         =   "Baseball"
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
         TabIndex        =   11
         Top             =   1680
         Width           =   1335
      End
      Begin VB.CheckBox chkHouse 
         Caption         =   "House"
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
         TabIndex        =   10
         Top             =   960
         Width           =   1095
      End
      Begin VB.CheckBox chkTruck 
         Caption         =   "Truck"
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
         Top             =   600
         Width           =   1095
      End
      Begin VB.CheckBox chkCar 
         Caption         =   "Car"
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
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.TextBox txtBox 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   6
      Top             =   3960
      Width           =   2775
   End
   Begin VB.CommandButton cmdBeep 
      Caption         =   "Beep!"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3960
      TabIndex        =   5
      Top             =   4080
      Width           =   975
   End
   Begin VB.Image imgFootball 
      Height          =   1095
      Left            =   4680
      Picture         =   "Sample.frx":0000
      Stretch         =   -1  'True
      Top             =   1560
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Image imgBaseball 
      Height          =   1095
      Left            =   3240
      Picture         =   "Sample.frx":08A2
      Stretch         =   -1  'True
      Top             =   1560
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Image imgTruck 
      Height          =   1095
      Left            =   3240
      Picture         =   "Sample.frx":1AA4
      Stretch         =   -1  'True
      Top             =   240
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Image imgCard 
      Height          =   1095
      Left            =   1800
      Picture         =   "Sample.frx":3AE6
      Stretch         =   -1  'True
      Top             =   1560
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Image imgHouse 
      Height          =   1095
      Left            =   4680
      Picture         =   "Sample.frx":4888
      Stretch         =   -1  'True
      Top             =   240
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Image imgCar 
      Height          =   1095
      Left            =   1800
      Picture         =   "Sample.frx":4F2A
      Stretch         =   -1  'True
      Top             =   240
      Visible         =   0   'False
      Width           =   1335
   End
End
Attribute VB_Name = "frmSample"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim BallY As Integer, BallDir As Integer














Private Sub chkBaseball_Click()
If chkBaseball.Value = vbChecked Then
  imgBaseball.Visible = True
Else
  imgBaseball.Visible = False
End If
End Sub

Private Sub chkCar_Click()
If chkCar.Value = vbChecked Then
  imgcar.Visible = True
Else
  imgcar.Visible = False
End If
End Sub


Private Sub chkCard_Click()
If chkCard.Value = vbChecked Then
  imgCard.Visible = True
Else
  imgCard.Visible = False
End If
End Sub


Private Sub chkFootball_Click()
If chkFootball.Value = vbChecked Then
  imgFootball.Visible = True
Else
  imgFootball.Visible = False
End If
End Sub


Private Sub chkHouse_Click()
If chkHouse.Value = vbChecked Then
  imgHouse.Visible = True
Else
  imgHouse.Visible = False
End If
End Sub


Private Sub chkTruck_Click()
If chkTruck.Value = vbChecked Then
  imgTruck.Visible = True
Else
  imgTruck.Visible = False
End If
End Sub


Private Sub cmdBall_Click()
If timBall.Enabled = True Then
  timBall.Enabled = False
  cmdBall.Caption = "Start"
Else
  timBall.Enabled = True
  cmdBall.Caption = "Stop"
End If
End Sub

Private Sub cmdBeep_Click()
Beep
End Sub

Private Sub Form_Load()
optBlue.Value = True
frmSample.BackColor = vbBlue
BallY = picBall.ScaleHeight - shpBall.Height
shpBall.Top = BallY
BallDir = -1
End Sub


Private Sub hsbPick_Change()
lblPick.Caption = Str(hsbPick.Value)
End Sub


Private Sub hsbPick_Scroll()
lblPick.Caption = Str(hsbPick.Value)
End Sub


Private Sub optBlack_Click()
frmSample.BackColor = vbBlack
End Sub

Private Sub optBlue_Click()
frmSample.BackColor = vbBlue
End Sub


Private Sub optGreen_Click()
frmSample.BackColor = vbGreen
End Sub


Private Sub optRed_Click()
frmSample.BackColor = vbRed
End Sub


Private Sub timBall_Timer()
BallY = BallY + BallDir * picBall.ScaleHeight / 50
If BallY < 0 Then
  Beep
  BallY = 0
  BallDir = 1
ElseIf BallY > picBall.ScaleHeight - shpBall.Height Then
  Beep
  BallY = picBall.ScaleHeight - shpBall.Height
  BallDir = -1
End If
shpBall.Top = BallY
End Sub


