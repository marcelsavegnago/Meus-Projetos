object Form1: TForm1
  Left = 338
  Top = 132
  Width = 727
  Height = 501
  Caption = 'SAT Teste - Projeto ACBr'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 202
    Width = 711
    Height = 6
    Cursor = crVSplit
    Align = alTop
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 208
    Width = 711
    Height = 212
    ActivePage = tsGerado
    Align = alClient
    TabOrder = 0
    object tsLog: TTabSheet
      Caption = 'Log de Comandos'
      object mLog: TMemo
        Left = 0
        Top = 0
        Width = 703
        Height = 184
        Align = alClient
        TabOrder = 0
      end
    end
    object tsGerado: TTabSheet
      Caption = 'XML Gerado'
      inline mVendaEnviar: TMemo
        Left = 0
        Top = 0
        Width = 703
        Height = 184
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tsRecebido: TTabSheet
      Caption = 'XML Recebido'
      inline mRecebido: TWebBrowser
        Left = 0
        Top = 0
        Width = 703
        Height = 184
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C000000A8480000041300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tsCancelamento: TTabSheet
      Caption = 'XML Cancelamento'
      inline mCancelamentoEnviar: TMemo
        Left = 0
        Top = 0
        Width = 703
        Height = 159
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 0
        Top = 159
        Width = 703
        Height = 25
        Align = alBottom
        TabOrder = 1
        object Label18: TLabel
          Left = 1
          Top = 1
          Width = 105
          Height = 23
          Align = alLeft
          Caption = 'Chave Cancelamento:'
          Color = clBtnFace
          ParentColor = False
          Layout = tlCenter
        end
        object edChaveCancelamento: TEdit
          Left = 127
          Top = 1
          Width = 581
          Height = 21
          TabOrder = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 202
    Align = alTop
    TabOrder = 2
    object gpOperacao: TGroupBox
      Left = 1
      Top = 1
      Width = 169
      Height = 200
      Align = alLeft
      Caption = 'Inicializa'#231#227'o'
      TabOrder = 0
      object bInicializar: TButton
        Left = 30
        Top = 55
        Width = 105
        Height = 33
        Caption = 'Inicializar'
        TabOrder = 0
        OnClick = bInicializarClick
      end
      object cbxModelo: TComboBox
        Left = 16
        Top = 24
        Width = 133
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnChange = cbxModeloChange
        Items.Strings = (
          'Procurar'
          'ecfNaoFiscal'
          'ecfBematech'
          'ecfSweda'
          'ecfDaruma'
          'ecfSchalter'
          'ecfMecaf'
          'ecfYanco'
          'ecfDataRegis'
          'ecfUrano'
          'ecfICash'
          'ecfQuattro')
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 109
        Width = 165
        Height = 89
        Align = alBottom
        Caption = 'Par'#226'metros'
        TabOrder = 2
        object btLerParams: TButton
          Left = 31
          Top = 20
          Width = 105
          Height = 25
          Caption = 'Ler'
          TabOrder = 0
          OnClick = btLerParamsClick
        end
        object btSalvarParams: TButton
          Left = 31
          Top = 52
          Width = 105
          Height = 25
          Caption = 'Salvar'
          TabOrder = 1
          OnClick = btSalvarParamsClick
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 170
      Top = 1
      Width = 540
      Height = 200
      Align = alClient
      Caption = 'Configura'#231#227'o'
      TabOrder = 1
      object PageControl2: TPageControl
        Left = 2
        Top = 15
        Width = 536
        Height = 183
        ActivePage = Impressao
        Align = alClient
        TabOrder = 0
        object tsDadosSAT: TTabSheet
          Caption = 'Dados do SAT CFe'
          DesignSize = (
            528
            155)
          object Label9: TLabel
            Left = 21
            Top = 7
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Arq.Log:'
            Color = clBtnFace
            ParentColor = False
          end
          object SbArqLog: TSpeedButton
            Left = 185
            Top = 24
            Width = 24
            Height = 22
            Caption = '...'
            OnClick = SbArqLogClick
          end
          object Label10: TLabel
            Left = 222
            Top = 7
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome DLL:'
            Color = clBtnFace
            ParentColor = False
          end
          object Label1: TLabel
            Left = 16
            Top = 56
            Width = 93
            Height = 13
            Caption = 'C'#243'digo de Ativa'#231#227'o'
            Color = clBtnFace
            ParentColor = False
          end
          object Label4: TLabel
            Left = 217
            Top = 56
            Width = 36
            Height = 13
            Caption = 'C'#243'd.UF'
            Color = clBtnFace
            ParentColor = False
          end
          object Label3: TLabel
            Left = 312
            Top = 57
            Width = 51
            Height = 13
            Caption = 'Num.Caixa'
            Color = clBtnFace
            ParentColor = False
          end
          object Label8: TLabel
            Left = 152
            Top = 106
            Width = 58
            Height = 13
            Caption = 'P'#225'g.C'#243'digo:'
            Color = clBtnFace
            ParentColor = False
          end
          object Label13: TLabel
            Left = 257
            Top = 106
            Width = 33
            Height = 13
            Caption = 'Vers'#227'o'
            Color = clBtnFace
            ParentColor = False
          end
          object Label6: TLabel
            Left = 385
            Top = 55
            Width = 44
            Height = 13
            Caption = 'Ambiente'
            Color = clBtnFace
            ParentColor = False
          end
          object edLog: TEdit
            Left = 17
            Top = 24
            Width = 163
            Height = 21
            Cursor = crIBeam
            TabOrder = 0
          end
          object edNomeDLL: TEdit
            Left = 217
            Top = 24
            Width = 305
            Height = 21
            Cursor = crIBeam
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
          end
          object edtCodigoAtivacao: TEdit
            Left = 16
            Top = 72
            Width = 164
            Height = 21
            TabOrder = 2
          end
          object edtCodUF: TEdit
            Left = 218
            Top = 72
            Width = 61
            Height = 21
            TabOrder = 3
          end
          object seNumeroCaixa: TSpinEdit
            Left = 312
            Top = 73
            Width = 58
            Height = 22
            MaxValue = 999
            MinValue = 1
            TabOrder = 4
            Value = 1
          end
          object cbxUTF8: TCheckBox
            Left = 16
            Top = 103
            Width = 47
            Height = 19
            Caption = 'UTF8'
            TabOrder = 5
            OnClick = cbxUTF8Change
          end
          object sePagCod: TSpinEdit
            Left = 152
            Top = 123
            Width = 83
            Height = 22
            MaxValue = 65001
            MinValue = 0
            TabOrder = 6
            Value = 0
            OnChange = sePagCodChange
          end
          object sfeVersaoEnt: TEdit
            Left = 256
            Top = 123
            Width = 114
            Height = 21
            TabOrder = 7
            OnChange = sfeVersaoEntChange
          end
          object cbxFormatXML: TCheckBox
            Left = 17
            Top = 127
            Width = 95
            Height = 19
            Caption = 'Formatar XML'
            Checked = True
            State = cbChecked
            TabOrder = 8
            OnClick = cbxUTF8Change
          end
          object cbxAmbiente: TComboBox
            Left = 385
            Top = 72
            Width = 137
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 9
          end
          object cbxSalvarCFe: TCheckBox
            Left = 424
            Top = 120
            Width = 79
            Height = 19
            Caption = 'Salvar CFes'
            Checked = True
            State = cbChecked
            TabOrder = 10
            OnClick = cbxSalvarCFeChange
          end
        end
        object tsDadosEmit: TTabSheet
          Caption = 'Dados Emitente'
          object Label11: TLabel
            Left = 12
            Top = 23
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            Color = clBtnFace
            ParentColor = False
          end
          object Label12: TLabel
            Left = 192
            Top = 23
            Width = 64
            Height = 13
            Caption = 'Insc.Estadual'
            Color = clBtnFace
            ParentColor = False
          end
          object Label14: TLabel
            Left = 336
            Top = 23
            Width = 68
            Height = 13
            Caption = 'Insc.Municipal'
            Color = clBtnFace
            ParentColor = False
          end
          object Label15: TLabel
            Left = 192
            Top = 71
            Width = 96
            Height = 13
            Caption = 'Regime Trib. ISSQN'
            Color = clBtnFace
            ParentColor = False
          end
          object Label16: TLabel
            Left = 336
            Top = 71
            Width = 71
            Height = 13
            Caption = 'Ind.Rat.ISSQN'
            Color = clBtnFace
            ParentColor = False
          end
          object Label17: TLabel
            Left = 12
            Top = 73
            Width = 83
            Height = 13
            Caption = 'Regime Tributario'
            Color = clBtnFace
            ParentColor = False
          end
          object edtEmitCNPJ: TEdit
            Left = 12
            Top = 38
            Width = 166
            Height = 21
            Cursor = crIBeam
            TabOrder = 0
          end
          object edtEmitIE: TEdit
            Left = 192
            Top = 38
            Width = 134
            Height = 21
            Cursor = crIBeam
            TabOrder = 1
          end
          object edtEmitIM: TEdit
            Left = 336
            Top = 38
            Width = 134
            Height = 21
            Cursor = crIBeam
            TabOrder = 2
          end
          object cbxRegTribISSQN: TComboBox
            Left = 192
            Top = 87
            Width = 130
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 4
          end
          object cbxIndRatISSQN: TComboBox
            Left = 336
            Top = 87
            Width = 134
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 5
          end
          object cbxRegTributario: TComboBox
            Left = 12
            Top = 87
            Width = 166
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 3
          end
        end
        object tsDadosSwHouse: TTabSheet
          Caption = 'Dados Sw.House'
          DesignSize = (
            528
            155)
          object Label2: TLabel
            Left = 10
            Top = 15
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            Color = clBtnFace
            ParentColor = False
          end
          object Label5: TLabel
            Left = 10
            Top = 71
            Width = 181
            Height = 13
            Caption = 'Assinatura Sw.House (344 caracteres)'
            Color = clBtnFace
            ParentColor = False
          end
          object edtSwHCNPJ: TEdit
            Left = 10
            Top = 31
            Width = 246
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
          object edtSwHAssinatura: TEdit
            Left = 10
            Top = 89
            Width = 511
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
          end
        end
        object Impressao: TTabSheet
          Caption = 'Impressao'
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 272
            Height = 155
            Align = alClient
            Caption = 'Fortes'
            TabOrder = 0
            object Label19: TLabel
              Left = 8
              Top = 16
              Width = 36
              Height = 13
              Caption = 'Largura'
              Color = clBtnFace
              ParentColor = False
            end
            object Label20: TLabel
              Left = 96
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Topo'
              Color = clBtnFace
              ParentColor = False
            end
            object Label21: TLabel
              Left = 8
              Top = 64
              Width = 30
              Height = 13
              Caption = 'Fundo'
              Color = clBtnFace
              ParentColor = False
            end
            object Label22: TLabel
              Left = 96
              Top = 64
              Width = 45
              Height = 13
              Caption = 'Esquerda'
              Color = clBtnFace
              ParentColor = False
            end
            object Label23: TLabel
              Left = 184
              Top = 64
              Width = 30
              Height = 13
              Caption = 'Direita'
              Color = clBtnFace
              ParentColor = False
            end
            object lImpressora: TLabel
              Left = 136
              Top = 120
              Width = 93
              Height = 13
              Caption = 'Impresssora Default'
              Color = clBtnFace
              ParentColor = False
            end
            object seLargura: TSpinEdit
              Left = 8
              Top = 30
              Width = 64
              Height = 22
              MaxValue = 9999
              MinValue = 0
              TabOrder = 0
              Value = 0
            end
            object seMargemTopo: TSpinEdit
              Left = 96
              Top = 30
              Width = 64
              Height = 22
              MaxValue = 9999
              MinValue = 0
              TabOrder = 1
              Value = 0
            end
            object seMargemFundo: TSpinEdit
              Left = 8
              Top = 78
              Width = 64
              Height = 22
              MaxValue = 9999
              MinValue = 0
              TabOrder = 2
              Value = 0
            end
            object seMargemEsquerda: TSpinEdit
              Left = 96
              Top = 78
              Width = 64
              Height = 22
              MaxValue = 9999
              MinValue = 0
              TabOrder = 3
              Value = 0
            end
            object seMargemDireita: TSpinEdit
              Left = 184
              Top = 78
              Width = 64
              Height = 22
              MaxValue = 9999
              MinValue = 0
              TabOrder = 4
              Value = 0
            end
            object bImpressora: TButton
              Left = 8
              Top = 112
              Width = 122
              Height = 25
              Caption = 'Definir Impressora'
              TabOrder = 5
              OnClick = bImpressoraClick
            end
            object cbUsarFortes: TRadioButton
              Left = 184
              Top = 16
              Width = 78
              Height = 19
              Caption = 'Usar Fortes'
              TabOrder = 6
              OnClick = cbUsarFortesClick
            end
            object cbPreview: TCheckBox
              Left = 192
              Top = 40
              Width = 61
              Height = 19
              Caption = 'Preview'
              TabOrder = 7
            end
          end
          object GroupBox4: TGroupBox
            Left = 272
            Top = 0
            Width = 256
            Height = 155
            Align = alRight
            Caption = 'EscPOS'
            TabOrder = 1
            DesignSize = (
              256
              155)
            object Label7: TLabel
              Left = 16
              Top = 88
              Width = 79
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'Porta Impressora'
              Color = clBtnFace
              ParentColor = False
            end
            object edtPorta: TEdit
              Left = 16
              Top = 105
              Width = 215
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 0
              Text = '\\127.0.0.1\EPSON'
            end
            object btSerial: TBitBtn
              Left = 177
              Top = 40
              Width = 54
              Height = 45
              Anchors = [akTop, akRight]
              Caption = 'Serial'
              ModalResult = 1
              TabOrder = 1
              OnClick = btSerialClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232
                3232323E3E3E565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF503200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                565656565656FFFFFFFFFFFF3232322626262626262626262626265032005032
                000000504873FFFFFFFFFFFFFFFFFFFF6E6E6EFFFFFFFFFFFFFFFFFFFFFFFF6E
                6E6E32323232323232323232323250320000005025AAFFFFFFFFFFFFFF565656
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656563232323232326E6E6E5032005032
                008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFF50320050320056
                56564A4A4A5050003232325032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
                FFFFFF5656563E3E3E2626265032006262625656565050003232325032005032
                008FFF6B8ED4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5050005050006E
                6E6E5656565050003250005032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686865656565656563250005032005032
                008FFF6B48B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323E
                3E3EA4A0A08686866E6E6E565656503200C0C0C02557FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF5050004A4A4A3232323232323232323232325032
                00FFFFFF6B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              Layout = blGlyphTop
            end
            object cbUsarEscPos: TRadioButton
              Left = 8
              Top = 16
              Width = 85
              Height = 19
              Caption = 'Usar EscPOS'
              TabOrder = 2
              OnClick = cbUsarEscPosClick
            end
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 420
    Width = 711
    Height = 23
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 224
    Top = 224
    object MenuItem1: TMenuItem
      Caption = 'Ativa'#231#227'o'
      object mAtivarSAT: TMenuItem
        Caption = 'Ativar SAT'
        OnClick = mAtivarSATClick
      end
      object mComunicarCertificado: TMenuItem
        Caption = 'Comunicar Certificado'
        OnClick = mComunicarCertificadoClick
      end
      object mAssociarAssinatura: TMenuItem
        Caption = 'Associar Assinatura'
        OnClick = mAssociarAssinaturaClick
      end
      object MenuItem3: TMenuItem
        Caption = '-'
      end
      object mBloquearSAT: TMenuItem
        Caption = 'Bloquear SAT'
        OnClick = mBloquearSATClick
      end
      object mDesbloquearSAT: TMenuItem
        Caption = 'Desbloquear SAT'
        OnClick = mDesbloquearSATClick
      end
      object MenuItem4: TMenuItem
        Caption = '-'
      end
      object MenuItem5: TMenuItem
        Caption = 'Trocar  C'#243'digo de Ativa'#231#227'o'
        OnClick = MenuItem5Click
      end
    end
    object MenuItem2: TMenuItem
      Caption = 'Venda'
      object mGerarVenda: TMenuItem
        Caption = 'Gerar Venda'
        OnClick = mGerarVendaClick
      end
      object mEnviarVenda: TMenuItem
        Caption = 'Enviar Venda'
        OnClick = mEnviarVendaClick
      end
      object mImprimirExtratoVenda: TMenuItem
        Caption = 'Imprimir Extrato Venda'
        OnClick = mImprimirExtratoVendaClick
      end
      object mImprimirExtratoVendaResumido: TMenuItem
        Caption = 'Imprimir Extrato Venda Resumido'
        OnClick = mImprimirExtratoVendaResumidoClick
      end
    end
    object MenuItem12: TMenuItem
      Caption = 'Cancelamento'
      object miGerarXMLCancelamento: TMenuItem
        Caption = 'Gerar XML Cancelamento'
        OnClick = miGerarXMLCancelamentoClick
      end
      object miEnviarCancelamento: TMenuItem
        Caption = 'Enviar Cancelamento'
        OnClick = miEnviarCancelamentoClick
      end
      object miImprimirExtratoCancelamento: TMenuItem
        Caption = 'Imprimir Extrato Cancelamento'
        OnClick = miImprimirExtratoCancelamentoClick
      end
    end
    object MenuItem6: TMenuItem
      Caption = 'Consultas'
      object mConsultarStatusOperacional: TMenuItem
        Caption = 'Consultar Status Operacional'
        OnClick = mConsultarStatusOperacionalClick
      end
      object mConsultarSAT: TMenuItem
        Caption = 'Consultar SAT'
        OnClick = mConsultarSATClick
      end
      object mConsultarNumeroSessao: TMenuItem
        Caption = 'Consultar Numero Sess'#227'o'
        OnClick = mConsultarNumeroSessaoClick
      end
    end
    object MenuItem7: TMenuItem
      Caption = 'Configura'#231#227'o'
      object mAtaulizarSoftwareSAT: TMenuItem
        Caption = 'Ataulizar Software SAT'
        OnClick = mAtaulizarSoftwareSATClick
      end
      object mConfigurarInterfaceRede: TMenuItem
        Caption = 'Configurar Interface Rede'
        OnClick = mConfigurarInterfaceRedeClick
      end
    end
    object MenuItem8: TMenuItem
      Caption = 'Diversos'
      object mTesteFimAFim: TMenuItem
        Caption = 'Teste Fim a Fim'
        OnClick = mTesteFimAFimClick
      end
      object mExtrairLogs: TMenuItem
        Caption = 'Extrair Logs'
        OnClick = mExtrairLogsClick
      end
    end
    object mLimpar: TMenuItem
      Caption = 'Limpar'
      OnClick = mLimparClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 224
    Top = 280
  end
  object ACBrSAT1: TACBrSAT
    Extrato = ACBrSATExtratoFortes1
    NomeDLL = 'c:\sat\SAT.DLL'
    OnLog = ACBrSAT1Log
    Config.infCFe_versaoDadosEnt = 0.050000000000000000
    Config.ide_numeroCaixa = 0
    Config.ide_tpAmb = taHomologacao
    Config.emit_cRegTrib = RTSimplesNacional
    Config.emit_cRegTribISSQN = RTISSMicroempresaMunicipal
    Config.emit_indRatISSQN = irSim
    Config.EhUTF8 = True
    Config.PaginaDeCodigo = 65001
    OnGetcodigoDeAtivacao = ACBrSAT1GetcodigoDeAtivacao
    OnGetsignAC = ACBrSAT1GetsignAC
    Left = 64
    Top = 224
  end
  object ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS
    Mask_qCom = '0.0000'
    Mask_vUnCom = '0.000'
    Left = 64
    Top = 280
  end
  object ACBrSATExtratoFortes1: TACBrSATExtratoFortes
    ACBrSAT = ACBrSAT1
    Mask_qCom = '0.000'
    Mask_vUnCom = '0.00'
    MostrarPreview = True
    NomeArquivo = 'satcfe.pdf'
    SoftwareHouse = 'Projeto ACBr - http://acbr.sf.net'
    Margens.Topo = 50
    Margens.Fundo = 400
    Left = 64
    Top = 344
  end
  object PrintDialog1: TPrintDialog
    Left = 608
    Top = 256
  end
end
