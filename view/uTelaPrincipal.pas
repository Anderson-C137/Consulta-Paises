unit uTelaPrincipal;

interface

uses
  udtmServiceApi,
  uModelPais,
  System.Net.HttpClient,
  System.Net.HttpClientComponent,
  System.DateUtils,
  Vcl.Imaging.pngimage,
  REST.Types,
  System.StrUtils,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmTelaPrincipal = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    lblNomeOficial: TLabel;
    edtNomeOficial: TEdit;
    Label3: TLabel;
    edtCapital: TEdit;
    Label4: TLabel;
    edtRegiao: TEdit;
    Label5: TLabel;
    edtPopulacao: TEdit;
    Label6: TLabel;
    edtMoeda: TEdit;
    btnConsulta: TButton;
    btnAleatorio: TButton;
    imgBandeira: TImage;
    lblBandeira: TLabel;
    cbbListaPaises: TComboBox;
    lblListaPaises: TLabel;
    procedure btnConsultaClick(Sender: TObject);
    procedure btnAleatorioClick(Sender: TObject);
    procedure cbbListaPaisesSelect(Sender: TObject);
  private
    { Private declarations }
    function PaisAleatorio: string;
    procedure PreencheDados;
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

procedure TfrmTelaPrincipal.btnAleatorioClick(Sender: TObject);
var
  Numero: string;

begin
  dtmServiceApi.RESTClient.BaseURL:= 'https://restcountries.com/v3.1/';
  dtmServiceApi.RESTRequest.Method:= rmGET;
  Numero:= PaisAleatorio;

repeat
  dtmServiceApi.RESTRequest.Resource:=  'alpha/'+ Numero;
  dtmServiceApi.RESTResponse.ContentType:= 'application/json';
  dtmServiceApi.RESTRequest.Execute;

 if (dtmServiceApi.RestResponse.StatusCode = 200) then
    PreencheDados
 else
    Numero := PaisAleatorio;

until (dtmServiceApi.RestResponse.StatusCode = 200);

end;

procedure TfrmTelaPrincipal.btnConsultaClick(Sender: TObject);

begin
  dtmServiceApi.RESTClient.BaseURL:= 'https://restcountries.com/v3.1/';
  dtmServiceApi.RESTRequest.Method:= rmGET;
  dtmServiceApi.RESTRequest.Resource:= 'translation/' + edtNome.Text;
  dtmServiceApi.RESTResponse.ContentType:= 'application/json';
  dtmServiceApi.RESTRequest.Execute;


  if edtNome.Text= ''  then
     ShowMessage('O campo de consulta não pode estar vazio')
  else
    if (dtmServiceApi.RestResponse.StatusCode <> 200) then
           ShowMessage('Não foi possível encontrar esse país.');


  try
    if (dtmServiceApi.RestResponse.StatusCode = 200) then
        PreencheDados
  except
      on E: Exception do
      raise Exception.Create('Falha ao obter os Dados da api: '+ sLineBreak +
                             e.Message);
  end;

end;

procedure TfrmTelaPrincipal.cbbListaPaisesSelect(Sender: TObject);
var
Numero: string;

begin

  Numero:= (LeftStr(cbbListaPaises.Text,3));

  dtmServiceApi.RESTClient.BaseURL:= 'https://restcountries.com/v3.1/';
  dtmServiceApi.RESTRequest.Method:= rmGET;
  dtmServiceApi.RESTRequest.Resource:=  'alpha/'+ Numero;
  dtmServiceApi.RESTResponse.ContentType:= 'application/json';
  dtmServiceApi.RESTRequest.Execute;

 if (dtmServiceApi.RestResponse.StatusCode = 200) then
    PreencheDados;

end;

function TfrmTelaPrincipal.PaisAleatorio: string;
var
  N: Integer;
  S: string;
begin
  N:= Random(891) + 4; // 4 até 895
  S:= FormatFloat('000', N); // garante 3 dígitos
 Result:= S;
end;

procedure TfrmTelaPrincipal.PreencheDados;
var
  HTTP: TNetHTTPClient;
  Stream: TMemoryStream;
  Png: TPngImage;
  Pais: TPais;

begin
   // Preenche a variavel país com a função preencher
   Pais:= Pais.PreencheVar;

   // -------- imagem ---------
  HTTP:= TNetHTTPClient.Create(nil);
  Stream:= TMemoryStream.Create;
  Png:= TPngImage.Create;

  try
    // ---------- imagem ---------
    HTTP.Get(Pais.Bandeira, Stream);
    Stream.Position := 0;
    Png.LoadFromStream(Stream);
    ImgBandeira.Picture.Assign(Png);

    // --------- Nome do país -----------
    EdtNome.Text:= Pais.Nome;
    EdtNomeOficial.Text:= Pais.NomeOficial;

    // --------- Capital -----------
    EdtCapital.Text:= Pais.Capital;

    // --------- Região -----------
    EdtRegiao.Text:= Pais.Regiao;

    // --------- População --------------
    EdtPopulacao.Text:= Pais.Populacao;

    // ---------- Moeda  -----------
    EdtMoeda.Text:= Pais.Moeda;

  finally
    Stream.Free;
    HTTP.Free;
    Png.Free;
  end;

end;

end.
