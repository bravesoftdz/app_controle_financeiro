program money;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufMain in 'ufMain.pas' {Form1},
  udmMain in 'udmMain.pas' {dmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
