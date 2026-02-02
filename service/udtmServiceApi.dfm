object dtmServiceApi: TdtmServiceApi
  Height = 127
  Width = 297
  object RESTClient: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 24
    Top = 24
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 104
    Top = 24
  end
  object RESTResponse: TRESTResponse
    Left = 192
    Top = 24
  end
end
