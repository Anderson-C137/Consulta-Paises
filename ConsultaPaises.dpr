program ConsultaPaises;

uses
  Vcl.Forms,
  uTelaPrincipal in 'view\uTelaPrincipal.pas' {frmTelaPrincipal},
  udtmServiceApi in 'service\udtmServiceApi.pas' {dtmServiceApi: TDataModule},
  uModelPais in 'model\uModelPais.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.CreateForm(TdtmServiceApi, dtmServiceApi);
  Application.Run;
end.
