program Project;

uses
  Vcl.Forms,
  TFrmAnalogOdometersData in 'TFrmAnalogOdometersData.pas' {AnalogOdometersData};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAnalogOdometersData, AnalogOdometersData);
  Application.Run;
end.
