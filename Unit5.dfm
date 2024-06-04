object Form5: TForm5
  Left = 210
  Top = 152
  Width = 928
  Height = 480
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 72
    Top = 16
    Width = 31
    Height = 13
    Caption = 'NAME '
  end
  object lbl2: TLabel
    Left = 56
    Top = 312
    Width = 85
    Height = 13
    Caption = 'MASUKKAN NAME'
  end
  object lbl3: TLabel
    Left = 64
    Top = 48
    Width = 42
    Height = 13
    Caption = 'Deskripsi'
  end
  object edt1: TEdit
    Left = 112
    Top = 16
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 112
    Top = 88
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 200
    Top = 88
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 288
    Top = 88
    Width = 75
    Height = 33
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 112
    Top = 136
    Width = 320
    Height = 145
    DataSource = DataModule4.dssatuan
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 152
    Top = 312
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 312
    Top = 312
    Width = 75
    Height = 33
    Caption = 'CARI'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 312
    Top = 360
    Width = 75
    Height = 33
    Caption = 'RESET'
    TabOrder = 7
    OnClick = btn5Click
  end
  object edt3: TEdit
    Left = 112
    Top = 48
    Width = 273
    Height = 21
    TabOrder = 8
  end
end
