unit UAnalogOdometersData;

interface

uses
   UNotifyObjList;

 type
  TAnalogOdometersData = class

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


 constructor TAnalogOdometersData.Create;
 begin
   fOnValuesEvent := TEvent.Create;
 end;

 destructor TAnalogOdometersData.Destroy;
 begin
   fOnValuesEvent.Free;
   inherited;
 end;


 function TAnalogOdometersData.GetValues(Index: Integer): Integer;
begin
  Result := fValues[Index];
end;


 procedure TAnalogOdometersData.SetValues(Index: Integer; const Value: Integer);
 begin
    fValues[Index] := Value;
 end;

end.
