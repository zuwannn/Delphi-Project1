unit UAnalogOdometersDataMock;

interface
uses
  Vcl.ExtCtrls,
  UNotifyObjList, UAnalogOdometersData;

type
  TAnalogOdometersDataMock = class(TAnalogOdometersData)
  private
    t: Double;
    fTimer: TTimer;
    //procedure TimeOnTimer(Sender: TObject);
  public
    constructor Create;
    destructor Destroy; override;
    procedure TimeOnTimer(Sender: TObject);

  end;

implementation


{ TAnalogOdometersDataMock }

constructor TAnalogOdometersDataMock.Create;
begin
  fTimer := TTimer.Create(nil);
  fTimer.OnTimer := TimeOnTimer;
  fTimer.Interval := 500;
  fTimer.Enabled := True;
end;

destructor TAnalogOdometersDataMock.Destroy;
begin
  fTimer.Free;
  inherited;
end;

procedure TAnalogOdometersDataMock.TimeOnTimer(Sender: TObject);
var
  i: Integer;
  omega,
  dt, t: Double;
  vol: Double;
  begin
  fTimer.Enabled := True;

  for i := 0 to 2 do
  begin
    fValues[i] := round(vol*sin(omega*t));
   // t:= t + dt;
  end;

end;

end.

