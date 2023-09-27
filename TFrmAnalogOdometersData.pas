unit TFrmAnalogOdometersData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,UNotifyObjList,UAnalogOdometersUnit;

type
  TAnalogOdometersData = class(TForm)
    chkOdom1: TCheckBox;
    lblValueText: TLabel;
    chkOdom2: TCheckBox;
    lblValueText1: TLabel;
    chkOdom3: TCheckBox;
    lblValueText2: TLabel;
    cht: TChart;
    Series1: TFastLineSeries;
    btnClear: TButton;
  private
     fAnalogOdometersUnit: TAnalogOdometersUnit;
     fOnValuesEventHndlr: TEventHndlr;
     procedure OnValuesEventHndlrProc(Initiator: TObject);
     procedure SetAnalogOdometersUnit(const Value: TAnalogOdometersUnit);
     procedure ShowValues;

  public
    constructor Create;
    destructor Destroy; override;


  public
    property AnalogOdometersUnit: TAnalogOdometersUnit read fAnalogOdometersUnit write SetAnalogOdometersUnit;

  end;

var
  AnalogOdometersData: TAnalogOdometersData;

implementation

{$R *.dfm}
constructor TAnalogOdometersData.Create;
begin

end;

destructor TAnalogOdometersData.Destroy;
begin
  fOnValuesEventHndlr.Free;
  inherited;
end;

procedure TAnalogOdometersData.OnValuesEventHndlrProc(Initiator: TObject);
begin
  ShowValues;
end;

procedure TAnalogOdometersData.SetAnalogOdometersUnit(const Value: TAnalogOdometersUnit);
begin
  fAnalogOdometersUnit := Value;
  fOnValuesEventHndlr := TEventHndlr.Create(fAnalogOdometersUnit.OnValuesEvent, OnValuesEventHndlrProc);
end;

procedure TAnalogOdometersData.ShowValues;
begin
   lblValueText.Caption  := IntToStr(AnalogOdometersUnit.Values[0]);
   lblValueText1.Caption := IntToStr(AnalogOdometersUnit.Values[1]);
   lblValueText2.Caption := IntToStr(AnalogOdometersUnit.Values[2]);
end;
end.
