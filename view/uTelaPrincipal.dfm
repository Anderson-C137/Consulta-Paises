object frmTelaPrincipal: TfrmTelaPrincipal
  Left = 405
  Top = 133
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Pa'#237'ses'
  ClientHeight = 449
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object lblNome: TLabel
    Left = 24
    Top = 16
    Width = 77
    Height = 15
    Caption = 'Nome do Pa'#237's:'
  end
  object lblNomeOficial: TLabel
    Left = 24
    Top = 96
    Width = 73
    Height = 15
    Caption = 'Nome Oficial:'
  end
  object Label3: TLabel
    Left = 24
    Top = 152
    Width = 40
    Height = 15
    Caption = 'Capital:'
  end
  object Label4: TLabel
    Left = 176
    Top = 152
    Width = 39
    Height = 15
    Caption = 'Regi'#227'o:'
  end
  object Label5: TLabel
    Left = 24
    Top = 208
    Width = 59
    Height = 15
    Caption = 'Popula'#231#227'o:'
  end
  object Label6: TLabel
    Left = 176
    Top = 208
    Width = 40
    Height = 15
    Caption = 'Moeda:'
  end
  object imgBandeira: TImage
    Left = 24
    Top = 288
    Width = 361
    Height = 145
    Proportional = True
    Stretch = True
  end
  object lblBandeira: TLabel
    Left = 24
    Top = 267
    Width = 49
    Height = 15
    Caption = 'Bandeira:'
  end
  object lblListaPaises: TLabel
    Left = 355
    Top = 16
    Width = 78
    Height = 15
    Caption = 'Lista de Pa'#237'ses:'
  end
  object edtNome: TEdit
    Left = 24
    Top = 37
    Width = 209
    Height = 23
    TabOrder = 0
  end
  object edtNomeOficial: TEdit
    Left = 24
    Top = 117
    Width = 393
    Height = 23
    ReadOnly = True
    TabOrder = 1
  end
  object edtCapital: TEdit
    Left = 24
    Top = 173
    Width = 121
    Height = 23
    ReadOnly = True
    TabOrder = 2
  end
  object edtRegiao: TEdit
    Left = 176
    Top = 173
    Width = 121
    Height = 23
    ReadOnly = True
    TabOrder = 3
  end
  object edtPopulacao: TEdit
    Left = 24
    Top = 229
    Width = 121
    Height = 23
    ReadOnly = True
    TabOrder = 4
  end
  object edtMoeda: TEdit
    Left = 176
    Top = 229
    Width = 289
    Height = 23
    ReadOnly = True
    TabOrder = 5
  end
  object btnConsulta: TButton
    Left = 250
    Top = 36
    Width = 89
    Height = 25
    Caption = 'Consultar'
    TabOrder = 6
    OnClick = btnConsultaClick
  end
  object btnAleatorio: TButton
    Left = 251
    Top = 71
    Width = 89
    Height = 25
    Caption = 'Aleat'#243'rio'
    TabOrder = 7
    OnClick = btnAleatorioClick
  end
  object cbbListaPaises: TComboBox
    Left = 355
    Top = 37
    Width = 276
    Height = 23
    TabOrder = 8
    Text = 'Lista de Paises'
    OnSelect = cbbListaPaisesSelect
    Items.Strings = (
      '004 Afeganist'#227'o'
      '008 Alb'#226'nia'
      '010 Ant'#225'rctica'
      '012 Arg'#233'lia'
      '016 Samoa Americana'
      '020 Andorra'
      '024 Angola'
      '028 Ant'#237'gua e Barbuda'
      '031 Azerbaij'#227'o'
      '032 Argentina'
      '036 Austr'#225'lia'
      '040 '#193'ustria'
      '044 Bahamas'
      '048 Bar'#233'm'
      '050 Bangladesh'
      '051 Arm'#234'nia'
      '052 Barbados'
      '056 B'#233'lgica'
      '060 Bermudas'
      '064 But'#227'o'
      '068 Bol'#237'via'
      '070 B'#243'snia e Herzegovina'
      '072 Botsuana'
      '074 Ilha Bouvet'
      '076 Brasil'
      '084 Belize'
      '086 Territ'#243'rio Brit'#226'nico do Oceano '#205'ndico'
      '090 Ilhas Salom'#227'o'
      '092 Ilhas Virgens Brit'#226'nicas'
      '096 Brunei'
      '100 Bulg'#225'ria'
      '104 Mianmar'
      '108 Burundi'
      '112 Bielorr'#250'ssia'
      '116 Camboja'
      '120 Camar'#245'es'
      '124 Canad'#225
      '132 Cabo Verde'
      '136 Ilhas Cayman'
      '140 Rep'#250'blica Centro-Africana'
      '144 Sri Lanca'
      '148 Chade'
      '152 Chile'
      '156 China'
      '158 Taiwan, Prov'#237'ncia da China'
      '162 Ilha Christmas'
      '166 Ilhas Cocos (Keeling)'
      '170 Col'#244'mbia'
      '174 Comores'
      '175 Maiote'
      '178 Congo'
      '180 Congo, a Rep'#250'blica Democr'#225'tica do'
      '184 Ilhas Cook'
      '188 Costa Rica'
      '191 Cro'#225'cia'
      '192 Cuba'
      '196 Chipre'
      '203 Ch'#233'quia'
      '204 Benim'
      '208 Dinamarca'
      '212 Dominica'
      '214 Rep'#250'blica Dominicana'
      '218 Equador'
      '222 El Salvador'
      '226 Guin'#233' Equatorial'
      '231 Eti'#243'pia'
      '232 Eritreia'
      '233 Est'#243'nia'
      '234 Ilhas Faro'#233
      '238 Ilhas Falkland'
      '239 Ilhas Ge'#243'rgia do Sul e Sandwich do Sul'
      '242 Fiji'
      '246 Finl'#226'ndia'
      '248 Ilhas '#197'land'
      '250 Fran'#231'a'
      '254 Guiana Francesa'
      '258 Polin'#233'sia Francesa'
      '260 Territ'#243'rios Franceses do Sul'
      '262 Djibuti'
      '266 Gab'#227'o'
      '268 Ge'#243'rgia'
      '270 G'#226'mbia'
      '275 Palestina (Territ'#243'rios Palestinos)'
      '276 Alemanha'
      '288 Gana'
      '292 Gibraltar'
      '296 Kiribati'
      '300 Gr'#233'cia'
      '304 Gronel'#226'ndia'
      '308 Granada'
      '312 Guadalupe'
      '316 Guam'
      '320 Guatemala'
      '324 Guin'#233
      '328 Guiana'
      '332 Haiti'
      '334 Ilha Heard e Ilhas McDonald'
      '336 Santa S'#233' (Estado da Cidade do Vaticano)'
      '340 Honduras'
      '344 Hong Kong'
      '348 Hungria'
      '352 Isl'#226'ndia'
      '356 '#205'ndia'
      '360 Indon'#233'sia'
      '364 Ir'#227'o, Rep'#250'blica Isl'#226'mica do'
      '368 Iraque'
      '372 Rep'#250'blica da Irlanda'
      '376 Israel'
      '380 It'#225'lia'
      '384 Costa do Marfim'
      '388 Jamaica'
      '392 Jap'#227'o'
      '398 Cazaquist'#227'o'
      '400 Jord'#226'nia'
      '404 Qu'#233'nia'
      '408 Coreia, Rep'#250'blica Popular Democr'#225'tica da'
      '410 Coreia, Rep'#250'blica da'
      '414 Kuwait'
      '417 Quirguist'#227'o'
      '418 Laos, Rep'#250'blica Democr'#225'tica Popular do'
      '422 L'#237'bano'
      '426 Lesoto'
      '428 Let'#243'nia'
      '430 Lib'#233'ria'
      '434 Jamahiriya '#193'rabe L'#237'bia'
      '438 Liechtenstein'
      '440 Litu'#226'nia'
      '442 Luxemburgo'
      '446 Macau'
      '450 Madag'#225'scar'
      '454 Mal'#225'ui'
      '458 Mal'#225'sia'
      '462 Maldivas'
      '466 Mali'
      '470 Malta'
      '474 Martinica'
      '478 Maurit'#226'nia'
      '480 Maur'#237'cia'
      '484 M'#233'xico'
      '492 M'#244'naco'
      '496 Mong'#243'lia'
      '498 Mold'#225'via'
      '499 Montenegro'
      '500 Montserrat'
      '504 Marrocos'
      '508 Mo'#231'ambique'
      '512 Om'#227
      '516 Nam'#237'bia'
      '520 Nauru'
      '524 Nepal'
      '528 Pa'#237'ses Baixos'
      '530 Antilhas Holandesas'
      '533 Aruba'
      '540 Nova Caled'#243'nia'
      '548 Vanuatu'
      '554 Nova Zel'#226'ndia'
      '558 Nicar'#225'gua'
      '562 N'#237'ger'
      '566 Nig'#233'ria'
      '570 Niue'
      '574 Ilha Norfolk'
      '578 Noruega'
      '580 Ilhas Marianas do Norte'
      '581 Ilhas Menores Distantes dos Estados Unidos'
      '583 Estados Federados da Micron'#233'sia'
      '584 Ilhas Marshall'
      '585 Palau'
      '586 Paquist'#227'o'
      '591 Panam'#225
      '598 Papua-Nova Guin'#233
      '600 Paraguai'
      '604 Peru'
      '608 Filipinas'
      '612 Ilhas Pitcairn'
      '616 Pol'#244'nia'
      '620 Portugal'
      '624 Guin'#233'-Bissau'
      '626 Timor-Leste'
      '630 Porto Rico'
      '634 Catar'
      '638 Reuni'#227'o'
      '642 Rom'#234'nia'
      '643 Federa'#231#227'o Russa'
      '646 Ruanda'
      '652 S'#227'o Bartolomeu'
      '654 Santa Helena (territ'#243'rio)'
      '659 S'#227'o Crist'#243'v'#227'o e Neves'
      '660 Anguila'
      '662 Santa L'#250'cia'
      '663 S'#227'o Martinho (Fran'#231'a)'
      '666 S'#227'o Pedro e Miquel'#227'o'
      '670 S'#227'o Vicente e Granadinas'
      '674 San Marino'
      '678 S'#227'o Tom'#233' e Pr'#237'ncipe'
      '682 Ar'#225'bia Saudita'
      '686 Senegal'
      '688 S'#233'rvia'
      '690 Seicheles'
      '694 Serra Leoa'
      '702 Singapura'
      '703 Eslov'#225'quia'
      '704 Vietname'
      '705 Eslov'#233'nia'
      '706 Som'#225'lia'
      '710 '#193'frica do Sul'
      '716 Zimbabwe'
      '724 Espanha'
      '732 Saara Ocidental'
      '740 Suriname'
      '744 Svalbard e Jan Mayen'
      '748 Essuat'#237'ni'
      '752 Su'#233'cia'
      '756 Su'#237#231'a'
      '760 Rep'#250'blica '#193'rabe S'#237'ria'
      '762 Tajiquist'#227'o'
      '764 Tail'#226'ndia'
      '768 Togo'
      '772 Toquelau'
      '776 Tonga'
      '780 Trindade e Tobago'
      '784 Emirados '#193'rabes Unidos'
      '788 Tun'#237'sia'
      '792 Turquia'
      '795 Turcomenist'#227'o'
      '796 Ilhas Turcas e Caicos'
      '798 Tuvalu'
      '800 Uganda'
      '804 Ucr'#226'nia'
      '807 Maced'#244'nia do Norte'
      '818 Egito'
      '826 Reino Unido'
      '831 Guernsey'
      '832 Jersey'
      '833 Ilha de Man'
      '834 Tanz'#226'nia, Rep'#250'blica Unida da'
      '840 Estados Unidos'
      '850 Ilhas Virgens Americanas'
      '854 Burquina Fasso'
      '858 Uruguai'
      '860 Uzbequist'#227'o'
      '862 Venezuela'
      '876 Wallis e Futuna'
      '882 Samoa'
      '887 I'#233'men'
      '894 Z'#226'mbia')
  end
end
