unit DPMUnit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.FMXUI.Wait, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid;

type
  TForm1 = class(TForm)
    Button1: TButton;
    PGConnector: TFDConnection;
    UsersModel: TFDTable;
    DSUsersModel: TDataSource;
    CBConnect: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure CBConnectChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var MyGUID : TGUID;
 t:integer;
begin
   CreateGUID(MyGUID);
   t:=length(MyGUID.ToString);
 ShowMessage(GUIDToString(MyGUID)+' '+MyGUID.ToString+' '+inttostr(t));
end;

procedure TForm1.CBConnectChange(Sender: TObject);
begin
 PGConnector.Connected:=CBConnect.IsChecked;
end;

end.
