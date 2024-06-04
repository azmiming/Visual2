object Form6: TForm6
  Left = 201
  Top = 157
  Width = 924
  Height = 480
  Caption = 'USER'
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
    Left = 80
    Top = 48
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 56
    Top = 392
    Width = 85
    Height = 13
    Caption = 'MASUKKAN NAME'
  end
  object lbl3: TLabel
    Left = 48
    Top = 80
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl4: TLabel
    Left = 48
    Top = 112
    Width = 57
    Height = 13
    Caption = 'FULL_NAME'
  end
  object lbl5: TLabel
    Left = 48
    Top = 144
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object lbl6: TLabel
    Left = 80
    Top = 176
    Width = 22
    Height = 13
    Caption = 'TIPE'
  end
  object lbl7: TLabel
    Left = 408
    Top = 48
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl8: TLabel
    Left = 400
    Top = 80
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl9: TLabel
    Left = 400
    Top = 112
    Width = 38
    Height = 13
    Caption = 'TELPON'
  end
  object lbl10: TLabel
    Left = 392
    Top = 144
    Width = 52
    Height = 13
    Caption = 'IS_ACTIVE'
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
  object dbgrd1: TDBGrid
    Left = 64
    Top = 232
    Width = 737
    Height = 145
    DataSource = DataModule4.dsuser
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'username'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'full_name'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipe'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'is_active'
        Width = 47
        Visible = True
      end>
  end
  object edt2: TEdit
    Left = 152
    Top = 392
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 312
    Top = 392
    Width = 75
    Height = 33
    Caption = 'CARI'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 400
    Top = 392
    Width = 75
    Height = 33
    Caption = 'RESET'
    TabOrder = 7
    OnClick = btn5Click
  end
  object edt3: TEdit
    Left = 112
    Top = 80
    Width = 273
    Height = 21
    TabOrder = 8
  end
  object edt4: TEdit
    Left = 112
    Top = 112
    Width = 273
    Height = 21
    TabOrder = 9
  end
  object edt5: TEdit
    Left = 112
    Top = 144
    Width = 185
    Height = 21
    TabOrder = 10
  end
  object edt6: TEdit
    Left = 112
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object edt7: TEdit
    Left = 448
    Top = 48
    Width = 241
    Height = 21
    TabOrder = 12
  end
  object edt8: TEdit
    Left = 448
    Top = 80
    Width = 241
    Height = 21
    TabOrder = 13
  end
  object edt9: TEdit
    Left = 448
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 14
  end
  object edt10: TEdit
    Left = 448
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 15
  end
end
