unit TFrmAnalogOdometersData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnalogOdometersData: TAnalogOdometersData;

implementation

{$R *.dfm}

end.
