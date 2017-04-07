program money;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufPrincipal in 'ufPrincipal.pas' {fPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
