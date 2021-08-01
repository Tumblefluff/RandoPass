program Project1;

uses
  Vcl.Forms,
  RandoPass in 'RandoPass.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
