program Project;

uses
  Vcl.Forms,
  TFrmAnalogOdometersData in 'TFrmAnalogOdometersData.pas' {AnalogOdometersData},
  UNotifyObjList in 'UNotifyObjList.pas',
  UAnalogOdometersUnit in 'UAnalogOdometersUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAnalogOdometersData, AnalogOdometersData);
  Application.Run;
end.
