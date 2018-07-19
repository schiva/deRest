object WebModule1: TWebModule1
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'WebActionItem1'
      PathInfo = '/test'
      Producer = RESTProducer1
    end>
  Height = 230
  Width = 415
  object RESTAPI1: TRESTAPI
    Collections = <
      item
        Connection = FDConnection1
        TableName = 'tbl_forex'
        KeyField = 'str_pkid'
        Endpoint = 'forex'
      end>
    Left = 56
    Top = 144
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=forex'
      'User_Name=forex'
      'Password=forex'
      'DriverID=MySQL')
    Left = 56
    Top = 16
  end
  object RESTProducer1: TRESTProducer
    RESTAPI = RESTAPI1
    Left = 56
    Top = 88
  end
end
