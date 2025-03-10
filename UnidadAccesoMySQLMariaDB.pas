unit UnidadAccesoMySQLMariaDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TformAccesoMySQLMariaDB = class(TForm)
    BD: TFDConnection;
    fdLinkLibreria: TFDPhysMySQLDriverLink;
    tcFacturas: TFDQuery;
    dstcFacturas: TDataSource;
    grFacturas: TDBGrid;
    bdNavegador: TDBNavigator;
    btConectar: TButton;
    procedure btConectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAccesoMySQLMariaDB: TformAccesoMySQLMariaDB;

implementation

{$R *.dfm}

procedure TformAccesoMySQLMariaDB.btConectarClick(Sender: TObject);
begin
  fdLinkLibreria.DriverID := 'DR_MySQL';
  fdLinkLibreria.VendorLib := IncludeTrailingPathDelimiter(ExtractFilePath((Application.ExeName))) + 'libmysql.dll';
  bd.Connected := False;
  bd.Params.Clear;
  bd.Params.Add('DriverID=DR_MySQL');
  bd.DriverName := 'MySQL';
  bd.Params.Database := 'facturacion';
  bd.Params.UserName := 'usuario';
  bd.Params.Password := 'contraseña';
  bd.Params.Add('Port=3308');
  bd.Params.Add('Server=localhost');
  bd.Params.Add('auth_plugin=mysql_native_password');
  //bd.Params.Add('auth_plugin=caching_sha2_password');
  bd.Connected := True;
  tcFacturas.Active := True;
end;

end.
