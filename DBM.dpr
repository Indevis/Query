program DBM;

uses
  System.StartUpCopy,
  FMX.Forms,
  DPMUnit1 in 'DPMUnit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
