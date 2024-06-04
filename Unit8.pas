unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edt2: TEdit;
    btn4: TButton;
    btn5: TButton;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  a: string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add('insert into barang values(null,"'+edt1.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'")');
DataModule4.Zbarang.ExecSQL;
edt1.Text := '';
edt3.Text := '';
edt4.Text := '';
edt5.Text := '';
edt6.Text := '';
edt7.Text := '';
edt8.Text := '';
edt9.Text := '';
edt10.Text := '';

DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add ('select * from barang');
DataModule4.Zbarang.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.Zbarang.Fields[1].AsString;
a:= DataModule4.Zbarang.Fields[0].AsString;
edt3.Text:= DataModule4.Zbarang.Fields[2].AsString;
edt4.Text:= DataModule4.Zbarang.Fields[3].AsString;
edt5.Text:= DataModule4.Zbarang.Fields[4].AsString;
edt6.Text:= DataModule4.Zbarang.Fields[5].AsString;
edt7.Text:= DataModule4.Zbarang.Fields[6].AsString;
edt8.Text:= DataModule4.Zbarang.Fields[7].AsString;
edt9.Text:= DataModule4.Zbarang.Fields[8].AsString;
edt10.Text:= DataModule4.Zbarang.Fields[9].AsString;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add('update barang set barkode ="'+edt1.Text+'" , name ="'+edt3.Text+'",harga_jual ="'+edt4.Text+'",harga_beli ="'+edt5.Text+'", stok ="'+edt6.Text+'", kategori_id ="'+edt7.Text+'",satuan_id ="'+edt8.Text+'",user_id ="'+edt9.Text+'",supplier_id ="'+edt10.Text+'" where id= "'+a+'"');
DataModule4.Zbarang.ExecSQL;
edt1.Text := '';
edt3.Text := '';
edt4.Text := '';
edt5.Text := '';
edt6.Text := '';
edt7.Text := '';
edt8.Text := '';
edt9.Text := '';
edt10.Text := '';

DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add ('select * from barang');
DataModule4.Zbarang.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add('delete from barang where id= "'+a+'"');
DataModule4.Zbarang.ExecSQL;
edt1.Text := '';

DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add ('select * from barang');
DataModule4.Zbarang.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add ('SELECT * FROM barang WHERE name LIKE "'+edt2.Text+'"');
DataModule4.Zbarang.ExecSQL;
DataModule4.Zbarang.Open;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
DataModule4.Zbarang.SQL.Clear;
edt2.Text := '';
DataModule4.Zbarang.SQL.Add ('select * from barang');
DataModule4.Zbarang.Open;
end;

end.
