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
  Pais.Nome:='Sem Dados';
  Pais.NomeOficial:='Sem Dados';
  Pais.Capital:='Sem Dados';
  Pais.Regiao:='Sem Dados';
  Pais.Populacao:='Sem Dados';
  Pais.Moeda:='Sem Dados';


  JsonArray:= TJSONObject.ParseJSONValue(dtmServiceApi.RESTResponse.Content) as TJSONArray;

  try
    JsonObj:= JsonArray.Items[0] as TJSONObject;

    // --------- Nome do país -----------
   // if Assigned(JsonObj.GetValue('name') as TJSONObject) then
    NameObj:= JsonObj.GetValue('name') as TJSONObject;

    Pais.Nome:=  NameObj.GetValue('common').Value;
    Pais.NomeOficial:= NameObj.GetValue('official').Value;

    // --------- Capital -----------
    if Assigned((JsonObj.GetValue('capital') as TJSONArray)) then
    Pais.Capital:= (JsonObj.GetValue('capital') as TJSONArray).Items[0].Value;


    // --------- Região -----------
    if Assigned(JsonObj.GetValue('region')) then
    Pais.Regiao:= JsonObj.GetValue('region').Value;

    // --------- População --------------
    if Assigned(JsonObj.GetValue('population')) then
    Pais.Populacao:= JsonObj.GetValue('population').Value;

    // ---------- Moeda  -----------
    CurrencyObj:= JsonObj.GetValue('currencies') as TJSONObject;

    if Assigned(CurrencyObj) then
    begin
    CurrencyPair:= CurrencyObj.Pairs[0];
    CurrencyData:= CurrencyPair.JsonValue as TJSONObject;

    Pais.Moeda:= CurrencyData.GetValue('name').Value;
    end;

    // ------- Imagem -----------------
    BandeiraObj:= JsonObj.GetValue('flags') as TJSONObject;
    Pais.Bandeira:= BandeiraObj.GetValue('png').Value;

  finally
    JSONArray.Free;
  end;

Result:= Pais;

end;

end.
