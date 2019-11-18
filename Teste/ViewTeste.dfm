object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 439
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lgGrupo: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 647
    Height = 439
    Align = alClient
    TabOrder = 0
    object btnDesafio1: TButton
      Left = 22
      Top = 164
      Width = 603
      Height = 25
      Caption = 'Substituir'
      TabOrder = 4
      OnClick = btnDesafio1Click
    end
    object mmoTextoOriginal: TMemo
      Left = 24
      Top = 30
      Width = 599
      Height = 43
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Lines.Strings = (
        'mmoTextoOriginal')
      TabOrder = 0
    end
    object mmoTextoSubst: TMemo
      Left = 24
      Top = 110
      Width = 599
      Height = 46
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Lines.Strings = (
        'mmoTextoSubst')
      TabOrder = 3
    end
    object edtStringVelha: TEdit
      Left = 107
      Top = 83
      Width = 234
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 1
      Text = 'edtStringVelha'
    end
    object edtStringNova: TEdit
      Left = 402
      Top = 83
      Width = 221
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 2
      Text = 'edtStringNova'
    end
    object pnl1: TPanel
      Left = 22
      Top = 225
      Width = 603
      Height = 161
      Caption = 'pnl1'
      TabOrder = 5
      object pnl2: TPanel
        Left = 1
        Top = 1
        Width = 601
        Height = 32
        Align = alTop
        Caption = 'pnl2'
        TabOrder = 0
        DesignSize = (
          601
          32)
        object lbl1: TLabel
          Left = 16
          Top = 8
          Width = 78
          Height = 13
          Caption = 'Informar o valor'
        end
        object dfValor: TMaskEdit
          Left = 104
          Top = 5
          Width = 345
          Height = 21
          Anchors = [akLeft, akRight]
          EditMask = '###0,00;1;_'
          MaxLength = 7
          TabOrder = 0
          Text = '    ,  '
        end
        object btnCalcularTroco: TButton
          Left = 473
          Top = 1
          Width = 127
          Height = 30
          Align = alRight
          Caption = 'Calcular troco'
          TabOrder = 1
          OnClick = btnCalcularTrocoClick
        end
      end
      object mmoSaidaTroco: TMemo
        Left = 1
        Top = 33
        Width = 601
        Height = 127
        Align = alClient
        Lines.Strings = (
          'mmoSaidaTroco')
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
    object lgRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object liBotaoDesafio1: TdxLayoutItem
      Parent = lgDesafio1
      CaptionOptions.Text = 'Button1'
      CaptionOptions.Visible = False
      Control = btnDesafio1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liTextoOriginal: TdxLayoutItem
      Parent = lgDesafio1
      Control = mmoTextoOriginal
      ControlOptions.OriginalHeight = 43
      ControlOptions.OriginalWidth = 421
      Index = 0
    end
    object liTextoSubstituido: TdxLayoutItem
      Parent = lgDesafio1
      Control = mmoTextoSubst
      ControlOptions.OriginalHeight = 46
      ControlOptions.OriginalWidth = 185
      Index = 2
    end
    object lgDesafio1: TdxLayoutGroup
      Parent = lgRoot
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Desafio 1'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object liSubstringVelha: TdxLayoutItem
      Parent = ligSttring
      AlignHorz = ahClient
      CaptionOptions.Text = 'Substituir string '
      Control = edtStringVelha
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 202
      Index = 0
    end
    object liStringNova: TdxLayoutItem
      Parent = ligSttring
      AlignVert = avClient
      CaptionOptions.Text = 'por string'
      Control = edtStringNova
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 221
      Index = 1
    end
    object ligSttring: TdxLayoutAutoCreatedGroup
      Parent = lgDesafio1
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object lgDesafio2: TdxLayoutGroup
      Parent = lgRoot
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Desafio2'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object liDesafio2: TdxLayoutItem
      Parent = lgDesafio2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = pnl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 161
      ControlOptions.OriginalWidth = 603
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
