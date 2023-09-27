unit UNotifyObjList;

interface

uses
  System.Classes, System.Types, System.Contnrs;

type
  THndlrProc = procedure (Initiator: TObject) of object;

  TEventHndlr = class;

  TEvent = class(TObjectList)
    constructor Create;
    destructor Destroy; override;

    procedure AddHandler(hdlr: TEventHndlr);
    procedure RemoveHandler(hdlr: TEventHndlr);

    procedure Handle(Initiator: TObject);
  end;

  TEventHndlr = class
    Event:      TEvent;
    HndlrProc:  THndlrProc;

    destructor Destroy; override;

    class procedure CreateHndlr(var CreatingEventHndlr: TEventHndlr; Event: TEvent; HndlrProc: THndlrProc);

    constructor Create(aEvent: TEvent; HndlrProc: THndlrProc);
  end;

implementation

{ TEventHndlr }

constructor TEventHndlr.Create(aEvent: TEvent; HndlrProc: THndlrProc);
begin
  Self.HndlrProc := HndlrProc;
  Event := aEvent;
  Event.AddHandler(Self);
end;

class procedure TEventHndlr.CreateHndlr(var CreatingEventHndlr: TEventHndlr; Event: TEvent; HndlrProc: THndlrProc);
begin
  CreatingEventHndlr := TEventHndlr.Create(Event, HndlrProc);
end;

destructor TEventHndlr.Destroy;
begin
  if Assigned(Event) then Event.RemoveHandler(Self);

  inherited;
end;

{ TEvent }

procedure TEvent.AddHandler(hdlr: TEventHndlr);
begin
  Add(hdlr);
  hdlr.Event := Self;
end;

constructor TEvent.Create;
begin
  OwnsObjects := False;
end;

destructor TEvent.Destroy;
var
  i: Integer;
begin
  for i := 0 to Count -1 do TEventHndlr(Items[i]).Event := nil;
  inherited;
end;

procedure TEvent.Handle(Initiator: TObject);
var
  i: Integer;
begin
  { call in the reverse order because the item may itself removed from the list
    and all other items must be called anyway }
  for i := Count -1 downto 0 do TEventHndlr(Items[i]).HndlrProc(Initiator);
end;

procedure TEvent.RemoveHandler(hdlr: TEventHndlr);
begin
  hdlr.Event := nil;
  Remove(hdlr);
end;

end.
