unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    function Primfaktor(var a: integer):integer;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.Primfaktor(var a: integer):integer;
var
  f: boolean;
  x: integer;
begin
 f:=false;
 x:=2;
 repeat
   if 0 = a mod x then
   begin
   f:=true;
   end else
   begin
     x:=x+1;
   end;
 until f=true;
 result:=x;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
prim_f,i,x,c,k,h: integer;

begin
 prim_f:=StrToInt(Edit1.Text);
 x:=StrToInt(Edit1.Text);
 i:=0;
 k:=1;



 memo1.lines.add('Die zu zerlegende Zahl lautet: '+IntToStr(x)+'.');
  repeat
   h:=Primfaktor(prim_f);
   i:=i+1;
   memo1.lines.add('Der '+IntToStr(i)+'. Primfaktor lautet:                   '+inttostr(h));
   prim_f:=round(prim_f/h);
   c:=h;
   k:=k*c;
  until x=k;
  memo1.lines.add('------------------------------------------');


  Edit1.Text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  memo1.clear;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  memo1.clear;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;



end.

