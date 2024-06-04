unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
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
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
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
  Form7: TForm7;
  a: string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.Zsupplier.Fields[1].AsString;
a:= DataModule4.Zsupplier.Fields[0].AsString;
edt3.Text:= DataModule4.Zsupplier.Fields[2].AsString;
edt4.Text:= DataModule4.Zsupplier.Fields[3].AsString;
edt5.Text:= DataModule4.Zsupplier.Fields[4].AsString;
edt6.Text:= DataModule4.Zsupplier.Fields[5].AsString;
edt7.Text:= DataModule4.Zsupplier.Fields[6].AsString;
edt8.Text:= DataModule4.Zsupplier.Fields[7].AsString;
edt9.Text:= DataModule4.Zsupplier.Fields[8].AsString;
edt10.Text:= DataModule4.Zsupplier.Fields[9].AsString;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('insert into supplier values(null,"'+edt1.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'")');
DataModule4.Zsupplier.ExecSQL;
edt1.Text := '';
edt3.Text := '';
edt4.Text := '';
edt5.Text := '';
edt6.Text := '';
edt7.Text := '';
edt8.Text := '';
edt9.Text := '';
edt10.Text := '';

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add ('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('update supplier set nik ="'+edt1.Text+'" , name ="'+edt3.Text+'",telp ="'+edt4.Text+'",email ="'+edt5.Text+'", alamat ="'+edt6.Text+'", perusahaan ="'+edt7.Text+'",name_bank ="'+edt8.Text+'",name_akun_bank ="'+edt9.Text+'",no_akun_bank ="'+edt10.Text+'" where id= "'+a+'"');
DataModule4.Zsupplier.ExecSQL;
edt1.Text := '';
edt3.Text := '';
edt4.Text := '';
edt5.Text := '';
edt6.Text := '';
edt7.Text := '';
edt8.Text := '';
edt9.Text := '';
edt10.Text := '';

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add ('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('delete from supplier where id= "'+a+'"');
DataModule4.Zsupplier.ExecSQL;
edt1.Text := '';

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add ('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add ('SELECT * FROM supplier WHERE nik LIKE "'+edt2.Text+'"');
DataModule4.Zsupplier.ExecSQL;
DataModule4.Zsupplier.Open;
end;

procedure TForm7.btn5Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
edt2.Text := '';
DataModule4.Zsupplier.SQL.Add ('select * from supplier');
DataModule4.Zsupplier.Open;
end;

end.
