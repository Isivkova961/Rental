object Form1: TForm1
  Left = 545
  Top = 225
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1082#1072#1090' '#1083#1077#1089#1086#1074
  ClientHeight = 535
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 657
    Height = 529
    ActivePage = TabSheet1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
      object Label21: TLabel
        Left = 24
        Top = 144
        Width = 36
        Height = 19
        Caption = #1044#1072#1090#1072' '
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 16
        Top = 360
        Width = 119
        Height = 19
        Caption = #1040#1088#1077#1085#1076#1072' '#1085#1072' '#1089#1088#1086#1082' '#1089' '
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 336
        Top = 360
        Width = 17
        Height = 19
        Caption = #1087#1086
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 16
        Top = 392
        Width = 108
        Height = 19
        Caption = #1040#1088#1077#1085#1076#1085#1072#1103' '#1087#1083#1072#1090#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object rent_rub: TLabel
        Left = 175
        Top = 416
        Width = 4
        Height = 19
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 16
        Top = 456
        Width = 160
        Height = 19
        Caption = '"'#1054#1094#1077#1085#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100'"'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object assval_rub: TLabel
        Left = 176
        Top = 480
        Width = 20
        Height = 19
        Caption = '     '
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 24
        Top = 168
        Width = 148
        Height = 19
        Caption = #1057#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1077' '#1083#1077#1089#1072':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 272
        Top = 200
        Width = 21
        Height = 19
        Caption = #1096#1090'.'
      end
      object Label3: TLabel
        Left = 272
        Top = 224
        Width = 21
        Height = 19
        Caption = #1096#1090'.'
      end
      object Label4: TLabel
        Left = 272
        Top = 248
        Width = 21
        Height = 19
        Caption = #1096#1090'.'
      end
      object Label5: TLabel
        Left = 272
        Top = 272
        Width = 21
        Height = 19
        Caption = #1096#1090'.'
      end
      object Label6: TLabel
        Left = 272
        Top = 296
        Width = 21
        Height = 19
        Caption = #1096#1090'.'
      end
      object Label7: TLabel
        Left = 272
        Top = 320
        Width = 21
        Height = 19
        Caption = #1096#1090'.'
      end
      object Label8: TLabel
        Left = 16
        Top = 104
        Width = 80
        Height = 19
        Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object docof: TRadioGroup
        Left = 24
        Top = 8
        Width = 185
        Height = 81
        Caption = #1044#1086#1075#1086#1074#1086#1088' '#1085#1072' '
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          #1070#1088'.'#1083#1080#1094#1086
          #1060#1080#1079'.'#1083#1080#1094#1086)
        ParentFont = False
        TabOrder = 0
        OnClick = docofClick
      end
      object DateDoc: TDateTimePicker
        Left = 72
        Top = 136
        Width = 137
        Height = 27
        Date = 42199.447866886580000000
        Time = 42199.447866886580000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Date_beg: TDateTimePicker
        Left = 144
        Top = 352
        Width = 97
        Height = 27
        Date = 42199.451425844910000000
        Time = 42199.451425844910000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object Time_beg: TDateTimePicker
        Left = 240
        Top = 352
        Width = 89
        Height = 27
        Date = 42199.416666666660000000
        Format = 'hh:mm'
        Time = 42199.416666666660000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Kind = dtkTime
        ParentFont = False
        TabOrder = 16
      end
      object Date_end: TDateTimePicker
        Left = 360
        Top = 352
        Width = 97
        Height = 27
        Date = 42199.451566226850000000
        Time = 42199.451566226850000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object Time_end: TDateTimePicker
        Left = 456
        Top = 352
        Width = 73
        Height = 27
        Date = 42199.416666666660000000
        Format = 'hh:mm'
        Time = 42199.416666666660000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Kind = dtkTime
        ParentFont = False
        TabOrder = 18
      end
      object rent_num: TEdit
        Left = 176
        Top = 384
        Width = 153
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnExit = rent_numExit
      end
      object assval_num: TEdit
        Left = 176
        Top = 448
        Width = 153
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        OnExit = assval_numExit
      end
      object CheckBox1: TCheckBox
        Left = 24
        Top = 200
        Width = 153
        Height = 17
        Caption = #1056#1072#1084#1072' '#1089' '#1083#1077#1089#1090#1085#1080#1094#1077#1081
        TabOrder = 3
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 24
        Top = 224
        Width = 153
        Height = 17
        Caption = #1056#1072#1084#1072' '#1087#1088#1086#1093#1086#1076#1085#1072#1103
        TabOrder = 5
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 24
        Top = 248
        Width = 177
        Height = 17
        Caption = #1056#1080#1075#1077#1083#1100' ('#1073#1072#1083#1082#1072' '#1085#1072#1089#1090#1080#1083#1072')'
        TabOrder = 7
        OnClick = CheckBox3Click
      end
      object CheckBox4: TCheckBox
        Left = 24
        Top = 272
        Width = 153
        Height = 17
        Caption = #1044#1080#1072#1075#1086#1085#1072#1083#1100
        TabOrder = 9
        OnClick = CheckBox4Click
      end
      object CheckBox5: TCheckBox
        Left = 24
        Top = 296
        Width = 153
        Height = 17
        Caption = #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100
        TabOrder = 11
        OnClick = CheckBox5Click
      end
      object CheckBox6: TCheckBox
        Left = 24
        Top = 320
        Width = 153
        Height = 17
        Caption = #1058#1088#1072#1087#1099
        TabOrder = 13
        OnClick = CheckBox6Click
      end
      object Edit1: TEdit
        Left = 208
        Top = 192
        Width = 60
        Height = 27
        Enabled = False
        TabOrder = 4
      end
      object Edit2: TEdit
        Left = 208
        Top = 216
        Width = 60
        Height = 27
        Enabled = False
        TabOrder = 6
      end
      object Edit3: TEdit
        Left = 208
        Top = 240
        Width = 60
        Height = 27
        Enabled = False
        TabOrder = 8
      end
      object Edit4: TEdit
        Left = 208
        Top = 264
        Width = 60
        Height = 27
        Enabled = False
        TabOrder = 10
      end
      object Edit5: TEdit
        Left = 208
        Top = 288
        Width = 60
        Height = 27
        Enabled = False
        TabOrder = 12
      end
      object Edit6: TEdit
        Left = 208
        Top = 312
        Width = 60
        Height = 27
        Enabled = False
        TabOrder = 14
      end
      object num_doc: TEdit
        Left = 104
        Top = 96
        Width = 153
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = rent_numExit
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088
      ImageIndex = 1
      object company_n: TLabel
        Left = 30
        Top = 16
        Width = 90
        Height = 19
        Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object director_n: TLabel
        Left = 30
        Top = 44
        Width = 65
        Height = 19
        Caption = #1044#1080#1088#1077#1082#1090#1086#1088
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object INN_n: TLabel
        Left = 30
        Top = 68
        Width = 33
        Height = 19
        Caption = #1048#1053#1053
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object KPP_n: TLabel
        Left = 30
        Top = 92
        Width = 33
        Height = 19
        Caption = #1050#1055#1055
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object OKPO_n: TLabel
        Left = 30
        Top = 116
        Width = 46
        Height = 19
        Caption = #1054#1050#1055#1054
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object legalad_n: TLabel
        Left = 30
        Top = 140
        Width = 69
        Height = 19
        Caption = #1070#1088'. '#1072#1076#1088#1077#1089
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object mailad_n: TLabel
        Left = 30
        Top = 164
        Width = 111
        Height = 19
        Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object tel_n: TLabel
        Left = 30
        Top = 188
        Width = 56
        Height = 19
        Caption = #1058#1077#1083#1077#1092#1086#1085
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object bank_n: TLabel
        Left = 30
        Top = 212
        Width = 32
        Height = 19
        Caption = #1041#1072#1085#1082
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object rs_n: TLabel
        Left = 30
        Top = 236
        Width = 19
        Height = 19
        Caption = #1088'/'#1089
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ks_n: TLabel
        Left = 30
        Top = 260
        Width = 18
        Height = 19
        Caption = #1082'/'#1089
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object BIK_n: TLabel
        Left = 30
        Top = 284
        Width = 31
        Height = 19
        Caption = #1041#1048#1050
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 30
        Top = 324
        Width = 120
        Height = 19
        Caption = #1042' '#1083#1080#1094#1077' '#1076#1080#1088#1077#1082#1090#1086#1088#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Company_ed: TEdit
        Left = 144
        Top = 10
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object director_ed: TEdit
        Left = 144
        Top = 36
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = director_edExit
      end
      object INN_ed: TEdit
        Left = 144
        Top = 60
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object KPP_ed: TEdit
        Left = 144
        Top = 84
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object OKPO_ed: TEdit
        Left = 144
        Top = 108
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object legalad_ed: TEdit
        Left = 144
        Top = 132
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object mailad_ed: TEdit
        Left = 144
        Top = 156
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object tel_ed: TMaskEdit
        Left = 144
        Top = 180
        Width = 119
        Height = 27
        EditMask = '(9999)99-99-99;1;_'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 7
        Text = '(    )  -  -  '
      end
      object bank_ed: TEdit
        Left = 144
        Top = 204
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object rs_ed: TEdit
        Left = 144
        Top = 228
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object ks_ed: TEdit
        Left = 144
        Top = 252
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object BIK_ed: TEdit
        Left = 144
        Top = 276
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object Button1: TButton
        Left = 256
        Top = 400
        Width = 129
        Height = 41
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = Button1Click
      end
      object director_ed1: TEdit
        Left = 152
        Top = 316
        Width = 489
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object Panel1: TPanel
        Left = 8
        Top = 8
        Width = 641
        Height = 353
        TabOrder = 14
        object FIO_n: TLabel
          Left = 16
          Top = 24
          Width = 36
          Height = 19
          Caption = #1060#1048#1054
        end
        object adpr_n: TLabel
          Left = 16
          Top = 56
          Width = 111
          Height = 19
          Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
        end
        object document_n: TLabel
          Left = 16
          Top = 88
          Width = 66
          Height = 19
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090
        end
        object ser_n: TLabel
          Left = 16
          Top = 120
          Width = 42
          Height = 19
          Caption = #1057#1077#1088#1080#1103
        end
        object num_n: TLabel
          Left = 200
          Top = 120
          Width = 15
          Height = 19
          Caption = #8470
        end
        object vidan_n: TLabel
          Left = 16
          Top = 152
          Width = 45
          Height = 19
          Caption = #1042#1099#1076#1072#1085
        end
        object datevid_n: TLabel
          Left = 16
          Top = 184
          Width = 86
          Height = 19
          Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        end
        object telef_n: TLabel
          Left = 16
          Top = 216
          Width = 56
          Height = 19
          Caption = #1058#1077#1083#1077#1092#1086#1085
        end
        object FIO_ed: TEdit
          Left = 56
          Top = 16
          Width = 553
          Height = 27
          TabOrder = 0
        end
        object adpr_ed: TEdit
          Left = 136
          Top = 48
          Width = 473
          Height = 27
          TabOrder = 1
        end
        object document_ed: TEdit
          Left = 104
          Top = 80
          Width = 313
          Height = 27
          TabOrder = 2
        end
        object ser_ed: TEdit
          Left = 72
          Top = 112
          Width = 121
          Height = 27
          TabOrder = 3
        end
        object num_ed: TEdit
          Left = 224
          Top = 112
          Width = 121
          Height = 27
          TabOrder = 4
        end
        object datevid_ed: TMaskEdit
          Left = 112
          Top = 176
          Width = 120
          Height = 27
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 5
          Text = '  .  .    '
        end
        object vidan_ed: TEdit
          Left = 72
          Top = 144
          Width = 537
          Height = 27
          TabOrder = 6
        end
        object telef_ed: TEdit
          Left = 88
          Top = 208
          Width = 193
          Height = 27
          TabOrder = 7
        end
      end
    end
  end
end
