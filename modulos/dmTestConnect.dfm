object dtmTestConnect: TdtmTestConnect
  OldCreateOrder = False
  Left = 381
  Top = 268
  Height = 150
  Width = 215
  object cnWeb: TZConnection
    Protocol = 'mysql-5'
    Port = 3306
    Left = 92
    Top = 12
  end
  object cnLocal: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Port = 3306
    Database = 'sigac'
    User = 'root'
    Left = 20
    Top = 12
  end
end
