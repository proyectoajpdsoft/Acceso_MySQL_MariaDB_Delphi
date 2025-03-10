program ProyectoA_AccesoMySQLMariaDB;

uses
  Vcl.Forms,
  UnidadAccesoMySQLMariaDB in 'UnidadAccesoMySQLMariaDB.pas' {formAccesoMySQLMariaDB};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformAccesoMySQLMariaDB, formAccesoMySQLMariaDB);
  Application.Run;
end.
