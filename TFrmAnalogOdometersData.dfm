object AnalogOdometersData: TAnalogOdometersData
  Left = 0
  Top = 0
  Caption = 'Form Analog Odo'
  ClientHeight = 365
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object lblValueText: TLabel
    Left = 40
    Top = 72
    Width = 39
    Height = 15
    Caption = 'Value ='
  end
  object lblValueText1: TLabel
    Left = 40
    Top = 160
    Width = 39
    Height = 15
    Caption = 'Value ='
  end
  object lblValueText2: TLabel
    Left = 40
    Top = 248
    Width = 39
    Height = 15
    Caption = 'Value ='
  end
  object chkOdom1: TCheckBox
    Left = 40
    Top = 32
    Width = 97
    Height = 17
    Caption = 'Odometer 1'
    TabOrder = 0
  end
  object chkOdom2: TCheckBox
    Left = 40
    Top = 120
    Width = 97
    Height = 17
    Caption = 'Odometer 2'
    TabOrder = 1
  end
  object chkOdom3: TCheckBox
    Left = 40
    Top = 208
    Width = 97
    Height = 17
    Caption = 'Odometer 3'
    TabOrder = 2
  end
  object cht: TChart
    Left = 219
    Top = 32
    Width = 400
    Height = 250
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    View3D = False
    Color = clWhite
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TFastLineSeries
      HoverElement = []
      LinePen.Color = 10708548
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object btnClear: TButton
    Left = 504
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 4
  end
end
