inherited frmPersonalCards: TfrmPersonalCards
  Left = 352
  Top = 315
  Height = 444
  Caption = #1051#1080#1095#1085#1099#1077' '#1082#1072#1088#1090#1086#1095#1082#1080
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Height = 417
    ActivePage = tsDetail
    ClientRectBottom = 417
    ClientRectRight = 686
    ClientRectTop = 0
    inherited tsList: TcxTabSheet
      inherited dxBarDockControl1: TdxBarDockControl
        Height = 414
      end
      inherited grdMainList: TcxGrid
        Height = 414
        inherited tvMainList: TcxGridDBTableView
          OptionsView.ColumnAutoWidth = True
          Preview.Column = tvMainListCOMMENTS
          Styles.IncSearch = nil
          Styles.Header = nil
          Styles.Preview = nil
          object tvMainListSURNAME: TcxGridDBColumn
            DataBinding.FieldName = 'SURNAME'
            HeaderAlignmentHorz = taCenter
            Width = 172
          end
          object tvMainListNAME: TcxGridDBColumn
            DataBinding.FieldName = 'NAME'
            HeaderAlignmentHorz = taCenter
            Width = 159
          end
          object tvMainListSECOND_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'SECOND_NAME'
            HeaderAlignmentHorz = taCenter
            Width = 208
          end
          object tvMainListSEX: TcxGridDBColumn
            DataBinding.FieldName = 'SEX'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object tvMainListBIRTHDAY: TcxGridDBColumn
            DataBinding.FieldName = 'BIRTHDAY'
            HeaderAlignmentHorz = taCenter
            Width = 105
          end
          object tvMainListCOMMENTS: TcxGridDBColumn
            DataBinding.FieldName = 'COMMENTS'
          end
        end
      end
    end
    inherited tsDetail: TcxTabSheet
      inherited dxBarDockControl2: TdxBarDockControl
        Height = 414
      end
      inherited Panel4: TPanel
        Height = 414
        inherited Panel1: TPanel
          Top = 355
          inherited dbmComments: TcxDBMemo
            Style.IsFontAssigned = True
          end
        end
        inherited cxSplitter1: TcxSplitter
          Top = 347
        end
        object cxPageControl2: TcxPageControl
          Left = 0
          Top = 0
          Width = 659
          Height = 347
          ActivePage = cxTabSheet1
          Align = alClient
          MultiLine = True
          Options = [pcoSort]
          TabOrder = 2
          ClientRectBottom = 347
          ClientRectRight = 659
          ClientRectTop = 94
          object cxTabSheet1: TcxTabSheet
            Caption = 'I. '#1054#1073#1097#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
            ImageIndex = 0
            object ScrollBox1: TScrollBox
              Left = 0
              Top = 0
              Width = 659
              Height = 253
              HorzScrollBar.Visible = False
              VertScrollBar.Smooth = True
              VertScrollBar.Style = ssFlat
              VertScrollBar.Tracking = True
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Ctl3D = True
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              DesignSize = (
                646
                253)
              object cxLabel19: TcxLabel
                Left = 565
                Top = 243
                Anchors = [akTop, akRight]
                Caption = #1050#1086#1076':'
                ParentFont = False
                Style.Font.Charset = RUSSIAN_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
              end
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 646
                Height = 1225
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                DesignSize = (
                  646
                  1225)
                object Image1: TImage
                  Left = 313
                  Top = 15
                  Width = 6
                  Height = 13
                  AutoSize = True
                  Picture.Data = {
                    07544269746D61703A010000424D3A0100000000000036000000280000000600
                    00000D0000000100180000000000040100000000000000000000000000000000
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00
                    0000FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFF
                    FFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF
                    0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFF00000000
                    0000000000FFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFF
                    FFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000}
                  Transparent = True
                end
                object Image3: TImage
                  Left = 454
                  Top = 205
                  Width = 6
                  Height = 13
                  AutoSize = True
                  Picture.Data = {
                    07544269746D61703A010000424D3A0100000000000036000000280000000600
                    00000D0000000100180000000000040100000000000000000000000000000000
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00
                    0000FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFF
                    FFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF
                    0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFF00000000
                    0000000000FFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFF
                    FFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000}
                  Transparent = True
                end
                object cxLabel1: TcxLabel
                  Left = 98
                  Top = 13
                  Caption = #1044#1072#1090#1072' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBDateEdit1: TcxDBDateEdit
                  Left = 217
                  Top = 10
                  DataBinding.DataField = 'FILL_DATE'
                  DataBinding.DataSource = dsMain
                  Properties.SaveTime = False
                  Properties.ShowTime = False
                  TabOrder = 0
                  Width = 86
                end
                object cxLabel9: TcxLabel
                  Left = 134
                  Top = 33
                  Caption = '1. '#1060#1072#1084#1080#1083#1080#1103':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBLookupComboBox4: TcxDBLookupComboBox
                  Left = 217
                  Top = 30
                  Anchors = [akLeft, akTop, akRight]
                  DataBinding.DataField = 'PERSON_ID'
                  DataBinding.DataSource = dsMain
                  Properties.ClearKey = 46
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'FIO'
                    end>
                  Properties.ListOptions.GridLines = glNone
                  Properties.ListOptions.ShowHeader = False
                  Properties.ListSource = frmDM.dsPersons
                  TabOrder = 1
                  Width = 415
                end
                object cxLabel2: TcxLabel
                  Left = 119
                  Top = 53
                  Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#8470':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel12: TcxLabel
                  Left = 99
                  Top = 73
                  Caption = '2. '#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel10: TcxLabel
                  Left = 177
                  Top = 93
                  Caption = #1055#1086#1083':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel3: TcxLabel
                  Left = 55
                  Top = 163
                  Caption = #1048#1053#1053' '#1085#1072#1083#1086#1075#1086#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit2: TcxDBTextEdit
                  Left = 217
                  Top = 160
                  DataBinding.DataField = 'INN'
                  DataBinding.DataSource = dsMain
                  TabOrder = 2
                  Width = 227
                end
                object cxLabel4: TcxLabel
                  Left = 38
                  Top = 111
                  AutoSize = False
                  Caption = 
                    #8470' '#1089#1090#1088#1072#1093#1086#1074#1086#1075#1086' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1087#1077#1085#1089#1080#1086#1085#1085#1086#1075#1086' '#1089#1090#1088#1072#1093#1086#1074#1072 +
                    #1085#1080#1103':'
                  ParentFont = False
                  Properties.Alignment.Horz = taRightJustify
                  Properties.WordWrap = True
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Height = 59
                  Width = 169
                end
                object cxLabel5: TcxLabel
                  Left = 102
                  Top = 183
                  Caption = #1061#1072#1088#1072#1082#1090#1077#1088' '#1088#1072#1073#1086#1090#1099':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit12: TcxDBTextEdit
                  Left = 217
                  Top = 180
                  DataBinding.DataField = 'WORK_CHARACTER'
                  DataBinding.DataSource = dsMain
                  TabOrder = 3
                  Width = 227
                end
                object cxLabel6: TcxLabel
                  Left = 133
                  Top = 203
                  Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBLookupComboBox3: TcxDBLookupComboBox
                  Left = 217
                  Top = 200
                  DataBinding.DataField = 'WORK_KIND'
                  DataBinding.DataSource = dsMain
                  Properties.ClearKey = 46
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NAME'
                    end>
                  Properties.ListOptions.GridLines = glNone
                  Properties.ListOptions.ShowHeader = False
                  Properties.ListSource = dsWorkKinds
                  TabOrder = 4
                  Width = 227
                end
                object cxLabel7: TcxLabel
                  Left = 83
                  Top = 223
                  Caption = #1058#1088#1091#1076#1086#1074#1086#1081' '#1076#1086#1075#1086#1074#1086#1088' '#8470':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit4: TcxDBTextEdit
                  Left = 217
                  Top = 220
                  DataBinding.DataField = 'WORK_AGREEMENT_NUMBER'
                  DataBinding.DataSource = dsMain
                  TabOrder = 5
                  Width = 86
                end
                object cxLabel8: TcxLabel
                  Left = 173
                  Top = 243
                  Caption = #1044#1072#1090#1072':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBDateEdit2: TcxDBDateEdit
                  Left = 217
                  Top = 240
                  DataBinding.DataField = 'WORK_AGREEMENT_DATE'
                  DataBinding.DataSource = dsMain
                  Properties.DateOnError = deNull
                  Properties.SaveTime = False
                  Properties.ShowTime = False
                  TabOrder = 6
                  Width = 86
                end
                object cxLabel13: TcxLabel
                  Left = 92
                  Top = 263
                  Caption = '3. '#1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit8: TcxDBTextEdit
                  Left = 217
                  Top = 260
                  Anchors = [akLeft, akTop, akRight]
                  DataBinding.DataField = 'BIRTH_PLACE'
                  DataBinding.DataSource = dsMain
                  TabOrder = 7
                  Width = 252
                end
                object cxLabel20: TcxLabel
                  Left = 479
                  Top = 263
                  Anchors = [akTop, akRight]
                  Caption = #1087#1086' '#1054#1050#1040#1058#1054':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit13: TcxDBTextEdit
                  Left = 552
                  Top = 260
                  Anchors = [akTop, akRight]
                  DataBinding.DataField = 'BIRTH_PLACE_OKATO'
                  DataBinding.DataSource = dsMain
                  TabOrder = 8
                  Width = 80
                end
                object cxLabel14: TcxLabel
                  Left = 112
                  Top = 283
                  Caption = '4. '#1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit9: TcxDBTextEdit
                  Left = 217
                  Top = 280
                  Anchors = [akLeft, akTop, akRight]
                  DataBinding.DataField = 'CITIZENSHIP'
                  DataBinding.DataSource = dsMain
                  TabOrder = 9
                  Width = 252
                end
                object cxLabel21: TcxLabel
                  Left = 484
                  Top = 283
                  Anchors = [akTop, akRight]
                  Caption = #1087#1086' '#1054#1050#1048#1053':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit14: TcxDBTextEdit
                  Left = 552
                  Top = 280
                  Anchors = [akTop, akRight]
                  DataBinding.DataField = 'CITIZENSHIP_OKIN'
                  DataBinding.DataSource = dsMain
                  TabOrder = 10
                  Width = 80
                end
                object cxLabel15: TcxLabel
                  Left = 26
                  Top = 303
                  Caption = '5. '#1047#1085#1072#1085#1080#1077' '#1080#1085#1086#1089#1090#1088#1072#1085#1085#1086#1075#1086' '#1103#1079#1099#1082#1072':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object grdLanguages: TcxGrid
                  Left = 218
                  Top = 301
                  Width = 413
                  Height = 75
                  Anchors = [akLeft, akTop, akRight]
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                  LookAndFeel.Kind = lfOffice11
                  LookAndFeel.NativeStyle = False
                  object tvLanguages: TcxGridDBTableView
                    Tag = 1
                    NavigatorButtons.ConfirmDelete = False
                    FilterBox.CustomizeDialog = False
                    DataController.DataSource = dsLanguages
                    DataController.KeyFieldNames = 'ID'
                    DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.CellHints = True
                    OptionsBehavior.FocusCellOnTab = True
                    OptionsBehavior.FocusFirstCellOnNewRecord = True
                    OptionsCustomize.ColumnFiltering = False
                    OptionsCustomize.ColumnGrouping = False
                    OptionsCustomize.ColumnSorting = False
                    OptionsCustomize.DataRowSizing = True
                    OptionsData.Appending = True
                    OptionsSelection.InvertSelect = False
                    OptionsView.CellEndEllipsis = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.HeaderEndEllipsis = True
                    OptionsView.Indicator = True
                    Preview.Column = tvLanguagesCOMMENTS
                    Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
                    object tvLanguagesFOREIGN_LANGUAGE: TcxGridDBColumn
                      DataBinding.FieldName = 'FOREIGN_LANGUAGE'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 215
                    end
                    object tvLanguagesFOREIGN_LANGUAGE_SKILL: TcxGridDBColumn
                      DataBinding.FieldName = 'FOREIGN_LANGUAGE_SKILL'
                      PropertiesClassName = 'TcxLookupComboBoxProperties'
                      Properties.ClearKey = 46
                      Properties.KeyFieldNames = 'ID'
                      Properties.ListColumns = <
                        item
                          FieldName = 'NAME'
                        end>
                      Properties.ListOptions.GridLines = glNone
                      Properties.ListOptions.ShowHeader = False
                      Properties.ListSource = dsForeignLanguageSkills
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 133
                    end
                    object tvLanguagesOKIN: TcxGridDBColumn
                      DataBinding.FieldName = 'OKIN'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 126
                    end
                    object tvLanguagesCOMMENTS: TcxGridDBColumn
                      DataBinding.FieldName = 'COMMENTS'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                    end
                  end
                  object glLanguages: TcxGridLevel
                    GridView = tvLanguages
                  end
                end
                object cxLabel16: TcxLabel
                  Left = 110
                  Top = 378
                  Caption = '6. '#1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBLookupComboBox1: TcxDBLookupComboBox
                  Left = 217
                  Top = 375
                  Anchors = [akLeft, akTop, akRight]
                  DataBinding.DataField = 'EDUCATION_LEVEL'
                  DataBinding.DataSource = dsMain
                  Properties.ClearKey = 46
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NAME'
                    end>
                  Properties.ListOptions.GridLines = glNone
                  Properties.ListOptions.ShowHeader = False
                  Properties.ListSource = dsEducationLevels
                  TabOrder = 12
                  Width = 252
                end
                object cxLabel22: TcxLabel
                  Left = 484
                  Top = 378
                  Anchors = [akTop, akRight]
                  Caption = #1087#1086' '#1054#1050#1048#1053':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit15: TcxDBTextEdit
                  Left = 552
                  Top = 375
                  Anchors = [akTop, akRight]
                  DataBinding.DataField = 'EDUCATION_LEVEL_OKIN'
                  DataBinding.DataSource = dsMain
                  TabOrder = 13
                  Width = 80
                end
                object grdEducations: TcxGrid
                  Left = 218
                  Top = 396
                  Width = 413
                  Height = 148
                  Anchors = [akLeft, akTop, akRight]
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 14
                  LookAndFeel.Kind = lfOffice11
                  LookAndFeel.NativeStyle = False
                  object tvEducations: TcxGridDBBandedTableView
                    NavigatorButtons.ConfirmDelete = False
                    FilterBox.CustomizeDialog = False
                    DataController.DataSource = dsEducation
                    DataController.KeyFieldNames = 'ID'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.FocusCellOnTab = True
                    OptionsBehavior.FocusFirstCellOnNewRecord = True
                    OptionsCustomize.ColumnFiltering = False
                    OptionsCustomize.ColumnGrouping = False
                    OptionsCustomize.ColumnMoving = False
                    OptionsCustomize.ColumnSorting = False
                    OptionsCustomize.BandMoving = False
                    OptionsData.Appending = True
                    OptionsSelection.InvertSelect = False
                    OptionsView.CellAutoHeight = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.Indicator = True
                    Preview.Column = tvEducationsCOMMENTS
                    Styles.IncSearch = frmDM.cxIncSearch
                    Styles.Header = frmDM.stHeader
                    Styles.Preview = frmDM.stPreview
                    Bands = <
                      item
                        Options.HoldOwnColumnsOnly = True
                      end
                      item
                        Caption = 
                          #1044#1086#1082#1091#1084#1077#1085#1090' '#1086#1073' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080', '#1086' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080' '#1080#1083#1080' '#1085#1072#1083#1080#1095#1080#1080' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1099#1093' ' +
                          #1079#1085#1072#1085#1080#1081
                        Options.HoldOwnColumnsOnly = True
                        Styles.Header = frmDM.stHeader
                      end
                      item
                        Options.HoldOwnColumnsOnly = True
                      end>
                    object tvEducationsEDUCATIONAL_INSTITUTION_NAME: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'EDUCATIONAL_INSTITUTION_NAME'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 283
                      Position.BandIndex = 0
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object tvEducationsEDUCATION_DOCUMENT_NAME: TcxGridDBBandedColumn
                      Caption = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                      DataBinding.FieldName = 'EDUCATION_DOCUMENT_NAME'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 279
                      Position.BandIndex = 1
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object tvEducationsEDUCATION_DOCUMENT_SERIAL: TcxGridDBBandedColumn
                      Caption = #1089#1077#1088#1080#1103
                      DataBinding.FieldName = 'EDUCATION_DOCUMENT_SERIAL'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 100
                      Position.BandIndex = 1
                      Position.ColIndex = 2
                      Position.RowIndex = 0
                    end
                    object tvEducationsEDUCATION_DOCUMENT_NUMBER: TcxGridDBBandedColumn
                      Caption = #1085#1086#1084#1077#1088
                      DataBinding.FieldName = 'EDUCATION_DOCUMENT_NUMBER'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 95
                      Position.BandIndex = 1
                      Position.ColIndex = 3
                      Position.RowIndex = 0
                    end
                    object tvEducationsGRADUATION_YEAR: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'GRADUATION_YEAR'
                      PropertiesClassName = 'TcxDateEditProperties'
                      Properties.DateOnError = deNull
                      Properties.SaveTime = False
                      Properties.ShowTime = False
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 94
                      Position.BandIndex = 2
                      Position.ColIndex = 0
                      Position.LineCount = 2
                      Position.RowIndex = 0
                    end
                    object tvEducationsQUALIFICATION: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'QUALIFICATION'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 277
                      Position.BandIndex = 0
                      Position.ColIndex = 0
                      Position.RowIndex = 1
                    end
                    object tvEducationsSPECIALITY: TcxGridDBBandedColumn
                      Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1080#1083#1080' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
                      DataBinding.FieldName = 'SPECIALITY'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 348
                      Position.BandIndex = 1
                      Position.ColIndex = 0
                      Position.RowIndex = 1
                    end
                    object tvEducationsSPECIALITY_OKCO: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'SPECIALITY_OKCO'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 126
                      Position.BandIndex = 1
                      Position.ColIndex = 1
                      Position.RowIndex = 1
                    end
                    object tvEducationsCOMMENTS: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'COMMENTS'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Position.BandIndex = 1
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                  end
                  object glEducations: TcxGridLevel
                    GridView = tvEducations
                  end
                end
                object cxLabel17: TcxLabel
                  Left = 10
                  Top = 541
                  AutoSize = False
                  Caption = #1055#1086#1089#1083#1077#1074#1091#1079#1086#1074#1089#1082#1086#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077':'
                  ParentFont = False
                  Properties.Alignment.Horz = taRightJustify
                  Properties.WordWrap = True
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Height = 34
                  Width = 197
                end
                object cxDBLookupComboBox2: TcxDBLookupComboBox
                  Left = 217
                  Top = 553
                  Anchors = [akLeft, akTop, akRight]
                  DataBinding.DataField = 'POST_GRADUATE_EDUCATION_LEVEL'
                  DataBinding.DataSource = dsMain
                  Properties.ClearKey = 46
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NAME'
                    end>
                  Properties.ListOptions.GridLines = glNone
                  Properties.ListOptions.ShowHeader = False
                  Properties.ListSource = dsPostGraduateEducationLevels
                  TabOrder = 15
                  Width = 252
                end
                object cxLabel23: TcxLabel
                  Left = 484
                  Top = 556
                  Anchors = [akTop, akRight]
                  Caption = #1087#1086' '#1054#1050#1048#1053':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit10: TcxDBTextEdit
                  Left = 552
                  Top = 553
                  Anchors = [akTop, akRight]
                  DataBinding.DataField = 'POST_GRADUATE_EDUCATION_OKIN'
                  DataBinding.DataSource = dsMain
                  TabOrder = 16
                  Width = 80
                end
                object cxLabel18: TcxLabel
                  Left = 122
                  Top = 724
                  Caption = '7. '#1055#1088#1086#1092#1077#1089#1089#1080#1103':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object grdPostGraduateEds: TcxGrid
                  Left = 218
                  Top = 574
                  Width = 413
                  Height = 148
                  Anchors = [akLeft, akTop, akRight]
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 17
                  LookAndFeel.Kind = lfOffice11
                  LookAndFeel.NativeStyle = False
                  object tvPostGraduateEds: TcxGridDBBandedTableView
                    NavigatorButtons.ConfirmDelete = False
                    FilterBox.CustomizeDialog = False
                    DataController.DataSource = dsPostGraduateEds
                    DataController.KeyFieldNames = 'ID'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.FocusCellOnTab = True
                    OptionsBehavior.FocusFirstCellOnNewRecord = True
                    OptionsCustomize.ColumnFiltering = False
                    OptionsCustomize.ColumnGrouping = False
                    OptionsCustomize.ColumnMoving = False
                    OptionsCustomize.ColumnSorting = False
                    OptionsCustomize.BandMoving = False
                    OptionsData.Appending = True
                    OptionsSelection.InvertSelect = False
                    OptionsView.CellAutoHeight = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.Indicator = True
                    OptionsView.BandHeaders = False
                    Preview.Column = tvPostGraduateEdsCOMMENTS
                    Styles.IncSearch = frmDM.cxIncSearch
                    Styles.Header = frmDM.stHeader
                    Styles.Preview = frmDM.stPreview
                    Bands = <
                      item
                        Options.HoldOwnColumnsOnly = True
                      end
                      item
                        Options.HoldOwnColumnsOnly = True
                      end>
                    object tvPostGraduateEdsEDUCATIONAL_INSTITUTION_NAME: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'EDUCATIONAL_INSTITUTION_NAME'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 243
                      Position.BandIndex = 0
                      Position.ColIndex = 0
                      Position.LineCount = 2
                      Position.RowIndex = 0
                    end
                    object tvPostGraduateEdsEDUCATION_DOCUMENT_NAME: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'EDUCATION_DOCUMENT_NAME'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 400
                      Position.BandIndex = 1
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object tvPostGraduateEdsGRADUATION_YEAR: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'GRADUATION_YEAR'
                      PropertiesClassName = 'TcxDateEditProperties'
                      Properties.DateOnError = deNull
                      Properties.SaveTime = False
                      Properties.ShowTime = False
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 100
                      Position.BandIndex = 1
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object tvPostGraduateEdsSPECIALITY: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'SPECIALITY'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 440
                      Position.BandIndex = 1
                      Position.ColIndex = 0
                      Position.RowIndex = 1
                    end
                    object tvPostGraduateEdsSPECIALITY_OKCO: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'SPECIALITY_OKCO'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 91
                      Position.BandIndex = 1
                      Position.ColIndex = 1
                      Position.RowIndex = 1
                    end
                    object tvPostGraduateEdsCOMMENTS: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'COMMENTS'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Position.BandIndex = 0
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                  end
                  object glPostGraduateEds: TcxGridLevel
                    GridView = tvPostGraduateEds
                  end
                end
                object grdProfessions: TcxGrid
                  Left = 218
                  Top = 721
                  Width = 413
                  Height = 80
                  Anchors = [akLeft, akTop, akRight]
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 18
                  LookAndFeel.Kind = lfOffice11
                  LookAndFeel.NativeStyle = False
                  object tvProfessions: TcxGridDBTableView
                    Tag = 1
                    NavigatorButtons.ConfirmDelete = False
                    FilterBox.CustomizeDialog = False
                    DataController.DataSource = dsProfessions
                    DataController.KeyFieldNames = 'ID'
                    DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.CellHints = True
                    OptionsBehavior.FocusCellOnTab = True
                    OptionsBehavior.FocusFirstCellOnNewRecord = True
                    OptionsCustomize.ColumnFiltering = False
                    OptionsCustomize.ColumnGrouping = False
                    OptionsCustomize.ColumnSorting = False
                    OptionsCustomize.DataRowSizing = True
                    OptionsData.Appending = True
                    OptionsSelection.InvertSelect = False
                    OptionsView.CellEndEllipsis = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.HeaderEndEllipsis = True
                    OptionsView.Indicator = True
                    Preview.Column = tvProfessionsCOMMENTS
                    Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
                    object tvProfessionsPROFESSION: TcxGridDBColumn
                      DataBinding.FieldName = 'PROFESSION'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 285
                    end
                    object tvProfessionsPROFESSION_OKPDTR: TcxGridDBColumn
                      Caption = #1087#1086' '#1054#1050#1055#1044#1058#1056
                      DataBinding.FieldName = 'PROFESSION_OKPDTR'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Width = 83
                    end
                    object tvProfessionsIS_MAIN: TcxGridDBColumn
                      DataBinding.FieldName = 'IS_MAIN'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.DisplayChecked = #1054#1089#1085#1086#1074#1085#1072#1103
                      Properties.DisplayUnchecked = #1044#1088#1091#1075#1072#1103
                      Properties.ImmediatePost = True
                      Properties.ValueChecked = 1
                      Properties.ValueUnchecked = 0
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      SortIndex = 0
                      SortOrder = soDescending
                      Width = 104
                    end
                    object tvProfessionsCOMMENTS: TcxGridDBColumn
                      DataBinding.FieldName = 'COMMENTS'
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                    end
                  end
                  object glProfessions: TcxGridLevel
                    GridView = tvProfessions
                  end
                end
                object cxDBLabel1: TcxDBLabel
                  Left = 217
                  Top = 94
                  DataBinding.DataField = 'SEX'
                  DataBinding.DataSource = dsMain
                  Height = 18
                  Width = 121
                end
                object cxLabel33: TcxLabel
                  Left = 13
                  Top = 801
                  Caption = '8. '#1057#1090#1072#1078' '#1088#1072#1073#1086#1090#1099' ('#1087#1086' '#1089#1086#1089#1090#1086#1103#1085#1080#1102' '#1085#1072
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel34: TcxLabel
                  Left = 196
                  Top = 816
                  Caption = '):'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel35: TcxLabel
                  Left = 463
                  Top = 835
                  Caption = #1083#1077#1090
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel37: TcxLabel
                  Left = 353
                  Top = 835
                  Caption = #1084#1077#1089#1103#1094#1077#1074
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel40: TcxLabel
                  Left = 161
                  Top = 835
                  Caption = #1054#1073#1097#1080#1081':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel41: TcxLabel
                  Left = 118
                  Top = 855
                  Caption = #1053#1077#1087#1088#1077#1088#1099#1074#1085#1099#1081':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel44: TcxLabel
                  Left = 264
                  Top = 835
                  Caption = #1076#1085#1077#1081
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit19: TcxDBTextEdit
                  Left = 109
                  Top = 816
                  DataBinding.DataField = 'FILL_DATE'
                  DataBinding.DataSource = dsMain
                  Enabled = False
                  Properties.Alignment.Horz = taRightJustify
                  Style.BorderStyle = ebsNone
                  StyleDisabled.TextColor = clWindowText
                  TabOrder = 48
                  Width = 91
                end
                object cxLabel47: TcxLabel
                  Left = 101
                  Top = 990
                  Caption = '10. '#1057#1086#1089#1090#1072#1074' '#1089#1077#1084#1100#1080':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object grdFamilyInfo: TcxGrid
                  Left = 218
                  Top = 987
                  Width = 413
                  Height = 80
                  Anchors = [akLeft, akTop, akRight]
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 50
                  LookAndFeel.Kind = lfOffice11
                  LookAndFeel.NativeStyle = False
                  object tvFamilyInfo: TcxGridDBTableView
                    Tag = 1
                    NavigatorButtons.ConfirmDelete = False
                    FilterBox.CustomizeDialog = False
                    DataController.DataSource = dsFamilyInfo
                    DataController.KeyFieldNames = 'ID'
                    DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.CellHints = True
                    OptionsBehavior.FocusCellOnTab = True
                    OptionsBehavior.FocusFirstCellOnNewRecord = True
                    OptionsCustomize.ColumnFiltering = False
                    OptionsCustomize.ColumnGrouping = False
                    OptionsCustomize.ColumnSorting = False
                    OptionsCustomize.DataRowSizing = True
                    OptionsData.Appending = True
                    OptionsSelection.InvertSelect = False
                    OptionsView.CellEndEllipsis = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.HeaderEndEllipsis = True
                    OptionsView.Indicator = True
                    Preview.Column = tvFamilyInfoCOMMENTS
                    Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
                    object tvFamilyInfoFAMILY_STATUS: TcxGridDBColumn
                      Caption = #1057#1090#1077#1087#1077#1085#1100' '#1088#1086#1076#1089#1090#1074#1072' ('#1073#1083#1080#1078#1072#1081#1096#1080#1077' '#1088#1086#1076#1089#1090#1074#1077#1085#1085#1080#1082#1080')'
                      DataBinding.FieldName = 'FAMILY_STATUS'
                      HeaderAlignmentHorz = taCenter
                      Width = 177
                    end
                    object tvFamilyInfoFIO: TcxGridDBColumn
                      Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
                      DataBinding.FieldName = 'FIO'
                      HeaderAlignmentHorz = taCenter
                      Width = 203
                    end
                    object tvFamilyInfoBIRTH_YEAR: TcxGridDBColumn
                      DataBinding.FieldName = 'BIRTH_YEAR'
                      PropertiesClassName = 'TcxDateEditProperties'
                      Properties.DateOnError = deNull
                      Properties.SaveTime = False
                      Properties.ShowTime = False
                      HeaderAlignmentHorz = taCenter
                      Width = 92
                    end
                    object tvFamilyInfoCOMMENTS: TcxGridDBColumn
                      DataBinding.FieldName = 'COMMENTS'
                      HeaderAlignmentHorz = taCenter
                    end
                  end
                  object glFamilyInfo: TcxGridLevel
                    GridView = tvFamilyInfo
                  end
                end
                object cxLabel48: TcxLabel
                  Left = 79
                  Top = 969
                  Caption = '9. '#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1074' '#1073#1088#1072#1082#1077':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel49: TcxLabel
                  Left = 484
                  Top = 969
                  Anchors = [akTop, akRight]
                  Caption = #1087#1086' '#1054#1050#1048#1053':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit20: TcxDBTextEdit
                  Left = 552
                  Top = 966
                  Anchors = [akTop, akRight]
                  DataBinding.DataField = 'MARRIAGE_STATUS_OKIN'
                  DataBinding.DataSource = dsMain
                  TabOrder = 53
                  Width = 80
                end
                object cxDBTextEdit21: TcxDBTextEdit
                  Left = 217
                  Top = 832
                  DataBinding.DataField = 'TOTAL_WORK_DAYS'
                  DataBinding.DataSource = dsMain
                  TabOrder = 54
                  Width = 46
                end
                object cxDBTextEdit22: TcxDBTextEdit
                  Left = 306
                  Top = 832
                  DataBinding.DataField = 'TOTAL_WORK_MONTHS'
                  DataBinding.DataSource = dsMain
                  TabOrder = 55
                  Width = 46
                end
                object cxDBTextEdit23: TcxDBTextEdit
                  Left = 416
                  Top = 832
                  DataBinding.DataField = 'TOTAL_WORK_YEARS'
                  DataBinding.DataSource = dsMain
                  TabOrder = 56
                  Width = 46
                end
                object cxLabel36: TcxLabel
                  Left = 110
                  Top = 1069
                  Caption = '11. '#1055#1072#1089#1089#1087#1086#1088#1090': '#8470
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel38: TcxLabel
                  Left = 128
                  Top = 1089
                  Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit24: TcxDBTextEdit
                  Left = 217
                  Top = 1066
                  DataBinding.DataField = 'PASSPORT_NUMBER'
                  DataBinding.DataSource = dsMain
                  TabOrder = 59
                  Width = 86
                end
                object cxDBDateEdit4: TcxDBDateEdit
                  Left = 217
                  Top = 1086
                  DataBinding.DataField = 'PASSPORT_DATE'
                  DataBinding.DataSource = dsMain
                  TabOrder = 60
                  Width = 86
                end
                object cxLabel39: TcxLabel
                  Left = 162
                  Top = 1109
                  Caption = #1042#1099#1076#1072#1085':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel43: TcxLabel
                  Left = 65
                  Top = 1171
                  AutoSize = False
                  Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1087#1086' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072':'
                  ParentFont = False
                  Properties.Alignment.Horz = taRightJustify
                  Properties.WordWrap = True
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Height = 35
                  Width = 142
                end
                object cxDBDateEdit5: TcxDBDateEdit
                  Left = 217
                  Top = 1183
                  DataBinding.DataField = 'PASSPORT_REGISTRATION_DATE'
                  DataBinding.DataSource = dsMain
                  Properties.DateOnError = deNull
                  Properties.SaveTime = False
                  Properties.ShowTime = False
                  TabOrder = 63
                  Width = 86
                end
                object cxLabel45: TcxLabel
                  Left = 102
                  Top = 1206
                  Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072':'
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit25: TcxDBTextEdit
                  Left = 217
                  Top = 1203
                  DataBinding.DataField = 'PHONE_NUMBER'
                  DataBinding.DataSource = dsMain
                  TabOrder = 65
                  Width = 325
                end
                object cxDBTextEdit26: TcxDBTextEdit
                  Left = 217
                  Top = 852
                  DataBinding.DataField = 'UNINTERRUPTED_WORK_DAYS'
                  DataBinding.DataSource = dsMain
                  TabOrder = 66
                  Width = 46
                end
                object cxLabel46: TcxLabel
                  Left = 264
                  Top = 855
                  Caption = #1076#1085#1077#1081
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit27: TcxDBTextEdit
                  Left = 306
                  Top = 852
                  DataBinding.DataField = 'UNINTERRUPTED_WORK_MONTHS'
                  DataBinding.DataSource = dsMain
                  TabOrder = 68
                  Width = 46
                end
                object cxLabel50: TcxLabel
                  Left = 353
                  Top = 855
                  Caption = #1084#1077#1089#1103#1094#1077#1074
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit28: TcxDBTextEdit
                  Left = 416
                  Top = 852
                  DataBinding.DataField = 'UNINTERRUPTED_WORK_YEARS'
                  DataBinding.DataSource = dsMain
                  TabOrder = 70
                  Width = 46
                end
                object cxLabel51: TcxLabel
                  Left = 463
                  Top = 855
                  Caption = #1083#1077#1090
                  ParentFont = False
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxDBTextEdit32: TcxDBTextEdit
                  Left = 217
                  Top = 966
                  DataBinding.DataField = 'MARRIAGE_STATUS'
                  DataBinding.DataSource = dsMain
                  TabOrder = 72
                  Width = 325
                end
                object cxDBMemo1: TcxDBMemo
                  Left = 217
                  Top = 1106
                  DataBinding.DataField = 'PASSPORT_DATA'
                  DataBinding.DataSource = dsMain
                  TabOrder = 73
                  Height = 64
                  Width = 488
                end
                object cxLabel55: TcxLabel
                  Left = 40
                  Top = 875
                  AutoSize = False
                  Caption = #1044#1072#1102#1097#1080#1081' '#1087#1088#1072#1074#1086' '#1085#1072' '#1085#1072#1076#1073#1072#1074#1082#1091' '#1079#1072' '#1074#1099#1089#1083#1091#1075#1091' '#1083#1077#1090':'
                  ParentFont = False
                  Properties.Alignment.Horz = taRightJustify
                  Properties.WordWrap = True
                  Style.Font.Charset = RUSSIAN_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Height = 34
                  Width = 167
                end
                object grdPrivWorkExp: TcxGrid
                  Left = 218
                  Top = 887
                  Width = 413
                  Height = 80
                  Anchors = [akLeft, akTop, akRight]
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 75
                  LookAndFeel.Kind = lfOffice11
                  LookAndFeel.NativeStyle = False
                  object tvPrivWorkExp: TcxGridDBTableView
                    Tag = 1
                    NavigatorButtons.ConfirmDelete = False
                    FilterBox.CustomizeDialog = False
                    DataController.DataSource = dsPrivWorkExp
                    DataController.KeyFieldNames = 'ID'
                    DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.CellHints = True
                    OptionsBehavior.FocusCellOnTab = True
                    OptionsBehavior.FocusFirstCellOnNewRecord = True
                    OptionsCustomize.ColumnFiltering = False
                    OptionsCustomize.ColumnGrouping = False
                    OptionsCustomize.ColumnSorting = False
                    OptionsCustomize.DataRowSizing = True
                    OptionsData.Appending = True
                    OptionsSelection.InvertSelect = False
                    OptionsView.CellEndEllipsis = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.HeaderEndEllipsis = True
                    OptionsView.Indicator = True
                    Preview.Column = tvPrivWorkExpCOMMENTS
                    Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
                    object tvPrivWorkExpWORK_EXPERIENCE_DAYS: TcxGridDBColumn
                      Caption = #1076#1085#1077#1081
                      DataBinding.FieldName = 'WORK_EXPERIENCE_DAYS'
                      HeaderAlignmentHorz = taCenter
                    end
                    object tvPrivWorkExpWORK_EXPERIENCE_MONTHS: TcxGridDBColumn
                      Caption = #1084#1077#1089#1103#1094#1077#1074
                      DataBinding.FieldName = 'WORK_EXPERIENCE_MONTHS'
                      HeaderAlignmentHorz = taCenter
                    end
                    object tvPrivWorkExpWORK_EXPERIENCE_YEARS: TcxGridDBColumn
                      Caption = #1083#1077#1090
                      DataBinding.FieldName = 'WORK_EXPERIENCE_YEARS'
                      HeaderAlignmentHorz = taCenter
                    end
                    object tvPrivWorkExpCOMMENTS: TcxGridDBColumn
                      DataBinding.FieldName = 'COMMENTS'
                    end
                  end
                  object glPrivWorkExp: TcxGridLevel
                    GridView = tvPrivWorkExp
                  end
                end
                object cxDBLabel2: TcxDBLabel
                  Left = 217
                  Top = 74
                  DataBinding.DataField = 'BIRTHDAY'
                  DataBinding.DataSource = dsMain
                  Height = 18
                  Width = 121
                end
                object cxDBLabel3: TcxDBLabel
                  Left = 217
                  Top = 54
                  DataBinding.DataField = 'TABLE_NUMBER'
                  DataBinding.DataSource = dsMain
                  Properties.Alignment.Horz = taLeftJustify
                  Height = 18
                  Width = 121
                end
                object cxDBLabel5: TcxDBLabel
                  Left = 217
                  Top = 142
                  AutoSize = True
                  DataBinding.DataField = 'PENS_NUMBER'
                  DataBinding.DataSource = dsMain
                  Properties.Alignment.Horz = taLeftJustify
                end
              end
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'II. '#1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1074#1086#1080#1085#1089#1082#1086#1084' '#1091#1095#1077#1090#1077
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 1
            ParentFont = False
            DesignSize = (
              659
              253)
            object cxLabel11: TcxLabel
              Left = 256
              Top = 13
              Caption = '1. '#1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1079#1072#1087#1072#1089#1072':'
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel24: TcxLabel
              Left = 259
              Top = 33
              Caption = '2. '#1042#1086#1080#1085#1089#1082#1086#1077' '#1079#1074#1072#1085#1080#1077':'
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel25: TcxLabel
              Left = 255
              Top = 53
              Caption = '3. '#1057#1086#1089#1090#1072#1074' ('#1087#1088#1086#1092#1080#1083#1100'):'
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel26: TcxLabel
              Left = 157
              Top = 73
              Caption = '4. '#1055#1086#1083#1085#1086#1077' '#1082#1086#1076#1086#1074#1086#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1042#1059#1057':'
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel27: TcxLabel
              Left = 142
              Top = 93
              Caption = '5. '#1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1075#1086#1076#1085#1086#1089#1090#1080' '#1082' '#1074#1086#1077#1085#1085#1086#1077' '#1089#1083#1091#1078#1073#1077':'
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel28: TcxLabel
              Left = 206
              Top = 133
              Caption = '7. '#1057#1086#1089#1090#1086#1080#1090' '#1085#1072' '#1074#1086#1080#1085#1089#1082#1086#1084' '#1091#1095#1077#1090#1077
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel29: TcxLabel
              Left = 10
              Top = 113
              Caption = '6. '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1086#1077#1085#1085#1086#1075#1086' '#1082#1086#1084#1080#1089#1089#1072#1088#1080#1072#1090#1072' '#1087#1086' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072':'
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel30: TcxLabel
              Left = 168
              Top = 153
              Caption = #1072') '#1086#1073#1097#1077#1084' ('#1085#1086#1084#1077#1088' '#1082#1086#1084#1072#1085#1076#1099', '#1087#1072#1088#1090#1080#1080'):'
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel31: TcxLabel
              Left = 278
              Top = 173
              Caption = #1073') '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1084':'
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel32: TcxLabel
              Left = 155
              Top = 193
              Caption = '8. '#1054#1090#1084#1077#1090#1082#1072' '#1086' '#1089#1085#1103#1090#1080#1080' '#1089' '#1074#1086#1080#1085#1089#1082#1086#1075#1086' '#1091#1095#1077#1090#1072':'
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 387
              Top = 10
              DataBinding.DataField = 'RESERV_CATEGORY'
              DataBinding.DataSource = dsMain
              TabOrder = 0
              Width = 227
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 387
              Top = 30
              DataBinding.DataField = 'MILITARY_RANK'
              DataBinding.DataSource = dsMain
              TabOrder = 1
              Width = 227
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 387
              Top = 50
              DataBinding.DataField = 'STAFF'
              DataBinding.DataSource = dsMain
              TabOrder = 2
              Width = 227
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 387
              Top = 70
              DataBinding.DataField = 'VUS'
              DataBinding.DataSource = dsMain
              TabOrder = 3
              Width = 227
            end
            object cxDBLookupComboBox5: TcxDBLookupComboBox
              Left = 387
              Top = 90
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'ABILITY_CATEGORY'
              DataBinding.DataSource = dsMain
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsAbilityCategories
              TabOrder = 4
              Width = 262
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 387
              Top = 110
              DataBinding.DataField = 'COMMISSARIAT'
              DataBinding.DataSource = dsMain
              TabOrder = 5
              Width = 227
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 387
              Top = 150
              DataBinding.DataField = 'GENERAL_MILITARY_REGISTRATION'
              DataBinding.DataSource = dsMain
              TabOrder = 6
              Width = 227
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 387
              Top = 170
              DataBinding.DataField = 'SPECIAL_MILITARY_REGISTRATION'
              DataBinding.DataSource = dsMain
              TabOrder = 7
              Width = 227
            end
            object cxDBLookupComboBox6: TcxDBLookupComboBox
              Left = 387
              Top = 190
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'MILITARY_DISMISSAL'
              DataBinding.DataSource = dsMain
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsMilitaryDismissals
              TabOrder = 8
              Width = 262
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'III. '#1055#1088#1080#1077#1084' '#1085#1072' '#1088#1072#1073#1086#1090#1091' '#1080' '#1087#1077#1088#1077#1074#1086#1076#1099' '#1085#1072' '#1076#1088#1091#1075#1091#1102' '#1088#1072#1073#1086#1090#1091
            ImageIndex = 2
            object grdAcceptance: TcxGrid
              Left = 0
              Top = 0
              Width = 659
              Height = 253
              Align = alClient
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              object tvAcceptance: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                OnCellDblClick = tvAcceptanceCellDblClick
                OnFocusedRecordChanged = tvMainListFocusedRecordChanged
                DataController.DataSource = dsPersonalCardAcceptance
                DataController.KeyFieldNames = 'ID'
                DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.CellHints = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.ImmediateEditor = False
                OptionsBehavior.IncSearch = True
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnSorting = False
                OptionsCustomize.DataRowSizing = True
                OptionsCustomize.GroupRowSizing = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.InvertSelect = False
                OptionsView.CellEndEllipsis = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.HeaderAutoHeight = True
                OptionsView.HeaderEndEllipsis = True
                OptionsView.Indicator = True
                Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
                object tvAcceptanceWORK_START: TcxGridDBColumn
                  DataBinding.FieldName = 'WORK_START'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                end
                object tvAcceptanceDEPARTMENT_ID: TcxGridDBColumn
                  DataBinding.FieldName = 'DEPARTMENT_ID'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.ClearKey = 46
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NAME'
                    end>
                  Properties.ListOptions.AnsiSort = True
                  Properties.ListOptions.GridLines = glNone
                  Properties.ListOptions.ShowHeader = False
                  Properties.ListSource = frmDM.dsDepartments
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 133
                end
                object tvAcceptanceJOB_ID: TcxGridDBColumn
                  DataBinding.FieldName = 'JOB_ID'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.ClearKey = 46
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NAME'
                    end>
                  Properties.ListOptions.AnsiSort = True
                  Properties.ListOptions.GridLines = glNone
                  Properties.ListOptions.ShowHeader = False
                  Properties.ListSource = frmDM.dsJobs
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 126
                end
                object tvAcceptanceGRADE_QUALIFICATION_CLASS: TcxGridDBColumn
                  DataBinding.FieldName = 'GRADE_QUALIFICATION_CLASS'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 146
                end
                object tvAcceptanceCOMMON_RATE_SCALE_GRADE: TcxGridDBColumn
                  DataBinding.FieldName = 'COMMON_RATE_SCALE_GRADE'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 70
                end
                object tvAcceptanceLENGTH_SALARY_RAISE_PERCENT: TcxGridDBColumn
                  DataBinding.FieldName = 'LENGTH_SALARY_RAISE_PERCENT'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 56
                end
                object tvAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBColumn
                  DataBinding.FieldName = 'HARMFUL_SALARY_RAISE_PERCENT'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 54
                end
                object tvAcceptanceSIGNED: TcxGridDBColumn
                  DataBinding.FieldName = 'SIGNED'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = 0
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 46
                end
              end
              object lvAcceptance: TcxGridLevel
                GridView = tvAcceptance
              end
            end
          end
          object cxTabSheet4: TcxTabSheet
            Caption = 'IV. '#1040#1090#1090#1077#1089#1090#1072#1094#1080#1103
            ImageIndex = 3
          end
          object cxTabSheet5: TcxTabSheet
            Caption = 'V. '#1055#1086#1074#1099#1096#1077#1085#1080#1077' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080
            ImageIndex = 4
          end
          object cxTabSheet6: TcxTabSheet
            Caption = 'VI. '#1055#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1072#1103' '#1087#1077#1088#1077#1087#1086#1076#1075#1086#1090#1086#1074#1082#1072
            ImageIndex = 5
          end
          object cxTabSheet7: TcxTabSheet
            Caption = 'VII. '#1053#1072#1075#1088#1072#1076#1099', '#1087#1086#1095#1077#1090#1085#1099#1077' '#1079#1074#1072#1085#1080#1103
            ImageIndex = 6
            object grdPersonalCardAwards: TcxGrid
              Left = 0
              Top = 0
              Width = 659
              Height = 253
              Align = alClient
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              object tvPersonalCardAwards: TcxGridDBTableView
                Tag = 1
                NavigatorButtons.ConfirmDelete = False
                FilterBox.CustomizeDialog = False
                DataController.DataSource = dsPersonalCardAwards
                DataController.KeyFieldNames = 'ID'
                DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.CellHints = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnSorting = False
                OptionsCustomize.DataRowSizing = True
                OptionsData.Appending = True
                OptionsSelection.InvertSelect = False
                OptionsView.CellEndEllipsis = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.HeaderAutoHeight = True
                OptionsView.HeaderEndEllipsis = True
                OptionsView.Indicator = True
                Preview.Column = tvPersonalCardAwardsCOMMENTS
                Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
                object tvPersonalCardAwardsAWARD_NAME: TcxGridDBColumn
                  DataBinding.FieldName = 'AWARD_NAME'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 280
                end
                object tvPersonalCardAwardsAWARD_DOCUMENT: TcxGridDBColumn
                  DataBinding.FieldName = 'AWARD_DOCUMENT'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 264
                end
                object tvPersonalCardAwardsAWARD_DOCUMENT_NUMBER: TcxGridDBColumn
                  DataBinding.FieldName = 'AWARD_DOCUMENT_NUMBER'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 84
                end
                object tvPersonalCardAwardsAWARD_DOCUMENT_DATE: TcxGridDBColumn
                  DataBinding.FieldName = 'AWARD_DOCUMENT_DATE'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.SaveTime = False
                  Properties.ShowTime = False
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 90
                end
                object tvPersonalCardAwardsCOMMENTS: TcxGridDBColumn
                  DataBinding.FieldName = 'COMMENTS'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                end
              end
              object glPersonalCardAwards: TcxGridLevel
                GridView = tvPersonalCardAwards
              end
            end
          end
          object cxTabSheet8: TcxTabSheet
            Caption = 'VIII. '#1054#1090#1087#1091#1089#1082
            ImageIndex = 7
          end
          object cxTabSheet9: TcxTabSheet
            Caption = 'IX. '#1057#1086#1094#1080#1072#1083#1100#1085#1099#1077' '#1083#1100#1075#1086#1090#1099
            ImageIndex = 8
            object grdPersonalCardSocialPrivilege: TcxGrid
              Left = 0
              Top = 0
              Width = 659
              Height = 253
              Align = alClient
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              object tvPersonalCardSocialPrivilege: TcxGridDBTableView
                Tag = 1
                NavigatorButtons.ConfirmDelete = False
                FilterBox.CustomizeDialog = False
                DataController.DataSource = dsPersonalCardSocialPrivilege
                DataController.KeyFieldNames = 'ID'
                DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.CellHints = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnSorting = False
                OptionsCustomize.DataRowSizing = True
                OptionsData.Appending = True
                OptionsSelection.InvertSelect = False
                OptionsView.CellEndEllipsis = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.HeaderAutoHeight = True
                OptionsView.HeaderEndEllipsis = True
                OptionsView.Indicator = True
                Preview.Column = tvPersonalCardSocialPrivilegeCOMMENTS
                Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
                object tvPersonalCardSocialPrivilegePRIVILEGE_NAME: TcxGridDBColumn
                  DataBinding.FieldName = 'PRIVILEGE_NAME'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 311
                end
                object tvPersonalCardSocialPrivilegePRIVILEGE_DOCUMENT_NUMBER: TcxGridDBColumn
                  DataBinding.FieldName = 'PRIVILEGE_DOCUMENT_NUMBER'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 77
                end
                object tvPersonalCardSocialPrivilegePRIVILEGE_DOCUMENT_DATE: TcxGridDBColumn
                  DataBinding.FieldName = 'PRIVILEGE_DOCUMENT_DATE'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.SaveTime = False
                  Properties.ShowTime = False
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 81
                end
                object tvPersonalCardSocialPrivilegePRIVILEGE_REASON: TcxGridDBColumn
                  DataBinding.FieldName = 'PRIVILEGE_REASON'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 249
                end
                object tvPersonalCardSocialPrivilegeCOMMENTS: TcxGridDBColumn
                  DataBinding.FieldName = 'COMMENTS'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                end
              end
              object glPersonalCardSocialPrivilege: TcxGridLevel
                GridView = tvPersonalCardSocialPrivilege
              end
            end
          end
          object cxTabSheet10: TcxTabSheet
            Caption = 'X. '#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
            ImageIndex = 9
            object cxDBMemo2: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'ADDITIONAL_INFORMATION'
              DataBinding.DataSource = dsMain
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 253
              Width = 659
            end
          end
          object cxTabSheet11: TcxTabSheet
            Caption = 'XI. '#1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1082#1088#1072#1097#1077#1085#1080#1103' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072
            ImageIndex = 10
          end
        end
      end
    end
  end
  inherited dsMainList: TDataSource
    Left = 48
    Top = 66
  end
  inherited dsMain: TDataSource
    Left = 77
    Top = 66
  end
  inherited cxGridPopupMenu1: TcxGridPopupMenu
    Left = 19
    Top = 37
  end
  inherited trMain: TpFIBTransaction
    Left = 48
    Top = 8
  end
  inherited fibdsMainList: TpFIBDataSet
    CachedUpdates = False
    SelectSQL.Strings = (
      
        'select PC.ID, P.NAME, P.SURNAME, P.SECOND_NAME, P.SEX, P.BIRTHDA' +
        'Y, PC.COMMENTS'
      'from PERSONAL_CARDS PC, PERSONS P'
      'where PC.PERSON_ID=P.ID')
    AutoUpdateOptions.AutoReWriteSqls = False
    AutoUpdateOptions.CanChangeSQLs = False
    AutoUpdateOptions.GeneratorName = 'GEN__ID'
    AutoUpdateOptions.AutoParamsToFields = False
    Left = 48
    Top = 37
    object fibdsMainListID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainListSECOND_NAME: TFIBStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      FieldName = 'SECOND_NAME'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsMainListNAME: TFIBStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'NAME'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsMainListSURNAME: TFIBStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'SURNAME'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsMainListSEX: TFIBStringField
      DisplayLabel = #1055#1086#1083
      FieldName = 'SEX'
      Size = 1
      EmptyStrToNull = True
    end
    object fibdsMainListBIRTHDAY: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'BIRTHDAY'
    end
    object fibdsMainListCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  inherited dxBarManager: TdxBarManager
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'List'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 76
        FloatTop = 229
        FloatClientWidth = 23
        FloatClientHeight = 262
        ItemLinks = <
          item
            Item = sbFirstList
            Visible = True
          end
          item
            Item = sbPriorList
            Visible = True
          end
          item
            Item = sbNextList
            Visible = True
          end
          item
            Item = sbLastList
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbAddList
            Visible = True
          end
          item
            Item = sbDeleteList
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbRefreshList
            Visible = True
          end
          item
            Item = sbFilterList
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbApplyList
            Visible = True
          end
          item
            Item = sbCancelList
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbCloseList
            Visible = True
          end>
        Name = 'List1'
        NotDocking = [dsNone, dsLeft, dsBottom]
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Detail'
        DockControl = dxBarDockControl2
        DockedDockControl = dxBarDockControl2
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 164
        FloatTop = 132
        FloatClientWidth = 23
        FloatClientHeight = 169
        ItemLinks = <
          item
            Item = sbAdd
            Visible = True
          end
          item
            Item = sbDelete
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbApply
            Visible = True
          end
          item
            Item = sbCancel
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbRefresh
            Visible = True
          end
          item
            Item = sbPrint
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbClose
            Visible = True
          end>
        Name = 'Detail1'
        NotDocking = [dsNone, dsLeft, dsBottom]
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 19
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    inherited sbDeleteList: TdxBarButton
      Visible = ivNever
    end
    inherited sbApplyList: TdxBarButton
      Visible = ivNever
    end
    inherited sbCancelList: TdxBarButton
      Visible = ivNever
    end
    inherited sbAdd: TdxBarButton
      OnClick = sbAddClick
    end
    inherited sbDelete: TdxBarButton
      OnClick = sbDeleteClick
    end
    inherited sbApply: TdxBarButton
      OnClick = sbApplyClick
    end
    inherited sbCancel: TdxBarButton
      OnClick = sbCancelClick
    end
  end
  inherited fibdsMain: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PC.ID,'
      '    PC.PERSON_ID,'
      '    PC.FILL_DATE,'
      '    P.TABLE_NUMBER,'
      '    P.BIRTHDAY,'
      '    P.SEX,'
      '    PC.INN,'
      '    P.PENS_NUMBER,'
      '    PC.WORK_CHARACTER,'
      '    PC.WORK_KIND,'
      '    PC.WORK_AGREEMENT_NUMBER,'
      '    PC.WORK_AGREEMENT_DATE,'
      '    PC.BIRTH_PLACE,'
      '    PC.BIRTH_PLACE_OKATO,'
      '    PC.CITIZENSHIP,'
      '    PC.CITIZENSHIP_OKIN,'
      '    PC.EDUCATION_LEVEL,'
      '    PC.EDUCATION_LEVEL_OKIN,'
      '    PC.POST_GRADUATE_EDUCATION_LEVEL,'
      '    PC.POST_GRADUATE_EDUCATION_OKIN,'
      '    PC.TOTAL_WORK_YEARS,'
      '    PC.TOTAL_WORK_MONTHS,'
      '    PC.TOTAL_WORK_DAYS,'
      '    PC.UNINTERRUPTED_WORK_YEARS,'
      '    PC.UNINTERRUPTED_WORK_MONTHS,'
      '    PC.UNINTERRUPTED_WORK_DAYS,'
      '    PC.MARRIAGE_STATUS,'
      '    PC.MARRIAGE_STATUS_OKIN,'
      '    PC.PASSPORT_NUMBER,'
      '    PC.PASSPORT_DATE,'
      '    PC.PASSPORT_DATA,'
      '    PC.PASSPORT_REGISTRATION_DATE,'
      '    PC.PHONE_NUMBER,'
      '    PC.RESERV_CATEGORY,'
      '    PC.MILITARY_RANK,'
      '    PC.STAFF,'
      '    PC.VUS,'
      '    PC.ABILITY_CATEGORY,'
      '    PC.COMMISSARIAT,'
      '    PC.GENERAL_MILITARY_REGISTRATION,'
      '    PC.SPECIAL_MILITARY_REGISTRATION,'
      '    PC.MILITARY_DISMISSAL,'
      '    PC.ADDITIONAL_INFORMATION,'
      '    PC.COMMENTS'
      'FROM'
      '    PERSONAL_CARDS PC, PERSONS P'
      'WHERE (PC.ID=:ID) and (PC.PERSON_ID=P.ID)')
    AutoUpdateOptions.UpdateTableName = 'PERSONAL_CARDS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_PERSONAL_CARDS_ID'
    AutoUpdateOptions.AutoParamsToFields = False
    Left = 77
    Top = 37
    object fibdsMainID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainPERSON_ID: TFIBIntegerField
      FieldName = 'PERSON_ID'
      OnChange = fibdsMainPERSON_IDChange
    end
    object fibdsMainFILL_DATE: TFIBDateField
      FieldName = 'FILL_DATE'
    end
    object fibdsMainTABLE_NUMBER: TFIBIntegerField
      Alignment = taLeftJustify
      FieldName = 'TABLE_NUMBER'
    end
    object fibdsMainINN: TFIBIntegerField
      FieldName = 'INN'
    end
    object fibdsMainWORK_CHARACTER: TFIBStringField
      FieldName = 'WORK_CHARACTER'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainWORK_KIND: TFIBIntegerField
      FieldName = 'WORK_KIND'
    end
    object fibdsMainWORK_AGREEMENT_NUMBER: TFIBStringField
      FieldName = 'WORK_AGREEMENT_NUMBER'
      Size = 10
      EmptyStrToNull = True
    end
    object fibdsMainWORK_AGREEMENT_DATE: TFIBDateField
      FieldName = 'WORK_AGREEMENT_DATE'
    end
    object fibdsMainBIRTH_PLACE: TFIBStringField
      FieldName = 'BIRTH_PLACE'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainBIRTH_PLACE_OKATO: TFIBStringField
      FieldName = 'BIRTH_PLACE_OKATO'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainCITIZENSHIP: TFIBStringField
      FieldName = 'CITIZENSHIP'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainCITIZENSHIP_OKIN: TFIBStringField
      FieldName = 'CITIZENSHIP_OKIN'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainEDUCATION_LEVEL: TFIBIntegerField
      FieldName = 'EDUCATION_LEVEL'
    end
    object fibdsMainEDUCATION_LEVEL_OKIN: TFIBStringField
      FieldName = 'EDUCATION_LEVEL_OKIN'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainPOST_GRADUATE_EDUCATION_LEVEL: TFIBIntegerField
      FieldName = 'POST_GRADUATE_EDUCATION_LEVEL'
    end
    object fibdsMainPOST_GRADUATE_EDUCATION_OKIN: TFIBStringField
      FieldName = 'POST_GRADUATE_EDUCATION_OKIN'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainTOTAL_WORK_YEARS: TFIBIntegerField
      FieldName = 'TOTAL_WORK_YEARS'
    end
    object fibdsMainTOTAL_WORK_MONTHS: TFIBIntegerField
      FieldName = 'TOTAL_WORK_MONTHS'
    end
    object fibdsMainTOTAL_WORK_DAYS: TFIBIntegerField
      FieldName = 'TOTAL_WORK_DAYS'
    end
    object fibdsMainUNINTERRUPTED_WORK_YEARS: TFIBIntegerField
      FieldName = 'UNINTERRUPTED_WORK_YEARS'
    end
    object fibdsMainUNINTERRUPTED_WORK_MONTHS: TFIBIntegerField
      FieldName = 'UNINTERRUPTED_WORK_MONTHS'
    end
    object fibdsMainUNINTERRUPTED_WORK_DAYS: TFIBIntegerField
      FieldName = 'UNINTERRUPTED_WORK_DAYS'
    end
    object fibdsMainMARRIAGE_STATUS: TFIBStringField
      FieldName = 'MARRIAGE_STATUS'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainMARRIAGE_STATUS_OKIN: TFIBStringField
      FieldName = 'MARRIAGE_STATUS_OKIN'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainPASSPORT_NUMBER: TFIBStringField
      FieldName = 'PASSPORT_NUMBER'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainPASSPORT_DATE: TFIBDateField
      FieldName = 'PASSPORT_DATE'
    end
    object fibdsMainPASSPORT_DATA: TFIBStringField
      FieldName = 'PASSPORT_DATA'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsMainPASSPORT_REGISTRATION_DATE: TFIBDateField
      FieldName = 'PASSPORT_REGISTRATION_DATE'
    end
    object fibdsMainPHONE_NUMBER: TFIBStringField
      FieldName = 'PHONE_NUMBER'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainRESERV_CATEGORY: TFIBStringField
      FieldName = 'RESERV_CATEGORY'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsMainMILITARY_RANK: TFIBStringField
      FieldName = 'MILITARY_RANK'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsMainSTAFF: TFIBStringField
      FieldName = 'STAFF'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsMainVUS: TFIBStringField
      FieldName = 'VUS'
      Size = 10
      EmptyStrToNull = True
    end
    object fibdsMainABILITY_CATEGORY: TFIBStringField
      FieldName = 'ABILITY_CATEGORY'
      Size = 1
      EmptyStrToNull = True
    end
    object fibdsMainCOMMISSARIAT: TFIBStringField
      FieldName = 'COMMISSARIAT'
      Size = 200
      EmptyStrToNull = True
    end
    object fibdsMainGENERAL_MILITARY_REGISTRATION: TFIBStringField
      FieldName = 'GENERAL_MILITARY_REGISTRATION'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainSPECIAL_MILITARY_REGISTRATION: TFIBStringField
      FieldName = 'SPECIAL_MILITARY_REGISTRATION'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsMainMILITARY_DISMISSAL: TFIBIntegerField
      FieldName = 'MILITARY_DISMISSAL'
    end
    object fibdsMainADDITIONAL_INFORMATION: TFIBStringField
      FieldName = 'ADDITIONAL_INFORMATION'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsMainCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainBIRTHDAY: TFIBDateField
      FieldName = 'BIRTHDAY'
    end
    object fibdsMainSEX: TFIBStringField
      FieldName = 'SEX'
      OnGetText = fibdsMainSEXGetText
      Size = 1
      EmptyStrToNull = True
    end
    object fibdsMainPENS_NUMBER: TFIBStringField
      FieldName = 'PENS_NUMBER'
      EmptyStrToNull = True
    end
  end
  object fibdsEducation: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    PCE.ID,'
      '    PCE.PERSONAL_CARD_ID,'
      '    PCE.EDUCATIONAL_INSTITUTION_NAME,'
      '    PCE.EDUCATION_DOCUMENT_NAME,'
      '    PCE.EDUCATION_DOCUMENT_SERIAL,'
      '    PCE.EDUCATION_DOCUMENT_NUMBER,'
      '    PCE.GRADUATION_YEAR,'
      '    PCE.QUALIFICATION,'
      '    PCE.SPECIALITY,'
      '    PCE.SPECIALITY_OKCO,'
      '    PCE.COMMENTS'
      'FROM'
      '    PERSONAL_CARD_EDUCATIONS PCE'
      'WHERE (PCE.PERSONAL_CARD_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'PERSONAL_CARD_EDUCATIONS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_PERSONAL_CARD_EDUCATIONS_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 77
    Top = 95
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsEducationID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsEducationPERSONAL_CARD_ID: TFIBIntegerField
      FieldName = 'PERSONAL_CARD_ID'
    end
    object fibdsEducationEDUCATIONAL_INSTITUTION_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1090#1077#1083#1100#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103
      FieldName = 'EDUCATIONAL_INSTITUTION_NAME'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsEducationEDUCATION_DOCUMENT_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1086#1073' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080
      FieldName = 'EDUCATION_DOCUMENT_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsEducationEDUCATION_DOCUMENT_SERIAL: TFIBStringField
      DisplayLabel = #1057#1077#1088#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1086#1073' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080
      FieldName = 'EDUCATION_DOCUMENT_SERIAL'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsEducationEDUCATION_DOCUMENT_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1086#1073' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080
      FieldName = 'EDUCATION_DOCUMENT_NUMBER'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsEducationGRADUATION_YEAR: TFIBIntegerField
      DisplayLabel = #1043#1086#1076' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      FieldName = 'GRADUATION_YEAR'
    end
    object fibdsEducationQUALIFICATION: TFIBStringField
      DisplayLabel = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091' '#1086#1073' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080
      FieldName = 'QUALIFICATION'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsEducationSPECIALITY: TFIBStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
      FieldName = 'SPECIALITY'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsEducationSPECIALITY_OKCO: TFIBStringField
      DisplayLabel = #1050#1086#1076' '#1087#1086' '#1054#1050#1057#1054
      FieldName = 'SPECIALITY_OKCO'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsEducationCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsEducation: TDataSource
    DataSet = fibdsEducation
    OnStateChange = dsMainStateChange
    Left = 77
    Top = 124
  end
  object fibdsPostGraduateEds: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    PCEP.ID,'
      '    PCEP.PERSONAL_CARD_ID,'
      '    PCEP.EDUCATIONAL_INSTITUTION_NAME,'
      '    PCEP.EDUCATION_DOCUMENT_NAME,'
      '    PCEP.GRADUATION_YEAR,'
      '    PCEP.SPECIALITY,'
      '    PCEP.SPECIALITY_OKCO,'
      '    PCEP.COMMENTS'
      'FROM'
      '    PERSONAL_CARD_POST_GRADUATE_EDS PCEP'
      'WHERE (PCEP.PERSONAL_CARD_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'PERSONAL_CARD_POST_GRADUATE_EDS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_PRSNL_CRD_PST_GRDT_EDS_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 77
    Top = 153
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsPostGraduateEdsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsPostGraduateEdsPERSONAL_CARD_ID: TFIBIntegerField
      FieldName = 'PERSONAL_CARD_ID'
    end
    object fibdsPostGraduateEdsEDUCATIONAL_INSTITUTION_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1090#1077#1083#1100#1085#1086#1075#1086', '#1085#1072#1091#1095#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103
      FieldName = 'EDUCATIONAL_INSTITUTION_NAME'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsPostGraduateEdsEDUCATION_DOCUMENT_NAME: TFIBStringField
      DisplayLabel = #1044#1086#1082#1091#1084#1077#1085#1090' '#1086#1073' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080', '#1085#1086#1084#1077#1088', '#1076#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
      FieldName = 'EDUCATION_DOCUMENT_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsPostGraduateEdsGRADUATION_YEAR: TFIBIntegerField
      DisplayLabel = #1043#1086#1076' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      FieldName = 'GRADUATION_YEAR'
    end
    object fibdsPostGraduateEdsSPECIALITY: TFIBStringField
      DisplayLabel = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1080#1083#1080' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
      FieldName = 'SPECIALITY'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsPostGraduateEdsSPECIALITY_OKCO: TFIBStringField
      DisplayLabel = #1050#1086#1076' '#1087#1086' '#1054#1050#1057#1054
      FieldName = 'SPECIALITY_OKCO'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsPostGraduateEdsCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsPostGraduateEds: TDataSource
    DataSet = fibdsPostGraduateEds
    OnStateChange = dsMainStateChange
    Left = 77
    Top = 182
  end
  object fibdsProfessions: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    PCP.ID,'
      '    PCP.PERSONAL_CARD_ID,'
      '    PCP.PROFESSION,'
      '    PCP.PROFESSION_OKPDTR,'
      '    PCP.IS_MAIN,'
      '    PCP.COMMENTS'
      'FROM'
      '    PERSONAL_CARD_PROFESSIONS PCP'
      'WHERE (PCP.PERSONAL_CARD_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'PERSONAL_CARD_PROFESSIONS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_PRSNL_CRD_PROFESSIONS_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 77
    Top = 211
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsProfessionsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsProfessionsPERSONAL_CARD_ID: TFIBIntegerField
      FieldName = 'PERSONAL_CARD_ID'
    end
    object fibdsProfessionsPROFESSION: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PROFESSION'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsProfessionsPROFESSION_OKPDTR: TFIBStringField
      DisplayLabel = #1050#1086#1076' '#1087#1086' '#1054#1050#1055#1044#1058#1056
      FieldName = 'PROFESSION_OKPDTR'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsProfessionsIS_MAIN: TFIBIntegerField
      DisplayLabel = #1054#1089#1085#1086#1074#1085#1072#1103
      FieldName = 'IS_MAIN'
    end
    object fibdsProfessionsCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsProfessions: TDataSource
    DataSet = fibdsProfessions
    OnStateChange = dsMainStateChange
    Left = 77
    Top = 240
  end
  object fibdsWorkKinds: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT 0 ID, cast('#39#1086#1089#1085#1086#1074#1085#1072#1103#39' as varchar(25)) NAME'
      'FROM rdb$database'
      'union'
      'SELECT 1,cast('#39#1087#1086' '#1089#1086#1074#1084#1077#1089#1090#1080#1090#1077#1083#1100#1089#1090#1074#1091#39' as varchar(25))'
      'FROM rdb$database')
    AutoUpdateOptions.KeyFields = 'ID'
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 106
    Top = 153
    poImportDefaultValues = False
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsWorkKindsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsWorkKindsNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 25
      EmptyStrToNull = True
    end
  end
  object dsWorkKinds: TDataSource
    DataSet = fibdsWorkKinds
    Left = 106
    Top = 182
  end
  object fibdsEducationLevels: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT 0 ID, cast('#39#1089#1088#1077#1076#1085#1077#1077' ('#1087#1086#1083#1085#1086#1077') '#1086#1073#1097#1077#1077#39' as varchar(26)) NAME'
      'FROM rdb$database'
      'union'
      'SELECT 1,cast('#39#1085#1072#1095#1072#1083#1100#1085#1086#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077#39' as varchar(26))'
      'FROM rdb$database'
      'union'
      'SELECT 2,cast('#39#1089#1088#1077#1076#1085#1077#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077#39' as varchar(26))'
      'FROM rdb$database'
      'union'
      'SELECT 3,cast('#39#1074#1099#1089#1096#1077#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077#39' as varchar(26))'
      'FROM rdb$database')
    AutoUpdateOptions.KeyFields = 'ID'
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 106
    Top = 269
    poImportDefaultValues = False
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsEducationLevelsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsEducationLevelsNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 26
      EmptyStrToNull = True
    end
  end
  object dsEducationLevels: TDataSource
    DataSet = fibdsEducationLevels
    Left = 106
    Top = 298
  end
  object fibdsForeignLanguageSkills: TpFIBDataSet
    SelectSQL.Strings = (
      
        'SELECT 1 ID, cast('#39#1095#1080#1090#1072#1102' '#1080' '#1087#1077#1088#1077#1074#1086#1078#1091' '#1089#1086' '#1089#1083#1086#1074#1072#1088#1077#1084#39' as varchar(29))' +
        ' NAME'
      'FROM rdb$database'
      'union'
      'SELECT 2,cast('#39#1095#1080#1090#1072#1102' '#1080' '#1084#1086#1075#1091' '#1086#1073#1098#1103#1089#1085#1103#1090#1100#1089#1103#39' as varchar(29))'
      'FROM rdb$database'
      'union'
      'SELECT 3,cast('#39#1074#1083#1072#1076#1077#1102' '#1089#1074#1086#1073#1086#1076#1085#1086#39' as varchar(29))'
      'FROM rdb$database')
    AutoUpdateOptions.KeyFields = 'ID'
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 106
    Top = 327
    poImportDefaultValues = False
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsForeignLanguageSkillsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsForeignLanguageSkillsNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 29
      EmptyStrToNull = True
    end
  end
  object dsForeignLanguageSkills: TDataSource
    DataSet = fibdsForeignLanguageSkills
    Left = 106
    Top = 356
  end
  object fibdsPostGraduateEducationLevels: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT 1 ID, cast('#39#1080#1085#1090#1077#1088#1085#1072#1090#1091#1088#1072#39' as varchar(12)) NAME'
      'FROM rdb$database'
      'union'
      'SELECT 2,cast('#39#1086#1088#1076#1080#1085#1072#1090#1091#1088#1072#39' as varchar(12))'
      'FROM rdb$database')
    AutoUpdateOptions.KeyFields = 'ID'
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 106
    Top = 211
    poImportDefaultValues = False
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsPostGraduateEducationLevelsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsPostGraduateEducationLevelsNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 26
      EmptyStrToNull = True
    end
  end
  object dsPostGraduateEducationLevels: TDataSource
    DataSet = fibdsPostGraduateEducationLevels
    Left = 106
    Top = 240
  end
  object fibdsAbilityCategories: TpFIBDataSet
    SelectSQL.Strings = (
      
        'SELECT '#39#1040#39' ID, cast('#39#1040' - '#1075#1086#1076#1085#1099#1077' '#1082' '#1074#1086#1077#1085#1085#1086#1081' '#1089#1083#1091#1078#1073#1077#39' as varchar(60)' +
        ') NAME'
      'FROM rdb$database'
      'union'
      
        'SELECT '#39#1041#39' ID, cast('#39#1041' - '#1075#1086#1076#1085#1099#1077' '#1082' '#1074#1086#1077#1085#1085#1086#1081' '#1089#1083#1091#1078#1073#1077' '#1089' '#1085#1077#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1099 +
        #1084#1080' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103#1084#1080#39' as varchar(60)) NAME'
      'FROM rdb$database'
      'union'
      
        'SELECT '#39#1042#39' ID, cast('#39#1042' - '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1085#1086' '#1075#1086#1076#1085#1099#1077' '#1082' '#1074#1086#1077#1085#1085#1086#1081' '#1089#1083#1091#1078#1073#1077#39' as' +
        ' varchar(60)) NAME'
      'FROM rdb$database'
      'union'
      
        'SELECT '#39#1043#39' ID, cast('#39#1043' - '#1074#1088#1077#1084#1077#1085#1085#1086' '#1085#1077#1075#1086#1076#1085#1099#1077' '#1082' '#1074#1086#1077#1085#1085#1086#1081' '#1089#1083#1091#1078#1073#1077#39' as ' +
        'varchar(60)) NAME'
      'FROM rdb$database'
      'union'
      
        'SELECT '#39#1044#39' ID, cast('#39#1044' - '#1085#1077#1075#1086#1076#1085#1099#1077' '#1082' '#1074#1086#1077#1085#1085#1086#1081' '#1089#1083#1091#1078#1073#1077#39' as varchar(6' +
        '0)) NAME'
      'FROM rdb$database')
    AutoUpdateOptions.KeyFields = 'ID'
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 135
    Top = 327
    poImportDefaultValues = False
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsAbilityCategoriesID: TFIBStringField
      FieldName = 'ID'
      Size = 1
      EmptyStrToNull = True
    end
    object fibdsAbilityCategoriesNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object dsAbilityCategories: TDataSource
    DataSet = fibdsAbilityCategories
    Left = 135
    Top = 356
  end
  object fibdsMilitaryDismissals: TpFIBDataSet
    SelectSQL.Strings = (
      
        'SELECT '#39'0'#39' ID, cast('#39#1089#1085#1103#1090' '#1089' '#1074#1086#1080#1085#1089#1082#1086#1075#1086' '#1091#1095#1077#1090#1072' '#1087#1086' '#1074#1086#1079#1088#1072#1089#1090#1091#39' as varc' +
        'har(45)) NAME'
      'FROM rdb$database'
      'union'
      
        'SELECT '#39'1'#39' ID, cast('#39#1089#1085#1103#1090' '#1089' '#1074#1086#1080#1085#1089#1082#1086#1075#1086' '#1091#1095#1077#1090#1072' '#1087#1086' '#1089#1086#1089#1090#1086#1103#1085#1080#1102' '#1079#1076#1086#1088#1086#1074#1100 +
        #1103#39' as varchar(45)) NAME'
      'FROM rdb$database')
    AutoUpdateOptions.KeyFields = 'ID'
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 135
    Top = 269
    poImportDefaultValues = False
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMilitaryDismissalsID: TFIBStringField
      FieldName = 'ID'
      Size = 1
      EmptyStrToNull = True
    end
    object fibdsMilitaryDismissalsNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 45
      EmptyStrToNull = True
    end
  end
  object dsMilitaryDismissals: TDataSource
    DataSet = fibdsMilitaryDismissals
    Left = 135
    Top = 298
  end
  object fibdsLanguages: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    PFL.ID,'
      '    PFL.PERSONAL_CARD_ID,'
      '    PFL.FOREIGN_LANGUAGE,'
      '    PFL.FOREIGN_LANGUAGE_SKILL,'
      '    PFL.OKIN,'
      '    PFL.COMMENTS'
      'FROM'
      '    PERSONAL_CARD_FOREIGN_LANGUAGES PFL'
      'WHERE (PFL.PERSONAL_CARD_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'PERSONAL_CARD_FOREIGN_LANGUAGES'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_PRSNL_CRD_FRGN_LANGUAGES_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 77
    Top = 269
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsLanguagesID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsLanguagesPERSONAL_CARD_ID: TFIBIntegerField
      FieldName = 'PERSONAL_CARD_ID'
    end
    object fibdsLanguagesFOREIGN_LANGUAGE: TFIBStringField
      DisplayLabel = #1071#1079#1099#1082
      FieldName = 'FOREIGN_LANGUAGE'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsLanguagesFOREIGN_LANGUAGE_SKILL: TFIBIntegerField
      DisplayLabel = #1057#1090#1077#1087#1077#1085#1100' '#1079#1085#1072#1085#1080#1103
      FieldName = 'FOREIGN_LANGUAGE_SKILL'
    end
    object fibdsLanguagesOKIN: TFIBStringField
      DisplayLabel = #1050#1086#1076' '#1087#1086' '#1054#1050#1048#1053
      FieldName = 'OKIN'
      Size = 50
      EmptyStrToNull = True
    end
    object fibdsLanguagesCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsLanguages: TDataSource
    DataSet = fibdsLanguages
    OnStateChange = dsMainStateChange
    Left = 77
    Top = 298
  end
  object fibdsPrivWorkExp: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    PCPWE.ID,'
      '    PCPWE.PERSONAL_CARD_ID,'
      '    PCPWE.WORK_EXPERIENCE_YEARS,'
      '    PCPWE.WORK_EXPERIENCE_MONTHS,'
      '    PCPWE.WORK_EXPERIENCE_DAYS,'
      '    PCPWE.COMMENTS'
      'FROM'
      '    PERSONAL_CARD_PRIV_WORK_EXP PCPWE'
      'WHERE (PCPWE.PERSONAL_CARD_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'PERSONAL_CARD_PRIV_WORK_EXP'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_PRSNL_CRD_PRIV_WORK_EXP_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 77
    Top = 327
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsPrivWorkExpID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsPrivWorkExpPERSONAL_CARD_ID: TFIBIntegerField
      FieldName = 'PERSONAL_CARD_ID'
    end
    object fibdsPrivWorkExpWORK_EXPERIENCE_YEARS: TFIBIntegerField
      DisplayLabel = #1057#1090#1072#1078' '#1087#1086#1083#1085#1099#1093' '#1083#1077#1090
      FieldName = 'WORK_EXPERIENCE_YEARS'
    end
    object fibdsPrivWorkExpWORK_EXPERIENCE_MONTHS: TFIBIntegerField
      DisplayLabel = #1057#1090#1072#1078' '#1087#1086#1083#1085#1099#1093' '#1084#1077#1089#1103#1094#1077#1074
      FieldName = 'WORK_EXPERIENCE_MONTHS'
    end
    object fibdsPrivWorkExpWORK_EXPERIENCE_DAYS: TFIBIntegerField
      DisplayLabel = #1057#1090#1072#1078' '#1087#1086#1083#1085#1099#1093' '#1076#1085#1077#1081
      FieldName = 'WORK_EXPERIENCE_DAYS'
    end
    object fibdsPrivWorkExpCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsPrivWorkExp: TDataSource
    DataSet = fibdsPrivWorkExp
    OnStateChange = dsMainStateChange
    Left = 77
    Top = 356
  end
  object fibdsFamilyInfo: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    PCFI.ID,'
      '    PCFI.PERSONAL_CARD_ID,'
      '    PCFI.FAMILY_STATUS,'
      '    PCFI.FIO,'
      '    PCFI.BIRTH_YEAR,'
      '    PCFI.COMMENTS'
      'FROM'
      '    PERSONAL_CARD_FAMILY_INFO PCFI'
      'WHERE (PCFI.PERSONAL_CARD_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'PERSONAL_CARD_FAMILY_INFO'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_PRSNL_CRD_FAMILY_INFO_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 48
    Top = 327
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsFamilyInfoID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsFamilyInfoPERSONAL_CARD_ID: TFIBIntegerField
      FieldName = 'PERSONAL_CARD_ID'
    end
    object fibdsFamilyInfoFAMILY_STATUS: TFIBStringField
      DisplayLabel = #1057#1090#1077#1087#1077#1085#1100' '#1088#1086#1076#1089#1090#1074#1072
      FieldName = 'FAMILY_STATUS'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsFamilyInfoFIO: TFIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsFamilyInfoBIRTH_YEAR: TFIBIntegerField
      DisplayLabel = #1043#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'BIRTH_YEAR'
    end
    object fibdsFamilyInfoCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsFamilyInfo: TDataSource
    DataSet = fibdsFamilyInfo
    OnStateChange = dsMainStateChange
    Left = 48
    Top = 356
  end
  object fibdsPersonalCardAwards: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    PCA.ID,'
      '    PCA.PERSONAL_CARD_ID,'
      '    PCA.AWARD_NAME,'
      '    PCA.AWARD_DOCUMENT,'
      '    PCA.AWARD_DOCUMENT_NUMBER,'
      '    PCA.AWARD_DOCUMENT_DATE,'
      '    PCA.COMMENTS'
      'FROM'
      '    PERSONAL_CARD_AWARDS PCA'
      'WHERE (PCA.PERSONAL_CARD_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'PERSONAL_CARD_AWARDS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_PERSONAL_CARD_AWARDS_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 251
    Top = 95
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsPersonalCardAwardsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsPersonalCardAwardsPERSONAL_CARD_ID: TFIBIntegerField
      FieldName = 'PERSONAL_CARD_ID'
    end
    object fibdsPersonalCardAwardsAWARD_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072#1075#1088#1072#1076#1099' ('#1087#1086#1086#1097#1088#1077#1085#1080#1103')'
      FieldName = 'AWARD_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsPersonalCardAwardsAWARD_DOCUMENT: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'AWARD_DOCUMENT'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsPersonalCardAwardsAWARD_DOCUMENT_NUMBER: TFIBStringField
      DisplayLabel = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'AWARD_DOCUMENT_NUMBER'
      EmptyStrToNull = True
    end
    object fibdsPersonalCardAwardsAWARD_DOCUMENT_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'AWARD_DOCUMENT_DATE'
    end
    object fibdsPersonalCardAwardsCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsPersonalCardAwards: TDataSource
    DataSet = fibdsPersonalCardAwards
    OnStateChange = dsMainStateChange
    Left = 251
    Top = 124
  end
  object fibdsPersonalCardSocialPrivilege: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    PCSP.ID,'
      '    PCSP.PERSONAL_CARD_ID,'
      '    PCSP.PRIVILEGE_NAME,'
      '    PCSP.PRIVILEGE_DOCUMENT_NUMBER,'
      '    PCSP.PRIVILEGE_DOCUMENT_DATE,'
      '    PCSP.PRIVILEGE_REASON,'
      '    PCSP.COMMENTS'
      'FROM'
      '    PERSONAL_CARD_SOCIAL_PRIVILEGE PCSP'
      'WHERE (PCSP.PERSONAL_CARD_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'PERSONAL_CARD_SOCIAL_PRIVILEGE'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_PRSNL_CRD_SCL_PRIVILEGE_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 355
    Top = 95
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsPersonalCardSocialPrivilegeID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsPersonalCardSocialPrivilegePERSONAL_CARD_ID: TFIBIntegerField
      FieldName = 'PERSONAL_CARD_ID'
    end
    object fibdsPersonalCardSocialPrivilegePRIVILEGE_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1083#1100#1075#1086#1090#1099
      FieldName = 'PRIVILEGE_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsPersonalCardSocialPrivilegePRIVILEGE_DOCUMENT_NUMBER: TFIBStringField
      DisplayLabel = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'PRIVILEGE_DOCUMENT_NUMBER'
      EmptyStrToNull = True
    end
    object fibdsPersonalCardSocialPrivilegePRIVILEGE_DOCUMENT_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'PRIVILEGE_DOCUMENT_DATE'
    end
    object fibdsPersonalCardSocialPrivilegePRIVILEGE_REASON: TFIBStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRIVILEGE_REASON'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsPersonalCardSocialPrivilegeCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsPersonalCardSocialPrivilege: TDataSource
    DataSet = fibdsPersonalCardSocialPrivilege
    OnStateChange = dsMainStateChange
    Left = 355
    Top = 124
  end
  object fibdsPersonalCardAcceptance: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select O.ID, OA.WORK_START, OA.DEPARTMENT_ID, OA.JOB_ID, OA.GRAD' +
        'E_QUALIFICATION_CLASS,'
      
        'OA.COMMON_RATE_SCALE_GRADE, OA.LENGTH_SALARY_RAISE_PERCENT, OA.H' +
        'ARMFUL_SALARY_RAISE_PERCENT,'
      'O.SIGNED'
      'from ORDERS O, ORDERS_ACCEPTANCE OA'
      'where (OA.PERSON_ID=:PERSON_ID) and (OA.ORDER_ID=O.ID)'
      'union'
      
        'select O.ID, OT.WORK_START, OT.NEW_DEPARTMENT_ID, OT.NEW_JOB_ID,' +
        ' OT.NEW_GRADE_QUALIFICATION_CLASS,'
      
        'OT.COMMON_RATE_SCALE_GRADE, OT.LENGTH_SALARY_RAISE_PERCENT, OT.H' +
        'ARMFUL_SALARY_RAISE_PERCENT,'
      'O.SIGNED'
      'from ORDERS O, ORDERS_TRANSFERENCE OT'
      'where (OT.PERSON_ID=:PERSON_ID) and (OT.ORDER_ID=O.ID)'
      'union'
      
        'select O.ID, OSR.START_DATE, cast(null as integer),  cast(null a' +
        's integer), cast(null as varchar(100)),'
      
        'cast(null as integer), OSR.RAISE_PERCENT, cast(null as double pr' +
        'ecision),'
      'O.SIGNED'
      'from ORDERS O, ORDERS_SERVE_RAISING OSR'
      'where (OSR.PERSON_ID=:PERSON_ID) and (OSR.ORDER_ID=O.ID)'
      'union'
      
        'select O.ID, OGR.START_DATE, cast(null as integer),  cast(null a' +
        's integer), cast(null as varchar(100)),'
      
        'OGR.GRADE, cast(null as double precision), cast(null as double p' +
        'recision),'
      'O.SIGNED'
      'from ORDERS O, ORDERS_GRADE_RAISING OGR'
      'where (OGR.PERSON_ID=:PERSON_ID) and (OGR.ORDER_ID=O.ID)'
      'order by 2')
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 165
    Top = 95
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsPersonalCardAcceptanceWORK_START: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'WORK_START'
    end
    object fibdsPersonalCardAcceptanceDEPARTMENT_ID: TFIBIntegerField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'DEPARTMENT_ID'
    end
    object fibdsPersonalCardAcceptanceJOB_ID: TFIBIntegerField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'JOB_ID'
    end
    object fibdsPersonalCardAcceptanceGRADE_QUALIFICATION_CLASS: TFIBStringField
      DisplayLabel = #1056#1072#1079#1088#1103#1076', '#1082#1083#1072#1089#1089' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080
      FieldName = 'GRADE_QUALIFICATION_CLASS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsPersonalCardAcceptanceCOMMON_RATE_SCALE_GRADE: TFIBIntegerField
      DisplayLabel = #1056#1072#1079#1088#1103#1076' '#1045#1058#1057
      FieldName = 'COMMON_RATE_SCALE_GRADE'
    end
    object fibdsPersonalCardAcceptanceLENGTH_SALARY_RAISE_PERCENT: TFIBFloatField
      DisplayLabel = #1053#1072#1076#1073#1072#1074#1082#1072' '#1079#1072' '#1074#1099#1089#1083#1091#1075#1091' '#1083#1077#1090', %'
      FieldName = 'LENGTH_SALARY_RAISE_PERCENT'
    end
    object fibdsPersonalCardAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TFIBFloatField
      DisplayLabel = #1053#1072#1076#1073#1072#1074#1082#1072' '#1079#1072' '#1074#1088#1077#1076#1085#1086#1089#1090#1100', %'
      FieldName = 'HARMFUL_SALARY_RAISE_PERCENT'
    end
    object fibdsPersonalCardAcceptanceSIGNED: TFIBIntegerField
      DisplayLabel = #1055#1086#1076#1087#1080#1089#1072#1085
      FieldName = 'SIGNED'
    end
    object fibdsPersonalCardAcceptanceID: TFIBIntegerField
      FieldName = 'ID'
    end
  end
  object dsPersonalCardAcceptance: TDataSource
    DataSet = fibdsPersonalCardAcceptance
    OnStateChange = dsMainStateChange
    Left = 165
    Top = 124
  end
end
