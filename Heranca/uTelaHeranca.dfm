object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 478
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 719
    Height = 437
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 711
        Height = 73
        Align = alTop
        TabOrder = 0
        object mskPesquisar: TMaskEdit
          Left = 0
          Top = 22
          Width = 349
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua pesquisa'
        end
        object btnPesquisar: TBitBtn
          Left = 355
          Top = 20
          Width = 75
          Height = 25
          Caption = '&PESQUISAR'
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 73
        Width = 711
        Height = 336
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 437
    Width = 719
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 4
      Top = 6
      Width = 65
      Height = 25
      Caption = '&NOVO'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 75
      Top = 6
      Width = 65
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 146
      Top = 6
      Width = 65
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 217
      Top = 6
      Width = 65
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 3
      OnClick = btnGravarClick
    end
    object btnDeletar: TBitBtn
      Left = 288
      Top = 6
      Width = 65
      Height = 25
      Caption = '&DELETAR'
      TabOrder = 4
      OnClick = btnDeletarClick
    end
    object btnFechar: TBitBtn
      Left = 650
      Top = 6
      Width = 65
      Height = 25
      Caption = '&FECHAR'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 360
      Top = 6
      Width = 284
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object QryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 476
    Top = 40
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 540
    Top = 40
  end
end
