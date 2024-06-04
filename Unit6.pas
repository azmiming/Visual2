unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
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
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
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
  Form6: TForm6;
  a : string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.Zuser.Fields[1].AsString;
a:= DataModule4.Zuser.Fields[0].AsString;
edt3.Text:= DataModule4.Zuser.Fields[2].AsString;
edt4.Text:= DataModule4.Zuser.Fields[3].AsString;
edt5.Text:= DataModule4.Zuser.Fields[4].AsString;
edt6.Text:= DataModule4.Zuser.Fields[5].AsString;
edt7.Text:= DataModule4.Zuser.Fields[6].AsString;
edt8.Text:= DataModule4.Zuser.Fields[7].AsString;
edt9.Text:= DataModule4.Zuser.Fields[8].AsString;
edt10.Text:= DataModule4.Zuser.Fields[9].AsString;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add('insert into user values(null,"'+edt1.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'")');
DataModule4.Zuser.ExecSQL;
edt1.Text := '';
edt3.Text := '';
edt4.Text := '';
edt5.Text := '';
edt6.Text := '';
edt7.Text := '';
edt8.Text := '';
edt9.Text := '';
edt10.Text := '';

DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add ('select * from user');
DataModule4.Zuser.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add('update user set nik ="'+edt1.Text+'" , username ="'+edt3.Text+'",full_name ="'+edt4.Text+'",password ="'+edt5.Text+'", tipe ="'+edt6.Text+'", email ="'+edt7.Text+'",alamat ="'+edt8.Text+'",telp ="'+edt9.Text+'",is_active ="'+edt10.Text+'" where id= "'+a+'"');
DataModule4.Zuser.ExecSQL;
edt1.Text := '';
edt3.Text := '';
edt4.Text := '';
edt5.Text := '';
edt6.Text := '';
edt7.Text := '';
edt8.Text := '';
edt9.Text := '';
edt10.Text := '';

DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add ('select * from user');
DataModule4.Zuser.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add('delete from user where id= "'+a+'"');
DataModule4.Zuser.ExecSQL;
edt1.Text := '';

DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add ('select * from user');
DataModule4.Zuser.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add ('SELECT * FROM user WHERE nik LIKE "'+edt2.Text+'"');
DataModule4.Zuser.ExecSQL;
DataModule4.Zuser.Open;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
DataModule4.Zuser.SQL.Clear;
edt2.Text := '';
DataModule4.Zuser.SQL.Add ('select * from user');
DataModule4.Zuser.Open;
end;

end.
