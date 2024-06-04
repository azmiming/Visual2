object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 784
  Top = 124
  Height = 209
  Width = 457
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\zemin\Downloads\VISUAL2 TUGAS\libmysql.dll'
    Left = 40
    Top = 72
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 136
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 88
    Top = 104
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 184
    Top = 24
  end
  object Zuser: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 240
    Top = 24
  end
  object Zsupplier: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 304
    Top = 32
  end
  object Zbarang: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 360
    Top = 32
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 160
    Top = 104
  end
  object dsuser: TDataSource
    DataSet = Zuser
    Left = 224
    Top = 104
  end
  object dssupplier: TDataSource
    DataSet = Zsupplier
    Left = 296
    Top = 112
  end
  object dsbarang: TDataSource
    DataSet = Zbarang
    Left = 352
    Top = 112
  end
end
