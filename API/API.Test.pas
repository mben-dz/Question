unit API.Test;

interface

type
  TMyClass = class
  private
//    fValue: string;
    class var ClassValue: string;
    function GetValue: string;
    procedure SetValue(const aValue: string);
  public
    property Value: string Read GetValue write SetValue;
  end;

implementation

{ TMyClass }

function TMyClass.GetValue: string;
begin
  Result := ClassValue;
end;

procedure TMyClass.SetValue(const aValue: string);
begin
  ClassValue := aValue;
end;

end.
