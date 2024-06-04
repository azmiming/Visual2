object Form8: TForm8
  Left = 352
  Top = 132
  Width = 928
  Height = 480
  Caption = 'BARANG'
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
    Left = 56
    Top = 48
    Width = 48
    Height = 13
    Caption = 'BARCODE'
  end
  object lbl2: TLabel
    Left = 56
    Top = 392
    Width = 85
    Height = 13
    Caption = 'MASUKKAN NAME'
  end
  object lbl3: TLabel
    Left = 72
    Top = 80
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object lbl4: TLabel
    Left = 48
    Top = 112
    Width = 62
    Height = 13
    Caption = 'HARGA JUAL'
  end
  object lbl5: TLabel
    Left = 48
    Top = 144
    Width = 59
    Height = 13
    Caption = 'HARGA BELI'
  end
  object lbl6: TLabel
    Left = 80
    Top = 176
    Width = 26
    Height = 13
    Caption = 'STOK'
  end
  object lbl7: TLabel
    Left = 392
    Top = 48
    Width = 65
    Height = 13
    Caption = 'KATEGORI ID'
  end
  object lbl8: TLabel
    Left = 400
    Top = 80
    Width = 54
    Height = 13
    Caption = 'SATUAN ID'
  end
  object lbl9: TLabel
    Left = 416
    Top = 112
    Width = 40
    Height = 13
    Caption = 'USER ID'
  end
  object lbl10: TLabel
    Left = 400
    Top = 144
    Width = 61
    Height = 13
    Caption = 'SUPPLIER ID'
  end
  object edt1: TEdit
    Left = 112
    Top = 48
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 288
    Top = 184
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 376
    Top = 184
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 464
    Top = 184
    Width = 75
    Height = 33
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object edt2: TEdit
    Left = 152
    Top = 392
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object btn4: TButton
    Left = 312
    Top = 392
    Width = 75
    Height = 33
    Caption = 'CARI'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 400
    Top = 392
    Width = 75
    Height = 33
    Caption = 'RESET'
    TabOrder = 6
    OnClick = btn5Click
  end
  object edt3: TEdit
    Left = 112
    Top = 80
    Width = 273
    Height = 21
    TabOrder = 7
  end
  object edt4: TEdit
    Left = 112
    Top = 112
    Width = 273
    Height = 21
    TabOrder = 8
  end
  object edt5: TEdit
    Left = 112
    Top = 144
    Width = 185
    Height = 21
    TabOrder = 9
  end
  object edt6: TEdit
    Left = 112
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object edt7: TEdit
    Left = 464
    Top = 48
    Width = 241
    Height = 21
    TabOrder = 11
  end
  object edt8: TEdit
    Left = 464
    Top = 80
    Width = 241
    Height = 21
    TabOrder = 12
  end
  object edt9: TEdit
    Left = 464
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 13
  end
  object edt10: TEdit
    Left = 464
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 224
    Width = 641
    Height = 153
    DataSource = DataModule4.dsbarang
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
