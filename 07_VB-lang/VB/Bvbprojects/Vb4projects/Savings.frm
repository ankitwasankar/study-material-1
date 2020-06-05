VERSION 4.00
Begin VB.Form frmSavings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Savings Account"
   ClientHeight    =   3075
   ClientLeft      =   3735
   ClientTop       =   1635
   ClientWidth     =   3135
   Height          =   3495
   Left            =   3675
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3075
   ScaleWidth      =   3135
   Top             =   1275
   Width           =   3255
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      Height          =   495
      Left            =   1680
      TabIndex        =   7
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton cmdCompute 
      Caption         =   "Compute"
      Height          =   495
      Left            =   240
      TabIndex        =   6
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox txtMonths 
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1680
      TabIndex        =   5
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox txtDeposit 
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1680
      TabIndex        =   4
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label lblTotal 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1680
      TabIndex        =   3
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label lblTotalHeading 
      Caption         =   "Total Savings"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label lblMonthsHeading 
      Caption         =   "Number of Months"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblDepositHeading 
      Caption         =   "Monthly Deposit"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1215
   End
End
Attribute VB_Name = "frmSavings"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim Deposit As Integer
Dim Months As Integer
Dim Total As Integer

Private Sub cmdCompute_Click()
'Get deposit amount
Deposit = Val(txtDeposit.Text)
'Get number of months
Months = Val(txtMonths.Text)
'Compute total savings
Total = Deposit * Months
'Display Total
lblTotal.Caption = "$" + Str(Total)
End Sub

Private Sub cmdExit_Click()
End
End Sub




