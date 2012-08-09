object dtmTestConnect: TdtmTestConnect
  OldCreateOrder = False
  Left = 381
  Top = 268
  Height = 150
  Width = 215
  object cnWeb: TZConnection
    Protocol = 'mysql'
    Port = 3306
    AutoCommit = False
    Left = 92
    Top = 12
  end
  object cnLocal: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'sigac'
    User = 'root'
    AutoCommit = False
    Left = 20
    Top = 12
  end
end
