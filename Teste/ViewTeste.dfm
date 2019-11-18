object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 233
  ClientWidth = 637
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
    Width = 637
    Height = 233
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 72
    ExplicitWidth = 300
    ExplicitHeight = 250
    object btnDesafio1: TButton
      Left = 22
      Top = 164
      Width = 593
      Height = 25
      Caption = 'Substituir'
      TabOrder = 4
      OnClick = btnDesafio1Click
    end
    object mmoTextoOriginal: TMemo
      Left = 24
      Top = 30
      Width = 589
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
      Width = 589
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
      Width = 224
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 1
      Text = 'edtStringVelha'
    end
    object edtStringNova: TEdit
      Left = 392
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
  end
end
