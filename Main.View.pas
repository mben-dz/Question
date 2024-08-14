unit Main.View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainView = class(TForm)
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainView: TMainView;

implementation

uses
  API.Test
, System.StrUtils;

{$R *.dfm}

function IsAllocated(aObj: TMyClass): Boolean;
begin
  Result := Assigned(aObj);

  case Result of
    True: aObj.Value := 'the OBJECT Is Allocated ..';
    False: aObj.Value := 'Not Allocated Yet !!';
  end;
end;

procedure TMainView.FormCreate(Sender: TObject);
var
  LObj: TMyClass;
begin
//  LObj := nil;
//  LObj := TMyClass.Create;

  Label1.Caption := IfThen(IsAllocated(LObj),
    LObj.Value, LObj.Value);

end;

end.
