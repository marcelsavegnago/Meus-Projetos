object frmStatus: TfrmStatus
  Left = 231
  Height = 45
  Top = 166
  Width = 481
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmStatus'
  ClientHeight = 45
  ClientWidth = 481
  Color = clWhite
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Position = poMainFormCenter
  LCLVersion = '1.1'
  object Panel1: TPanel
    Left = 0
    Height = 45
    Top = 0
    Width = 481
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    ClientHeight = 45
    ClientWidth = 481
    Color = clBlack
    ParentColor = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 2
      Height = 17
      Top = 2
      Width = 477
      Align = alTop
      AutoSize = False
      Caption = 'Status do componente ACBrNFe'
      Color = clSilver
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Layout = tlCenter
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lblStatus: TLabel
      Left = 2
      Height = 24
      Top = 19
      Width = 477
      Align = alClient
      Color = clGray
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = tlCenter
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
  end
end