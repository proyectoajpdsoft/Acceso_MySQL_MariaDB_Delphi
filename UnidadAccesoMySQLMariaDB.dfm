object formAccesoMySQLMariaDB: TformAccesoMySQLMariaDB
  Left = 0
  Top = 0
  Caption = 'ProyectoA - Acceso MySQL/MariaDB x64 FireDAC'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object grFacturas: TDBGrid
    Left = 8
    Top = 40
    Width = 608
    Height = 393
    DataSource = dstcFacturas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object bdNavegador: TDBNavigator
    Left = 96
    Top = 8
    Width = 520
    Height = 25
    DataSource = dstcFacturas
    TabOrder = 1
  end
  object btConectar: TButton
    Left = 8
    Top = 8
    Width = 82
    Height = 26
    Caption = 'Conectar'
    TabOrder = 2
    OnClick = btConectarClick
  end
  object BD: TFDConnection
    Params.Strings = (
      'DriverID=FL_MySQL'
      'Database=facturacion'
      'Port=3308'
      'Server=localhost')
    LoginPrompt = False
    Left = 112
    Top = 80
  end
  object fdLinkLibreria: TFDPhysMySQLDriverLink
    DriverID = 'FL_MySQL'
    VendorLib = 
      'D:\Mis documentos\ProyectoA\DelphiXE\ProyectoA_Acceso_MySQL_Mari' +
      'aDB_Delphi_12\Win64\Debug\libmysql.dll'
    Left = 40
    Top = 80
  end
  object tcFacturas: TFDQuery
    Connection = BD
    SQL.Strings = (
      'select * from factura;')
    Left = 176
    Top = 80
  end
  object dstcFacturas: TDataSource
    DataSet = tcFacturas
    Left = 256
    Top = 80
  end
end
