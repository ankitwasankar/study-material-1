VERSION 5.00
Begin VB.Form frmFormFun 
   Caption         =   "Form Fun"
   ClientHeight    =   2310
   ClientLeft      =   3930
   ClientTop       =   2895
   ClientWidth     =   3810
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   2310
   ScaleWidth      =   3810
   Begin VB.CommandButton cmdShow 
      Caption         =   "Show Buttons"
      Height          =   495
      Left            =   2040
      TabIndex        =   5
      Top             =   1440
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdBlue 
      Caption         =   "Blue Form"
      Height          =   495
      Left            =   2040
      TabIndex        =   4
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton cmdRed 
      Caption         =   "Red Form"
      Height          =   495
      Left            =   2040
      TabIndex        =   3
      Top             =   240
      Width           =   1215
   End
   Begin VB.CommandButton cmdHide 
      Caption         =   "Hide Buttons"
      Height          =   495
      Left            =   600
      TabIndex        =   2
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton cmdGrow 
      Caption         =   "Grow Form"
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton cmdShrink 
      Caption         =   "Shrink Form"
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   1215
   End
End
Attribute VB_Name = "frmFormFun"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdBlue_Click()
'Make form blue
frmFormFun.BackColor = vbBlue
End Sub




Private Sub cmdGrow_Click()
'Grow the form
'Increase the form height by 100 twips
frmFormFun.Height = frmFormFun.Height + 100
'Increase the form width by 100 twips
frmFormFun.Width = frmFormFun.Width + 100
End Sub

Private Sub cmdHide_Click()
'Hide all buttons but cmdShow
cmdGrow.Visible = False
cmdShrink.Visible = False
cmdHide.Visible = False
cmdRed.Visible = False
cmdBlue.Visible = False
'Show cmdShow button
cmdShow.Visible = True
End Sub

Private Sub cmdRed_Click()
'Make form red
frmFormFun.BackColor = vbRed
End Sub

Private Sub cmdShow_Click()
'Show all buttons but cmdShow
cmdGrow.Visible = True
cmdShrink.Visible = True
cmdHide.Visible = True
cmdRed.Visible = True
cmdBlue.Visible = True
'Hide cmdShow button
cmdShow.Visible = False
End Sub

Private Sub cmdShrink_Click()
'Shrink the form
'Decrease the form height by 100 twips
frmFormFun.Height = frmFormFun.Height - 100
'Decrease the form width by 100 twips
frmFormFun.Width = frmFormFun.Width - 100
End Sub





Private Sub Form_Click()
'Grow the form
'Increase the form height by 100 twips
frmFormFun.Height = frmFormFun.Height + 100
'Increase the form width by 100 twips
frmFormFun.Width = frmFormFun.Width + 100
End Sub

