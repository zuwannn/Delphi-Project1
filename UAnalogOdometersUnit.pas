unit UAnalogOdometersUnit;

interface

uses
   UNotifyObjList;

 type
  TAnalogOdometersUnit = class

  private
   fOnValuesEvent: TEvent;

  protected

    fValues: array[0..3] of Integer;
    function GetValues (Index: Integer): Integer;
    procedure SetValues(Index: Integer ; const Value: Integer);

  public

    constructor Create;
    destructor Destroy; override;
    property OnValuesEvent: TEvent read fOnValuesEvent write fOnValuesEvent;
    property Values[Index: Integer]: Integer read GetValues write SetValues;

 end;

implementation
  {TAnalogOdometersData}


 constructor TAnalogOdometersUnit.Create;
 begin
   fOnValuesEvent := TEvent.Create;
 end;

 destructor TAnalogOdometersUnit.Destroy;
 begin
   fOnValuesEvent.Free;
   inherited;
 end;


 function TAnalogOdometersUnit.GetValues(Index: Integer): Integer;
begin
  Result := fValues[Index];
end;


 procedure TAnalogOdometersUnit.SetValues(Index: Integer; const Value: Integer);
 begin
    fValues[Index] := Value;
 end;

end.
