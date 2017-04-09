program MenuMaterialDesign;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufMain in 'ufMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
