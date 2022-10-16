object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 462
  Width = 448
  object Connection: TFDConnection
    Params.Strings = (
      'Database=C:\SISTEMA_NEZZ\Dados\NEZZ.fdb'
      'Password=masterkey'
      'User_Name=SYSDBA'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = Transaction
    Left = 224
    Top = 16
  end
  object DataSource: TDataSource
    Left = 224
    Top = 64
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = ' '
    Left = 224
    Top = 200
  end
  object Transaction: TFDTransaction
    Connection = Connection
    Left = 224
    Top = 136
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 224
    Top = 257
  end
end
