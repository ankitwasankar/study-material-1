VERSION 5.00
Begin VB.Form frmCalendar 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "My Calendar"
   ClientHeight    =   2865
   ClientLeft      =   2295
   ClientTop       =   1650
   ClientWidth     =   5790
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   2865
   ScaleWidth      =   5790
   Begin VB.Timer timDisplay 
      Interval        =   1000
      Left            =   240
      Top             =   2160
   End
   Begin VB.Label lblTime 
      Caption         =   "00:00:00 PM"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   4
      Top             =   720
      Width           =   3375
   End
   Begin VB.Label lblNumber 
      Alignment       =   2  'Center
      Caption         =   "31"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   72
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   2640
      TabIndex        =   3
      Top             =   480
      Width           =   3135
   End
   Begin VB.Label lblYear 
      Alignment       =   2  'Center
      Caption         =   "1998"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2520
      TabIndex        =   2
      Top             =   2040
      Width           =   3255
   End
   Begin VB.Label lblDay 
      Caption         =   "Sunday"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   1
      Top             =   0
      Width           =   2895
   End
   Begin VB.Label lblMonth 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "March"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   2520
      TabIndex        =   0
      Top             =   0
      Width           =   3255
   End
End
Attribute VB_Name = "frmCalendar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub timDisplay_Timer()
Dim Today As Variant
Today = Now
lblDay.Caption = Format(Today, "dddd")
lblMonth.Caption = Format(Today, "mmmm")
lblYear.Caption = Format(Today, "yyyy")
lblNumber.Caption = Format(Today, "d")
lblTime.Caption = Format(Today, "h:mm:ss ampm")
End Sub


