unit uModelPais;

interface

uses
  System.JSON,
  udtmServiceApi,
  System.Generics.Collections;

type
  TPais = record
    Nome: string;
    NomeOficial: string;
    Capital: string;
    Regiao: string;
    Populacao: string;
    Moeda: string;
    Bandeira:string;
  private
    { Private declarations }
  public
    { Public declarations }
  function PreencheVar: TPais;

end;

implementation

{ TPais }

function TPais.PreencheVar: TPais;
var
  Pais: Tpais;

  JsonArray: TJSONArray;
  JsonObj,BandeiraObj,NameObj,CurrencyObj,CurrencyData: TJSONObject;
  CurrencyPair: TJSONPair;

begin
  JsonArray:= TJSONObject.ParseJSONValue(dtmServiceApi.RESTResponse.Content) as TJSONArray;

  try
    JsonObj:= JsonArray.Items[0] as TJSONObject;

    // --------- Nome do país -----------
    NameObj:= JsonObj.GetValue('name') as TJSONObject;

    Pais.Nome:=  NameObj.GetValue('common').Value;
    Pais.NomeOficial:= NameObj.GetValue('official').Value;

    // --------- Capital -----------
    Pais.Capital:= (JsonObj.GetValue('capital') as TJSONArray).Items[0].Value;

    // --------- Região -----------
    Pais.Regiao:= JsonObj.GetValue('region').Value;

    // --------- População --------------
    Pais.Populacao:= JsonObj.GetValue('population').Value;

     // ---------- Moeda  -----------
    CurrencyObj:= JsonObj.GetValue('currencies') as TJSONObject;
    CurrencyPair:= CurrencyObj.Pairs[0];
    CurrencyData:= CurrencyPair.JsonValue as TJSONObject;

    Pais.Moeda:= CurrencyData.GetValue('name').Value;

    // ------- Imagem -----------------
    BandeiraObj:= JsonObj.GetValue('flags') as TJSONObject;
    Pais.Bandeira:= BandeiraObj.GetValue('png').Value;

  finally
    JSONArray.Free;
  end;

Result:= Pais;

end;

end.
