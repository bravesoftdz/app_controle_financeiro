object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 443
  Width = 505
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 64
    Top = 24
  end
  object fdConn: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'Database=C:\app_controle_financeiro\db\database.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 160
    Top = 24
  end
  object qryCategoria: TFDQuery
    Connection = fdConn
    SQL.Strings = (
      'select * from tab_categoria')
    Left = 56
    Top = 120
    object qryCategoriaid_categoria: TStringField
      FieldName = 'id_categoria'
      Origin = 'id_categoria'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
    object qryCategoriadescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
  end
  object qryLancamento: TFDQuery
    Connection = fdConn
    SQL.Strings = (
      'select * from tab_lancamento')
    Left = 160
    Top = 120
  end
end
