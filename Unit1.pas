unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.CheckLst, Clipbrd;

type
  TForm1 = class(TForm)
    Special_Box: TCheckListBox;
    Logo: TImage;
    ScrollBar_Min: TScrollBar;
    Min_Length: TLabel;
    ScrollBar_Max: TScrollBar;
    Max_Length: TLabel;
    Password: TEdit;
    Gen: TImage;
    special_characters: TLabel;
    Random_Password_Generator: TLabel;
    Min: TLabel;
    Max: TLabel;
    Aa1_box: TCheckListBox;
    Image1: TImage;
    procedure ScrollBar_MinChange(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure GenClick(Sender: TObject);
    procedure ScrollBar_MaxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
//pre-check items in boxes
begin
  //items
  //Aa1_box.CheckAll(true);
  //Special_Box.CheckAll(true);
  Aa1_box.State[0]:=cbChecked;
  Aa1_box.State[1]:=cbChecked;
  Aa1_box.State[2]:=cbChecked;
  Special_Box.State[0]:=cbChecked;
  Special_Box.State[1]:=cbChecked;
  Special_Box.State[2]:=cbChecked;
  Special_Box.State[3]:=cbChecked;
  Special_Box.State[4]:=cbChecked;
  Special_Box.State[5]:=cbChecked;
  Special_Box.State[6]:=cbChecked;
  Special_Box.State[7]:=cbChecked;
  Special_Box.State[8]:=cbChecked;
  Special_Box.State[9]:=cbChecked;
  Special_Box.State[10]:=cbChecked;
  Special_Box.State[11]:=cbChecked;
  Special_Box.State[12]:=cbChecked;
  Special_Box.State[13]:=cbChecked;
  Special_Box.State[14]:=cbChecked;
  Special_Box.State[15]:=cbChecked;
  Special_Box.State[16]:=cbChecked;
  Special_Box.State[17]:=cbChecked;
  Special_Box.State[18]:=cbChecked;
  Special_Box.State[19]:=cbChecked;
  Special_Box.State[20]:=cbChecked;
  Special_Box.State[21]:=cbChecked;
  Special_Box.State[22]:=cbChecked;
  Special_Box.State[23]:=cbChecked;
  Special_Box.State[24]:=cbChecked;
  Special_Box.State[25]:=cbChecked;
  Special_Box.State[26]:=cbChecked;
  Special_Box.State[27]:=cbChecked;
  Special_Box.State[28]:=cbChecked;
end;

procedure TForm1.GenClick(Sender: TObject);
//generate random password
const
  caps: string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  lows: string = 'abcdefghijklmnopqrstuvwxyz';
  nums: string = '0123456789';
  sp00: string = ' ';
  sp01: string = '!';
  sp02: string = '"';
  sp03: string = '#';
  sp04: string = '$';
  sp05: string = '%';
  sp06: string = '&';
  sp07: string = '''';
  sp08: string = '()';
  sp09: string = '*';
  sp10: string = '+';
  sp11: string = ',';
  sp12: string = '-';
  sp13: string = '.';
  sp14: string = '/';
  sp15: string = ':';
  sp16: string = ';';
  sp17: string = '<>';
  sp18: string = '=';
  sp19: string = '?';
  sp20: string = '@';
  sp21: string = '[]';
  sp22: string = '\';
  sp23: string = '^';
  sp24: string = '_';
  sp25: string = '`';
  sp26: string = '{}';
  sp27: string = '|';
  sp28: string = '~';
var
  ts, pw: string;
  x, L_Min, L_Max, L_Set, L_Rand: integer;
begin
  L_Min := ScrollBar_Min.Position;
  L_Max := ScrollBar_Max.Position;
  //copy allowed characters to ts
  ts:='';
  pw:='';
  if Aa1_box.State[0] = cbChecked then ts:=ts+caps;
  if Aa1_box.State[1] = cbChecked then ts:=ts+lows;
  if Aa1_box.State[2] = cbChecked then ts:=ts+nums;
  if Special_Box.State[0] = cbChecked then ts:=ts+sp00;
  if Special_Box.State[1] = cbChecked then ts:=ts+sp01;
  if Special_Box.State[2] = cbChecked then ts:=ts+sp02;
  if Special_Box.State[3] = cbChecked then ts:=ts+sp03;
  if Special_Box.State[4] = cbChecked then ts:=ts+sp04;
  if Special_Box.State[5] = cbChecked then ts:=ts+sp05;
  if Special_Box.State[6] = cbChecked then ts:=ts+sp06;
  if Special_Box.State[7] = cbChecked then ts:=ts+sp07;
  if Special_Box.State[8] = cbChecked then ts:=ts+sp08;
  if Special_Box.State[9] = cbChecked then ts:=ts+sp09;
  if Special_Box.State[10] = cbChecked then ts:=ts+sp10;
  if Special_Box.State[11] = cbChecked then ts:=ts+sp11;
  if Special_Box.State[12] = cbChecked then ts:=ts+sp12;
  if Special_Box.State[13] = cbChecked then ts:=ts+sp13;
  if Special_Box.State[14] = cbChecked then ts:=ts+sp14;
  if Special_Box.State[15] = cbChecked then ts:=ts+sp15;
  if Special_Box.State[16] = cbChecked then ts:=ts+sp16;
  if Special_Box.State[17] = cbChecked then ts:=ts+sp17;
  if Special_Box.State[18] = cbChecked then ts:=ts+sp18;
  if Special_Box.State[19] = cbChecked then ts:=ts+sp19;
  if Special_Box.State[20] = cbChecked then ts:=ts+sp20;
  if Special_Box.State[21] = cbChecked then ts:=ts+sp21;
  if Special_Box.State[22] = cbChecked then ts:=ts+sp22;
  if Special_Box.State[23] = cbChecked then ts:=ts+sp23;
  if Special_Box.State[24] = cbChecked then ts:=ts+sp24;
  if Special_Box.State[25] = cbChecked then ts:=ts+sp25;
  if Special_Box.State[26] = cbChecked then ts:=ts+sp26;
  if Special_Box.State[27] = cbChecked then ts:=ts+sp27;
  if Special_Box.State[28] = cbChecked then ts:=ts+sp28;
  L_Set := length(ts);
  L_Rand := L_Min + random(L_Max-L_Min);
  for x := 1 to L_Rand do
    begin
      pw:=pw+ts[random(L_Set)+1];
    end;
  password.Text:=pw;
end;

procedure TForm1.Image1Click(Sender: TObject);
var
  tempstring: string;
//copy to clipboard
begin
  clipboard.Clear;
  tempstring:=password.Text;
  clipboard.AsText:=tempstring;
end;

procedure TForm1.ScrollBar_MaxChange(Sender: TObject);
//max length changed, update display
begin
  Max.Caption := inttostr(ScrollBar_Max.Position);
  if ScrollBar_Max.Position<ScrollBar_Min.Position then
  begin
    ScrollBar_Min.Position:=ScrollBar_Max.Position;
    Min.Caption := Max.Caption;
  end;
end;

procedure TForm1.ScrollBar_MinChange(Sender: TObject);
//min length changed, update display
begin
  Min.Caption := inttostr(ScrollBar_Min.Position);
  if ScrollBar_Min.Position>ScrollBar_Max.Position then
  begin
    ScrollBar_Max.Position:=ScrollBar_Min.Position;
    Max.Caption:=Min.Caption;
  end;
end;

end.
