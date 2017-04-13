unit udmMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  System.ioutils;

type
  TdmMain = class(TDataModule)
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    fdConn: TFDConnection;
    qryCategoria: TFDQuery;
    qryLancamento: TFDQuery;
    qryCategoriaid_categoria: TStringField;
    qryCategoriadescricao: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin


  {$IFDEF ANDROID}
    fdConn.Params.Values['DriverID'] := 'SQLite';
    try
      fdConn.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'database.db');
      fdConn.Connected := True;
    except on E:Exception do
      raise Exception.Create('Erro de conexão com banco de dados!' + e.Message);
    end;
  {$ENDIF}

  {$IFDEF MSWINDOWS}
    try
      fdConn.Params.Values['Database'] := 'C:\app_controle_financeiro\db\database.db';
      fdConn.Connected := True;
    except on E:Exception do
      raise Exception.Create('Erro de conexão com banco de dados!' + e.Message);
    end;  
  {$ENDIF}

  
end;

end.
