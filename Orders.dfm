inherited frmOrders: TfrmOrders
  Left = 584
  Top = 268
  Caption = #1055#1088#1080#1082#1072#1079#1099
  KeyPreview = True
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    ActivePage = tsDetail
    ClientRectBottom = 449
    ClientRectRight = 686
    ClientRectTop = 0
    inherited tsList: TcxTabSheet
      inherited grdMainList: TcxGrid
        inherited tvMainList: TcxGridDBTableView
          OptionsCustomize.ColumnGrouping = True
          OptionsView.ColumnAutoWidth = True
          Preview.Column = tvMainListCOMMENTS
          Preview.Visible = True
          Styles.IncSearch = nil
          Styles.Header = nil
          Styles.Preview = nil
          object tvMainListNUMBER: TcxGridDBColumn
            DataBinding.FieldName = 'NUMBER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 94
          end
          object tvMainListORDER_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'ORDER_DATE'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 134
          end
          object tvMainListORDER_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'ORDER_TYPE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsOrderTypes
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 145
          end
          object tvMainListSIGNED: TcxGridDBColumn
            Caption = #1055#1086#1076#1087#1080#1089#1072#1085
            DataBinding.FieldName = 'SIGNED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = #1055#1086#1076#1087#1080#1089#1072#1085
            Properties.DisplayUnchecked = #1053#1077' '#1087#1086#1076#1087#1080#1089#1072#1085
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 86
          end
          object tvMainListPERSONS: TcxGridDBColumn
            DataBinding.FieldName = 'PERSONS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 246
          end
          object tvMainListCOMMENTS: TcxGridDBColumn
            DataBinding.FieldName = 'COMMENTS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
          end
        end
      end
    end
    inherited tsDetail: TcxTabSheet
      inherited Panel4: TPanel
        inherited Panel1: TPanel
          TabOrder = 2
          inherited dbmComments: TcxDBMemo
            Style.IsFontAssigned = True
          end
        end
        object grdOrder: TcxGrid
          Left = 0
          Top = 42
          Width = 659
          Height = 337
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = grdOrderEnter
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object tvAcceptance: TcxGridDBTableView
            Tag = 1
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = tvAcceptanceFocusedRecordChanged
            DataController.DataSource = dsMainAcceptance
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.GroupRowSizing = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CellTextMaxLineCount = 20
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Preview.Column = tvAcceptanceCOMMENTS
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            object tvAcceptanceSURNAME: TcxGridDBColumn
              DataBinding.FieldName = 'SURNAME'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 126
            end
            object tvAcceptanceNAME: TcxGridDBColumn
              DataBinding.FieldName = 'NAME'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 83
            end
            object tvAcceptanceSECOND_NAME: TcxGridDBColumn
              DataBinding.FieldName = 'SECOND_NAME'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 83
            end
            object tvAcceptanceSEX: TcxGridDBColumn
              DataBinding.FieldName = 'SEX'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.CharCase = ecUpperCase
              Properties.Items.Strings = (
                #1052
                #1046)
              Properties.MaskKind = emkRegExpr
              Properties.EditMask = '('#1084' | '#1052') | ('#1078' | '#1046')o?'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 38
            end
            object tvAcceptanceBIRTHDAY: TcxGridDBColumn
              DataBinding.FieldName = 'BIRTHDAY'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvAcceptancePENS_NUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'PENS_NUMBER'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvAcceptanceTABLE_NUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'TABLE_NUMBER'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvAcceptanceDEPARTMENT_ID: TcxGridDBColumn
              Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
              DataBinding.FieldName = 'DEPARTMENT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsDepartments
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                3A010000424D3A010000000000003600000028000000060000000D0000000100
                1800000000000401000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF
                FFFFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFF
                000000000000000000FFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF
                0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
              Width = 132
            end
            object tvAcceptanceJOB_ID: TcxGridDBColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'JOB_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsJobs
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                3A010000424D3A010000000000003600000028000000060000000D0000000100
                1800000000000401000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF
                FFFFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFF
                000000000000000000FFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF
                0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
              Width = 143
            end
            object tvAcceptanceGRADE_QUALIFICATION_CLASS: TcxGridDBColumn
              Caption = #1056#1072#1079#1088#1103#1076', '#1082#1083#1072#1089#1089' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080
              DataBinding.FieldName = 'GRADE_QUALIFICATION_CLASS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.IncSearch = False
              Width = 188
            end
            object tvAcceptanceCOMMON_RATE_SCALE_GRADE: TcxGridDBColumn
              DataBinding.FieldName = 'COMMON_RATE_SCALE_GRADE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.IncSearch = False
            end
            object tvAcceptanceLENGTH_SALARY_RAISE_PERCENT: TcxGridDBColumn
              DataBinding.FieldName = 'LENGTH_SALARY_RAISE_PERCENT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBColumn
              DataBinding.FieldName = 'HARMFUL_SALARY_RAISE_PERCENT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvAcceptanceWORK_AGREEMENT_NUMBER: TcxGridDBColumn
              Caption = #8470' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072
              DataBinding.FieldName = 'WORK_AGREEMENT_NUMBER'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.IncSearch = False
            end
            object tvAcceptanceWORK_AGREEMENT_DATE: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072
              DataBinding.FieldName = 'WORK_AGREEMENT_DATE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.IncSearch = False
            end
            object tvAcceptanceWORK_START: TcxGridDBColumn
              Caption = #1055#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099', '#1089
              DataBinding.FieldName = 'WORK_START'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Options.IncSearch = False
            end
            object tvAcceptanceWORK_STOP: TcxGridDBColumn
              Caption = #1055#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099', '#1087#1086
              DataBinding.FieldName = 'WORK_STOP'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.IncSearch = False
            end
            object tvAcceptanceTRIAL_PERIOD: TcxGridDBColumn
              Caption = #1048#1089#1087#1099#1090#1072#1085#1080#1077' '#1085#1072' '#1089#1088#1086#1082', '#1084#1077#1089
              DataBinding.FieldName = 'TRIAL_PERIOD'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.IncSearch = False
            end
            object tvAcceptanceCOMMENTS: TcxGridDBColumn
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.IncSearch = False
            end
          end
          object cvAcceptance: TcxGridDBCardView
            Tag = 10
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = tvAcceptanceFocusedRecordChanged
            DataController.DataSource = dsMainAcceptance
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.CardExpanding = True
            OptionsCustomize.RowFiltering = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CardWidth = 300
            OptionsView.CellAutoHeight = True
            OptionsView.RowCaptionAutoHeight = True
            Styles.StyleSheet = frmDM.cxGridCardViewStyleSheet1
            object cvAcceptanceSURNAME: TcxGridDBCardViewRow
              DataBinding.FieldName = 'SURNAME'
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvAcceptanceNAME: TcxGridDBCardViewRow
              DataBinding.FieldName = 'NAME'
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvAcceptanceSECOND_NAME: TcxGridDBCardViewRow
              DataBinding.FieldName = 'SECOND_NAME'
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvAcceptanceSEX: TcxGridDBCardViewRow
              DataBinding.FieldName = 'SEX'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceBIRTHDAY: TcxGridDBCardViewRow
              DataBinding.FieldName = 'BIRTHDAY'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptancePENS_NUMBER: TcxGridDBCardViewRow
              DataBinding.FieldName = 'PENS_NUMBER'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceTABLE_NUMBER: TcxGridDBCardViewRow
              DataBinding.FieldName = 'TABLE_NUMBER'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceDEPARTMENT_ID: TcxGridDBCardViewRow
              Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
              DataBinding.FieldName = 'DEPARTMENT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsDepartments
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvAcceptanceJOB_ID: TcxGridDBCardViewRow
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'JOB_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsJobs
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvAcceptanceGRADE_QUALIFICATION_CLASS: TcxGridDBCardViewRow
              Caption = #1056#1072#1079#1088#1103#1076', '#1082#1083#1072#1089#1089' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080
              DataBinding.FieldName = 'GRADE_QUALIFICATION_CLASS'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceACCEPTANCE_CONDITIONS: TcxGridDBCardViewRow
              Caption = #1059#1089#1083#1086#1074#1080#1103' '#1087#1088#1080#1077#1084#1072
              DataBinding.FieldName = 'ACCEPTANCE_CONDITIONS'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceCOMMON_RATE_SCALE_GRADE: TcxGridDBCardViewRow
              DataBinding.FieldName = 'COMMON_RATE_SCALE_GRADE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceLENGTH_SALARY_RAISE_PERCENTLENGTH_SALARY_RAISE_PERC: TcxGridDBCardViewRow
              DataBinding.FieldName = 'LENGTH_SALARY_RAISE_PERCENT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBCardViewRow
              DataBinding.FieldName = 'HARMFUL_SALARY_RAISE_PERCENT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceWORK_AGREEMENT_NUMBER: TcxGridDBCardViewRow
              Caption = #8470' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072
              DataBinding.FieldName = 'WORK_AGREEMENT_NUMBER'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceWORK_AGREEMENT_DATE: TcxGridDBCardViewRow
              Caption = #1044#1072#1090#1072' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072
              DataBinding.FieldName = 'WORK_AGREEMENT_DATE'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceWORK_START: TcxGridDBCardViewRow
              Caption = #1055#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099', '#1089
              DataBinding.FieldName = 'WORK_START'
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvAcceptanceWORK_STOP: TcxGridDBCardViewRow
              Caption = #1055#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099', '#1087#1086
              DataBinding.FieldName = 'WORK_STOP'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvAcceptanceTRIAL_PERIOD: TcxGridDBCardViewRow
              Caption = #1048#1089#1087#1099#1090#1072#1085#1080#1077' '#1085#1072' '#1089#1088#1086#1082', '#1084#1077#1089
              DataBinding.FieldName = 'TRIAL_PERIOD'
              CaptionAlignmentHorz = taRightJustify
            end
          end
          object tvTransference: TcxGridDBTableView
            Tag = 3
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = tvAcceptanceFocusedRecordChanged
            DataController.DataSource = dsMainTransference
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.GroupRowSizing = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Preview.Column = tvTransferenceCOMMENTS
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            object tvTransferencePERSON_ID: TcxGridDBColumn
              Caption = #1060#1048#1054', '#1058#1072#1073'.'#8470
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 182
            end
            object tvTransferenceOLD_DEPARTMENT_ID: TcxGridDBColumn
              DataBinding.FieldName = 'OLD_DEPARTMENT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsDepartments
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 144
            end
            object tvTransferenceNEW_DEPARTMENT_ID: TcxGridDBColumn
              DataBinding.FieldName = 'NEW_DEPARTMENT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsDepartments
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 144
            end
            object tvTransferenceOLD_JOB_ID: TcxGridDBColumn
              DataBinding.FieldName = 'OLD_JOB_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsJobs
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 121
            end
            object tvTransferenceOLD_GRADE_QUALIFICATION_CLASS: TcxGridDBColumn
              DataBinding.FieldName = 'OLD_GRADE_QUALIFICATION_CLASS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 167
            end
            object tvTransferenceNEW_JOB_ID: TcxGridDBColumn
              DataBinding.FieldName = 'NEW_JOB_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsJobs
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 121
            end
            object tvTransferenceNEW_GRADE_QUALIFICATION_CLASS: TcxGridDBColumn
              DataBinding.FieldName = 'NEW_GRADE_QUALIFICATION_CLASS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 167
            end
            object tvTransferenceCOMMON_RATE_SCALE_GRADE: TcxGridDBColumn
              DataBinding.FieldName = 'COMMON_RATE_SCALE_GRADE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvTransferenceLENGTH_SALARY_RAISE_PERCENT: TcxGridDBColumn
              DataBinding.FieldName = 'LENGTH_SALARY_RAISE_PERCENT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 70
            end
            object tvTransferenceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBColumn
              DataBinding.FieldName = 'HARMFUL_SALARY_RAISE_PERCENT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 70
            end
            object tvTransferenceTRANSFERENCE_KIND: TcxGridDBColumn
              DataBinding.FieldName = 'TRANSFERENCE_KIND'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsTransferenceKind
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 87
            end
            object tvTransferenceWORK_START: TcxGridDBColumn
              DataBinding.FieldName = 'WORK_START'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
            end
            object tvTransferenceWORK_STOP: TcxGridDBColumn
              DataBinding.FieldName = 'WORK_STOP'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvTransferenceTRANSFERENCE_REASON: TcxGridDBColumn
              DataBinding.FieldName = 'TRANSFERENCE_REASON'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 209
            end
            object tvTransferenceCOMMENTS: TcxGridDBColumn
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 504
            end
          end
          object cvTransference: TcxGridDBCardView
            Tag = 30
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = tvAcceptanceFocusedRecordChanged
            DataController.DataSource = dsMainTransference
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.RowFiltering = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CaptionWidth = 250
            OptionsView.CardWidth = 500
            OptionsView.CellAutoHeight = True
            OptionsView.CellTextMaxLineCount = 20
            OptionsView.RowCaptionAutoHeight = True
            OptionsView.RowCaptionEndEllipsis = True
            Styles.StyleSheet = frmDM.cxGridCardViewStyleSheet1
            object cvTransferenceWORK_START: TcxGridDBCardViewRow
              DataBinding.FieldName = 'WORK_START'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvTransferenceWORK_STOP: TcxGridDBCardViewRow
              DataBinding.FieldName = 'WORK_STOP'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
            end
            object cvTransferenceTRANSFERENCE_KIND: TcxGridDBCardViewRow
              DataBinding.FieldName = 'TRANSFERENCE_KIND'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsTransferenceKind
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvTransferencePERSON_ID: TcxGridDBCardViewRow
              Caption = #1060#1048#1054', '#1058#1072#1073'.'#8470
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvTransferenceOLD_DEPARTMENT_ID: TcxGridDBCardViewRow
              DataBinding.FieldName = 'OLD_DEPARTMENT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsDepartments
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvTransferenceNEW_DEPARTMENT_ID: TcxGridDBCardViewRow
              DataBinding.FieldName = 'NEW_DEPARTMENT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsDepartments
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvTransferenceOLD_JOB_ID: TcxGridDBCardViewRow
              DataBinding.FieldName = 'OLD_JOB_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsJobs
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvTransferenceOLD_GRADE_QUALIFICATION_CLASS: TcxGridDBCardViewRow
              DataBinding.FieldName = 'OLD_GRADE_QUALIFICATION_CLASS'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvTransferenceNEW_JOB_ID: TcxGridDBCardViewRow
              DataBinding.FieldName = 'NEW_JOB_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsJobs
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvTransferenceNEW_GRADE_QUALIFICATION_CLASS: TcxGridDBCardViewRow
              DataBinding.FieldName = 'NEW_GRADE_QUALIFICATION_CLASS'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvTransferenceCOMMON_RATE_SCALE_GRADE: TcxGridDBCardViewRow
              DataBinding.FieldName = 'COMMON_RATE_SCALE_GRADE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              CaptionAlignmentHorz = taRightJustify
            end
            object cvTransferenceLENGTH_SALARY_RAISE_PERCENT: TcxGridDBCardViewRow
              DataBinding.FieldName = 'LENGTH_SALARY_RAISE_PERCENT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvTransferenceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBCardViewRow
              DataBinding.FieldName = 'HARMFUL_SALARY_RAISE_PERCENT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvTransferenceTRANSFERENCE_REASON: TcxGridDBCardViewRow
              DataBinding.FieldName = 'TRANSFERENCE_REASON'
              CaptionAlignmentHorz = taRightJustify
            end
          end
          object tvDismissal: TcxGridDBTableView
            Tag = 2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMainDismissal
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.GroupRowSizing = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CellTextMaxLineCount = 20
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Preview.Column = tvDismissalCOMMENTS
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            object tvDismissalPERSON_ID: TcxGridDBColumn
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 192
            end
            object tvDismissalDEPARTMENT_ID: TcxGridDBColumn
              DataBinding.FieldName = 'DEPARTMENT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsDepartments
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 112
            end
            object tvDismissalJOB_ID: TcxGridDBColumn
              DataBinding.FieldName = 'JOB_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsJobs
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 127
            end
            object tvDismissalGRADE_QUALIFICATION_CLASS: TcxGridDBColumn
              DataBinding.FieldName = 'GRADE_QUALIFICATION_CLASS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 256
            end
            object tvDismissalWORK_AGREEMENT_NUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'WORK_AGREEMENT_NUMBER'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 71
            end
            object tvDismissalWORK_AGREEMENT_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'WORK_AGREEMENT_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 71
            end
            object tvDismissalDISMISSAL_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'DISMISSAL_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 96
            end
            object tvDismissalDISMISSAL_REASON: TcxGridDBColumn
              DataBinding.FieldName = 'DISMISSAL_REASON'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 234
            end
            object tvDismissalDISMISSAL_REASON_DOCUMENT: TcxGridDBColumn
              DataBinding.FieldName = 'DISMISSAL_REASON_DOCUMENT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 220
            end
            object tvDismissalCOMMENTS: TcxGridDBColumn
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
          end
          object cvDismissal: TcxGridDBCardView
            Tag = 20
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMainDismissal
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.RowFiltering = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CaptionWidth = 250
            OptionsView.CardWidth = 500
            OptionsView.CellAutoHeight = True
            OptionsView.CellTextMaxLineCount = 20
            OptionsView.RowCaptionAutoHeight = True
            OptionsView.RowCaptionEndEllipsis = True
            Styles.StyleSheet = frmDM.cxGridCardViewStyleSheet1
            object cvDismissalPERSON_ID: TcxGridDBCardViewRow
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvDismissalDEPARTMENT_ID: TcxGridDBCardViewRow
              DataBinding.FieldName = 'DEPARTMENT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsDepartments
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvDismissalJOB_ID: TcxGridDBCardViewRow
              DataBinding.FieldName = 'JOB_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsJobs
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvDismissalGRADE_QUALIFICATION_CLASS: TcxGridDBCardViewRow
              DataBinding.FieldName = 'GRADE_QUALIFICATION_CLASS'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvDismissalWORK_AGREEMENT_NUMBER: TcxGridDBCardViewRow
              DataBinding.FieldName = 'WORK_AGREEMENT_NUMBER'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvDismissalWORK_AGREEMENT_DATE: TcxGridDBCardViewRow
              DataBinding.FieldName = 'WORK_AGREEMENT_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
            end
            object cvDismissalDISMISSAL_DATE: TcxGridDBCardViewRow
              DataBinding.FieldName = 'DISMISSAL_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvDismissalDISMISSAL_REASON: TcxGridDBCardViewRow
              DataBinding.FieldName = 'DISMISSAL_REASON'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvDismissalDISMISSAL_REASON_DOCUMENT: TcxGridDBCardViewRow
              DataBinding.FieldName = 'DISMISSAL_REASON_DOCUMENT'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvDismissalCOMMENTS: TcxGridDBCardViewRow
              DataBinding.FieldName = 'COMMENTS'
              CaptionAlignmentHorz = taRightJustify
            end
          end
          object tvCertificationRaisingSpecialization: TcxGridDBTableView
            Tag = 4
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMainCertificationRaisingSpecialization
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.GroupRowSizing = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CellTextMaxLineCount = 20
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Preview.Column = tvCertificationRaisingSpecializationCOMMENTS
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            object tvCertificationRaisingSpecializationPERSON_ID: TcxGridDBColumn
              Caption = #1060#1048#1054
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 172
            end
            object tvCertificationRaisingSpecializationSTART_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'START_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.DateOnError = deToday
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 66
            end
            object tvCertificationRaisingSpecializationSTOP_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'STOP_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.DateOnError = deToday
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 67
            end
            object tvCertificationRaisingSpecializationINFO: TcxGridDBColumn
              DataBinding.FieldName = 'INFO'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 235
            end
            object tvCertificationRaisingSpecializationREASON: TcxGridDBColumn
              DataBinding.FieldName = 'REASON'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 166
            end
            object tvCertificationRaisingSpecializationCOMMENTS: TcxGridDBColumn
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
          end
          object cvCertificationRaisingSpecialization: TcxGridDBCardView
            Tag = 40
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMainCertificationRaisingSpecialization
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.RowFiltering = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CaptionWidth = 250
            OptionsView.CardWidth = 500
            OptionsView.CellAutoHeight = True
            OptionsView.CellTextMaxLineCount = 20
            OptionsView.RowCaptionAutoHeight = True
            OptionsView.RowCaptionEndEllipsis = True
            Styles.StyleSheet = frmDM.cxGridCardViewStyleSheet1
            object cvCertificationRaisingSpecializationPERSON_ID: TcxGridDBCardViewRow
              Caption = #1060#1048#1054
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvCertificationRaisingSpecializationSTART_DATE: TcxGridDBCardViewRow
              DataBinding.FieldName = 'START_DATE'
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvCertificationRaisingSpecializationSTOP_DATE: TcxGridDBCardViewRow
              DataBinding.FieldName = 'STOP_DATE'
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvCertificationRaisingSpecializationINFO: TcxGridDBCardViewRow
              DataBinding.FieldName = 'INFO'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvCertificationRaisingSpecializationREASON: TcxGridDBCardViewRow
              DataBinding.FieldName = 'REASON'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvCertificationRaisingSpecializationCOMMENTS: TcxGridDBCardViewRow
              DataBinding.FieldName = 'COMMENTS'
              CaptionAlignmentHorz = taRightJustify
            end
          end
          object tvGradeServeRaising: TcxGridDBTableView
            Tag = 7
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsGradeServeRaising
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.GroupRowSizing = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CellTextMaxLineCount = 20
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Preview.Column = tvGradeServeRaisingCOMMENTS
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            object tvGradeServeRaisingPERSON_ID: TcxGridDBColumn
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 315
            end
            object tvGradeServeRaisingGRADE: TcxGridDBColumn
              DataBinding.FieldName = 'GRADE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 196
            end
            object tvGradeServeRaisingSTART_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'START_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 195
            end
            object tvGradeServeRaisingCOMMENTS: TcxGridDBColumn
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
          end
          object cvGradeServeRaising: TcxGridDBCardView
            Tag = 70
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsGradeServeRaising
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.RowFiltering = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CaptionWidth = 250
            OptionsView.CardWidth = 500
            OptionsView.CellAutoHeight = True
            OptionsView.CellTextMaxLineCount = 20
            OptionsView.RowCaptionAutoHeight = True
            OptionsView.RowCaptionEndEllipsis = True
            Styles.StyleSheet = frmDM.cxGridCardViewStyleSheet1
            object cvGradeServeRaisingPERSON_ID: TcxGridDBCardViewRow
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvGradeServeRaisingGRADE: TcxGridDBCardViewRow
              DataBinding.FieldName = 'GRADE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvGradeServeRaisingSTART_DATE: TcxGridDBCardViewRow
              DataBinding.FieldName = 'START_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvGradeServeRaisingCOMMENTS: TcxGridDBCardViewRow
              DataBinding.FieldName = 'COMMENTS'
              CaptionAlignmentHorz = taRightJustify
            end
          end
          object tvLeave: TcxGridDBTableView
            Tag = 9
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMainLeave
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.GroupRowSizing = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Preview.Column = tvLeaveCOMMENTS
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            object tvLeavePERSON_ID: TcxGridDBColumn
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyph.Data = {
                6E010000424D6E010000000000003600000028000000060000000D0000000100
                2000000000003801000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
                000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Width = 183
            end
            object tvLeaveWORK_PERIOD_START: TcxGridDBColumn
              DataBinding.FieldName = 'WORK_PERIOD_START'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 75
            end
            object tvLeaveWORK_PERIOD_STOP: TcxGridDBColumn
              DataBinding.FieldName = 'WORK_PERIOD_STOP'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 82
            end
            object tvLeaveANNUAL_LEAVE_START: TcxGridDBColumn
              DataBinding.FieldName = 'ANNUAL_LEAVE_START'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 91
            end
            object tvLeaveANNUAL_LEAVE_STOP: TcxGridDBColumn
              DataBinding.FieldName = 'ANNUAL_LEAVE_STOP'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 93
            end
            object tvLeaveADDITIONAL_LEAVE_REASON: TcxGridDBColumn
              DataBinding.FieldName = 'ADDITIONAL_LEAVE_REASON'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 187
            end
            object tvLeaveADDITIONAL_LEAVE_START: TcxGridDBColumn
              DataBinding.FieldName = 'ADDITIONAL_LEAVE_START'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 86
            end
            object tvLeaveADDITIONAL_LEAVE_STOP: TcxGridDBColumn
              DataBinding.FieldName = 'ADDITIONAL_LEAVE_STOP'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 90
            end
            object tvLeaveCOMMENTS: TcxGridDBColumn
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
          end
          object cvLeave: TcxGridDBCardView
            Tag = 90
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMainLeave
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.RowFiltering = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CaptionWidth = 250
            OptionsView.CardWidth = 500
            OptionsView.CellAutoHeight = True
            OptionsView.CellTextMaxLineCount = 20
            OptionsView.RowCaptionAutoHeight = True
            OptionsView.RowCaptionEndEllipsis = True
            object cvLeavePERSON_ID: TcxGridDBCardViewRow
              DataBinding.FieldName = 'PERSON_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'FIO'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = frmDM.dsPersons
              CaptionAlignmentHorz = taRightJustify
              Styles.Caption = frmDM.stNeeded
            end
            object cvLeaveWORK_PERIOD_START: TcxGridDBCardViewRow
              DataBinding.FieldName = 'WORK_PERIOD_START'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
            end
            object cvLeaveWORK_PERIOD_STOP: TcxGridDBCardViewRow
              DataBinding.FieldName = 'WORK_PERIOD_STOP'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
            end
            object cvLeaveANNUAL_LEAVE_START: TcxGridDBCardViewRow
              DataBinding.FieldName = 'ANNUAL_LEAVE_START'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
            end
            object cvLeaveANNUAL_LEAVE_STOP: TcxGridDBCardViewRow
              DataBinding.FieldName = 'ANNUAL_LEAVE_STOP'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
            end
            object cvLeaveADDITIONAL_LEAVE_REASON: TcxGridDBCardViewRow
              DataBinding.FieldName = 'ADDITIONAL_LEAVE_REASON'
              CaptionAlignmentHorz = taRightJustify
            end
            object cvLeaveADDITIONAL_LEAVE_START: TcxGridDBCardViewRow
              DataBinding.FieldName = 'ADDITIONAL_LEAVE_START'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
            end
            object cvLeaveADDITIONAL_LEAVE_STOP: TcxGridDBCardViewRow
              DataBinding.FieldName = 'ADDITIONAL_LEAVE_STOP'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              CaptionAlignmentHorz = taRightJustify
            end
            object cvLeaveCOMMENTS: TcxGridDBCardViewRow
              DataBinding.FieldName = 'COMMENTS'
              CaptionAlignmentHorz = taRightJustify
            end
          end
          object glOrder: TcxGridLevel
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 659
          Height = 42
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          OnEnter = Panel3Enter
          DesignSize = (
            659
            42)
          object cxLabel1: TcxLabel
            Left = 10
            Top = 11
            Caption = #1055#1088#1080#1082#1072#1079
            FocusControl = cxDBDateEdit1
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 296
            Top = 10
            DataBinding.DataField = 'NUMBER_PREFIX'
            DataBinding.DataSource = dsMain
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 53
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 347
            Top = 10
            DataBinding.DataField = 'NUMBER'
            DataBinding.DataSource = dsMain
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 46
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 391
            Top = 10
            DataBinding.DataField = 'NUMBER_SUFFIX'
            DataBinding.DataSource = dsMain
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Width = 53
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 464
            Top = 10
            DataBinding.DataField = 'ORDER_DATE'
            DataBinding.DataSource = dsMain
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Width = 85
          end
          object cxLabel2: TcxLabel
            Left = 277
            Top = 12
            Caption = #8470
            FocusControl = cxDBDateEdit1
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
          end
          object cxLabel3: TcxLabel
            Left = 446
            Top = 12
            Caption = #1086#1090
            FocusControl = cxDBDateEdit1
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 546
            Top = 10
            Anchors = [akTop, akRight]
            Caption = #1055#1086#1076#1087#1080#1089#1072#1085#1085#1099#1081
            DataBinding.DataField = 'SIGNED'
            DataBinding.DataSource = dsMain
            Properties.Alignment = taRightJustify
            Properties.DisplayChecked = #1055#1086#1076#1087#1080#1089#1072#1085
            Properties.DisplayUnchecked = #1053#1077' '#1087#1086#1076#1087#1080#1089#1072#1085
            Properties.ImmediatePost = True
            Properties.NullStyle = nssInactive
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 5
            Width = 104
          end
          object cbOrderType: TcxDBLookupComboBox
            Left = 64
            Top = 10
            DataBinding.DataField = 'ORDER_TYPE'
            DataBinding.DataSource = dsMain
            ParentFont = False
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsOrderTypes
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 209
          end
          object lblSignDate: TcxLabel
            Left = 538
            Top = 25
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = #1086#1090
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            Transparent = True
            Visible = False
            Height = 18
            Width = 110
          end
        end
      end
    end
  end
  inherited dsMainList: TDataSource
    Top = 106
  end
  inherited dsMain: TDataSource
    Top = 106
  end
  inherited cxGridPopupMenu1: TcxGridPopupMenu
    Top = 77
  end
  inherited trMain: TpFIBTransaction
    Top = 48
  end
  inherited fibdsMainList: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ORDERS'
      'SET '
      '    SIGNED = :SIGNED'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ORDERS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    RefreshSQL.Strings = (
      'SELECT'
      '    O.ID,'
      '    O.NUMBER_PREFIX,'
      '    O.NUMBER,'
      '    O.NUMBER_SUFFIX,'
      '    O.ORDER_DATE,'
      '    O.ORDER_TYPE,'
      '    O.SIGNED,'
      '    O.COMMENTS'
      'FROM'
      '    ORDERS O'
      'WHERE '
      '        O.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    O.ID,'
      '    O.NUMBER_PREFIX,'
      '    O.NUMBER,'
      '    O.NUMBER_SUFFIX,'
      '    O.ORDER_DATE,'
      '    O.ORDER_TYPE,'
      '    O.SIGNED,'
      '    O.COMMENTS'
      'FROM'
      '    ORDERS O')
    AutoUpdateOptions.UpdateTableName = 'ORDERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = False
    AutoUpdateOptions.CanChangeSQLs = False
    AutoUpdateOptions.GeneratorName = 'GEN_ORDERS_ID'
    AutoUpdateOptions.AutoParamsToFields = False
    OnCalcFields = fibdsMainListCalcFields
    Top = 77
    object fibdsMainListID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainListNUMBER_PREFIX: TFIBStringField
      DisplayLabel = #1055#1088#1077#1092#1080#1082#1089' '#8470
      FieldName = 'NUMBER_PREFIX'
      Size = 10
      EmptyStrToNull = True
    end
    object fibdsMainListNUMBER: TFIBIntegerField
      DisplayLabel = #8470
      FieldName = 'NUMBER'
      OnGetText = fibdsMainListNUMBERGetText
    end
    object fibdsMainListNUMBER_SUFFIX: TFIBStringField
      DisplayLabel = #1057#1091#1092#1092#1080#1082#1089' '#8470
      FieldName = 'NUMBER_SUFFIX'
      Size = 10
      EmptyStrToNull = True
    end
    object fibdsMainListORDER_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'ORDER_DATE'
    end
    object fibdsMainListORDER_TYPE: TFIBIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'ORDER_TYPE'
    end
    object fibdsMainListSIGNED: TFIBIntegerField
      DisplayLabel = #1055#1086#1076#1087#1080#1089#1072#1085#1085#1099#1081
      FieldName = 'SIGNED'
    end
    object fibdsMainListCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainListPERSONS: TStringField
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
      FieldKind = fkCalculated
      FieldName = 'PERSONS'
      Size = 2500
      Calculated = True
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
            Item = sbPrintList
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
            Item = sbFirst
            Visible = True
          end
          item
            Item = sbPrior
            Visible = True
          end
          item
            Item = sbNext
            Visible = True
          end
          item
            Item = sbLast
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbAdd
            Visible = True
          end
          item
            Item = sbDelete
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
            Item = sbApply
            Visible = True
          end
          item
            Item = sbCancel
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbClose
            Visible = True
          end
          item
            Item = sbViewKind
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
    Top = 48
    DockControlHeights = (
      0
      0
      0
      0)
    inherited sbApplyList: TdxBarButton
      OnClick = sbApplyListClick
    end
    inherited sbCancelList: TdxBarButton
      OnClick = sbCancelListClick
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
    object sbFirst: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = sbFirstClick
    end
    object sbLast: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = sbLastClick
    end
    object sbNext: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = sbNextClick
    end
    object sbPrior: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = sbPriorClick
    end
    object sbViewKind: TdxBarButton
      Align = iaRight
      Caption = #1056#1077#1078#1080#1084
      Category = 0
      HelpContext = 1
      Hint = #1055#1077#1088#1077#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1088#1077#1078#1080#1084#1072#1084#1080' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1090#1072#1073#1083#1080#1094#1099' '#1080' '#1082#1072#1088#1090#1086#1095#1082#1080
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 13
      OnClick = sbViewKindClick
    end
    object sbPrintList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 11
    end
  end
  inherited fibdsMain: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    O.ID,'
      '    O.NUMBER_PREFIX,'
      '    O.NUMBER,'
      '    O.NUMBER_SUFFIX,'
      '    O.ORDER_DATE,'
      '    O.ORDER_TYPE,'
      '    O.SIGNED,'
      '    O.SIGN_DATE,'
      '    O.COMMENTS'
      'FROM'
      '    ORDERS O'
      'WHERE (O.ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'ORDERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_ORDERS_ID'
    AutoUpdateOptions.AutoParamsToFields = False
    AfterOpen = fibdsMainAfterOpen
    Top = 77
    object fibdsMainID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainNUMBER_PREFIX: TFIBStringField
      FieldName = 'NUMBER_PREFIX'
      Size = 10
      EmptyStrToNull = True
    end
    object fibdsMainNUMBER: TFIBIntegerField
      FieldName = 'NUMBER'
    end
    object fibdsMainNUMBER_SUFFIX: TFIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Size = 10
      EmptyStrToNull = True
    end
    object fibdsMainORDER_DATE: TFIBDateField
      FieldName = 'ORDER_DATE'
    end
    object fibdsMainORDER_TYPE: TFIBIntegerField
      FieldName = 'ORDER_TYPE'
      OnChange = fibdsMainORDER_TYPEChange
    end
    object fibdsMainSIGNED: TFIBIntegerField
      FieldName = 'SIGNED'
    end
    object fibdsMainSIGN_DATE: TFIBDateField
      FieldName = 'SIGN_DATE'
    end
    object fibdsMainCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object fibdsMainAcceptance: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    O.ID,'
      '    O.ORDER_ID,'
      '    O.PERSON_ID,'
      '    P.SURNAME,'
      '    P.NAME,'
      '    P.SECOND_NAME,'
      '    P.SEX,'
      '    P.BIRTHDAY,'
      '    P.TABLE_NUMBER,'
      '    P.PENS_NUMBER,'
      '    O.DEPARTMENT_ID,'
      '    O.JOB_ID,'
      '    O.GRADE_QUALIFICATION_CLASS,'
      '    O.ACCEPTANCE_CONDITIONS,'
      '    O.COMMON_RATE_SCALE_GRADE,'
      '    O.LENGTH_SALARY_RAISE_PERCENT,'
      '    O.HARMFUL_SALARY_RAISE_PERCENT,'
      '    O.WORK_AGREEMENT_NUMBER,'
      '    O.WORK_AGREEMENT_DATE,'
      '    O.WORK_START,'
      '    O.WORK_STOP,'
      '    O.TRIAL_PERIOD,'
      '    O.COMMENTS'
      'FROM'
      '    ORDERS_ACCEPTANCE O, PERSONS P'
      'WHERE (O.ORDER_ID=:ID) and (P.ID=O.PERSON_ID)')
    OnUpdateRecord = fibdsMainAcceptanceUpdateRecord
    AutoUpdateOptions.UpdateTableName = 'ORDERS_ACCEPTANCE'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_ORDERS_ACCEPTANCE_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 98
    Top = 77
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainAcceptanceID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainAcceptanceORDER_ID: TFIBIntegerField
      FieldName = 'ORDER_ID'
    end
    object fibdsMainAcceptancePERSON_ID: TFIBIntegerField
      FieldName = 'PERSON_ID'
    end
    object fibdsMainAcceptanceSURNAME: TFIBStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'SURNAME'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsMainAcceptanceNAME: TFIBStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'NAME'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsMainAcceptanceSECOND_NAME: TFIBStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      FieldName = 'SECOND_NAME'
      Size = 30
      EmptyStrToNull = True
    end
    object fibdsMainAcceptanceSEX: TFIBStringField
      DisplayLabel = #1055#1086#1083
      FieldName = 'SEX'
      Size = 1
      EmptyStrToNull = True
    end
    object fibdsMainAcceptanceBIRTHDAY: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'BIRTHDAY'
    end
    object fibdsMainAcceptanceTABLE_NUMBER: TFIBIntegerField
      DisplayLabel = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
      FieldName = 'TABLE_NUMBER'
    end
    object fibdsMainAcceptanceDEPARTMENT_ID: TFIBIntegerField
      FieldName = 'DEPARTMENT_ID'
    end
    object fibdsMainAcceptanceJOB_ID: TFIBIntegerField
      FieldName = 'JOB_ID'
    end
    object fibdsMainAcceptanceGRADE_QUALIFICATION_CLASS: TFIBStringField
      FieldName = 'GRADE_QUALIFICATION_CLASS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainAcceptanceACCEPTANCE_CONDITIONS: TFIBStringField
      FieldName = 'ACCEPTANCE_CONDITIONS'
      Size = 200
      EmptyStrToNull = True
    end
    object fibdsMainAcceptanceCOMMON_RATE_SCALE_GRADE: TFIBIntegerField
      DisplayLabel = #1056#1072#1079#1088#1103#1076' '#1045#1058#1057
      FieldName = 'COMMON_RATE_SCALE_GRADE'
    end
    object fibdsMainAcceptanceLENGTH_SALARY_RAISE_PERCENT: TFIBFloatField
      DisplayLabel = #1053#1072#1076#1073#1072#1074#1082#1072' '#1079#1072' '#1074#1099#1089#1083#1091#1075#1091' '#1083#1077#1090', %'
      FieldName = 'LENGTH_SALARY_RAISE_PERCENT'
    end
    object fibdsMainAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TFIBFloatField
      DisplayLabel = #1053#1072#1076#1073#1072#1074#1082#1072' '#1079#1072' '#1074#1088#1077#1076#1085#1086#1089#1090#1100', %'
      FieldName = 'HARMFUL_SALARY_RAISE_PERCENT'
    end
    object fibdsMainAcceptanceWORK_AGREEMENT_NUMBER: TFIBStringField
      FieldName = 'WORK_AGREEMENT_NUMBER'
      Size = 10
      EmptyStrToNull = True
    end
    object fibdsMainAcceptanceWORK_AGREEMENT_DATE: TFIBDateField
      FieldName = 'WORK_AGREEMENT_DATE'
    end
    object fibdsMainAcceptanceWORK_START: TFIBDateField
      FieldName = 'WORK_START'
    end
    object fibdsMainAcceptanceWORK_STOP: TFIBDateField
      FieldName = 'WORK_STOP'
    end
    object fibdsMainAcceptanceTRIAL_PERIOD: TFIBStringField
      FieldName = 'TRIAL_PERIOD'
      EmptyStrToNull = True
    end
    object fibdsMainAcceptanceCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainAcceptancePENS_NUMBER: TFIBStringField
      DisplayLabel = #1055#1077#1085#1089#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088
      FieldName = 'PENS_NUMBER'
      EmptyStrToNull = True
    end
  end
  object dsMainAcceptance: TDataSource
    DataSet = fibdsMainAcceptance
    OnStateChange = dsMainStateChange
    Left = 98
    Top = 106
  end
  object fibdsOrderTypes: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT 1 ID, cast('#39#1086' '#1087#1088#1080#1077#1084#1077' '#1085#1072' '#1088#1072#1073#1086#1090#1091#39' as varchar(50)) NAME'
      'FROM rdb$database'
      'union'
      'SELECT 2,cast('#39#1086' '#1087#1088#1077#1082#1088#1072#1097#1077#1085#1080#1080' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072#39' as varchar(50))'
      'FROM rdb$database'
      'union'
      'SELECT 3,cast('#39#1086' '#1087#1077#1088#1077#1074#1086#1076#1077' '#1085#1072' '#1076#1088#1091#1075#1091#1102' '#1088#1072#1073#1086#1090#1091#39' as varchar(50))'
      'FROM rdb$database'
      'union'
      'SELECT 4,cast('#39#1086' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1080' '#1085#1072' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1102#39' as varchar(50))'
      'FROM rdb$database'
      'union'
      
        'SELECT 5,cast('#39#1086' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1080' '#1085#1072' '#1082#1091#1088#1089#1099' '#1087#1086#1074#1099#1096#1077#1085#1080#1103' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080#39' as' +
        ' varchar(50))'
      'FROM rdb$database'
      'union'
      
        'SELECT 6,cast('#39#1086' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1080' '#1085#1072' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1080#39' as va' +
        'rchar(50))'
      'FROM rdb$database'
      'union'
      'SELECT 7,cast('#39#1086' '#1087#1086#1074#1099#1096#1077#1085#1080#1080' '#1088#1072#1079#1088#1103#1076#1072' '#1086#1087#1083#1072#1090#1099' '#1090#1088#1091#1076#1072#39' as varchar(50))'
      'FROM rdb$database'
      'union'
      'SELECT 8,cast('#39#1086' '#1085#1072#1076#1073#1072#1074#1082#1077' '#1079#1072' '#1074#1099#1089#1083#1091#1075#1091' '#1083#1077#1090#39' as varchar(50))'
      'FROM rdb$database'
      'union'
      'SELECT 9,cast('#39#1086' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1080' '#1086#1090#1087#1091#1089#1082#1072#39' as varchar(50))'
      'FROM rdb$database')
    AutoUpdateOptions.KeyFields = 'ID'
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 40
    Top = 135
    poImportDefaultValues = False
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsOrderTypesID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsOrderTypesNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsOrderTypes: TDataSource
    DataSet = fibdsOrderTypes
    OnStateChange = dsMainStateChange
    Left = 40
    Top = 164
  end
  object fibdsMainTransference: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    OT.ID,'
      '    OT.ORDER_ID,'
      '    OT.TRANSFERENCE_KIND,'
      '    OT.PERSON_ID,'
      '    OT.OLD_DEPARTMENT_ID,'
      '    OT.NEW_DEPARTMENT_ID,'
      '    OT.OLD_JOB_ID,'
      '    OT.OLD_GRADE_QUALIFICATION_CLASS,'
      '    OT.NEW_JOB_ID,'
      '    OT.NEW_GRADE_QUALIFICATION_CLASS,'
      '    OT.COMMON_RATE_SCALE_GRADE,'
      '    OT.LENGTH_SALARY_RAISE_PERCENT,'
      '    OT.HARMFUL_SALARY_RAISE_PERCENT,'
      '    OT.WORK_START,'
      '    OT.WORK_STOP,'
      '    OT.TRANSFERENCE_REASON,'
      '    OT.COMMENTS'
      'FROM'
      '    ORDERS_TRANSFERENCE OT'
      'WHERE (OT.ORDER_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'ORDERS_TRANSFERENCE'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_ORDERS_TRANSFERENCE_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 127
    Top = 77
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainTransferenceID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainTransferenceORDER_ID: TFIBIntegerField
      FieldName = 'ORDER_ID'
    end
    object fibdsMainTransferenceTRANSFERENCE_KIND: TFIBIntegerField
      DisplayLabel = #1042#1080#1076' '#1087#1077#1088#1077#1074#1086#1076#1072' ('#1087#1086#1089#1090#1086#1103#1085#1085#1086', '#1074#1088#1077#1084#1077#1085#1085#1086')'
      FieldName = 'TRANSFERENCE_KIND'
    end
    object fibdsMainTransferencePERSON_ID: TFIBIntegerField
      DisplayLabel = #1060#1048#1054
      FieldName = 'PERSON_ID'
    end
    object fibdsMainTransferenceOLD_DEPARTMENT_ID: TFIBIntegerField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1087#1088#1077#1078#1085#1077#1077
      FieldName = 'OLD_DEPARTMENT_ID'
    end
    object fibdsMainTransferenceNEW_DEPARTMENT_ID: TFIBIntegerField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1077
      FieldName = 'NEW_DEPARTMENT_ID'
    end
    object fibdsMainTransferenceOLD_JOB_ID: TFIBIntegerField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100' ('#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100', '#1087#1088#1086#1092#1077#1089#1089#1080#1103') '#1087#1088#1077#1078#1085#1103#1103
      FieldName = 'OLD_JOB_ID'
    end
    object fibdsMainTransferenceOLD_GRADE_QUALIFICATION_CLASS: TFIBStringField
      DisplayLabel = #1056#1072#1079#1088#1103#1076', '#1082#1083#1072#1089#1089' ('#1082#1072#1090#1077#1075#1086#1088#1080#1103') '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080' '#1087#1088#1077#1078#1085#1103#1103
      FieldName = 'OLD_GRADE_QUALIFICATION_CLASS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainTransferenceNEW_JOB_ID: TFIBIntegerField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100' ('#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100', '#1087#1088#1086#1092#1077#1089#1089#1080#1103') '#1085#1086#1074#1072#1103
      FieldName = 'NEW_JOB_ID'
    end
    object fibdsMainTransferenceNEW_GRADE_QUALIFICATION_CLASS: TFIBStringField
      DisplayLabel = #1056#1072#1079#1088#1103#1076', '#1082#1083#1072#1089#1089' ('#1082#1072#1090#1077#1075#1086#1088#1080#1103') '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080' '#1085#1086#1074#1072#1103
      FieldName = 'NEW_GRADE_QUALIFICATION_CLASS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainTransferenceCOMMON_RATE_SCALE_GRADE: TFIBIntegerField
      DisplayLabel = #1056#1072#1079#1088#1103#1076' '#1045#1058#1057
      FieldName = 'COMMON_RATE_SCALE_GRADE'
    end
    object fibdsMainTransferenceLENGTH_SALARY_RAISE_PERCENT: TFIBFloatField
      DisplayLabel = #1053#1072#1076#1073#1072#1074#1082#1072' '#1079#1072' '#1074#1099#1089#1083#1091#1075#1091' '#1083#1077#1090', %'
      FieldName = 'LENGTH_SALARY_RAISE_PERCENT'
    end
    object fibdsMainTransferenceHARMFUL_SALARY_RAISE_PERCENT: TFIBFloatField
      DisplayLabel = #1053#1072#1076#1073#1072#1074#1082#1072' '#1079#1072' '#1074#1088#1077#1076#1085#1086#1089#1090#1100', %'
      FieldName = 'HARMFUL_SALARY_RAISE_PERCENT'
    end
    object fibdsMainTransferenceWORK_START: TFIBDateField
      DisplayLabel = #1055#1077#1088#1077#1074#1086#1076' '#1089
      FieldName = 'WORK_START'
    end
    object fibdsMainTransferenceWORK_STOP: TFIBDateField
      DisplayLabel = #1055#1077#1088#1077#1074#1086#1076' '#1087#1086
      FieldName = 'WORK_STOP'
    end
    object fibdsMainTransferenceTRANSFERENCE_REASON: TFIBStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077' ('#1076#1088#1091#1075#1086#1081' '#1076#1086#1082#1091#1084#1077#1085#1090')'
      FieldName = 'TRANSFERENCE_REASON'
      Size = 200
      EmptyStrToNull = True
    end
    object fibdsMainTransferenceCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsMainTransference: TDataSource
    DataSet = fibdsMainTransference
    OnStateChange = dsMainStateChange
    Left = 127
    Top = 106
  end
  object fibdsTransferenceKind: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT 0 ID, cast('#39#1074#1088#1077#1084#1077#1085#1085#1086#39' as varchar(10)) NAME'
      'FROM rdb$database'
      'union'
      'SELECT 1,cast('#39#1087#1086#1089#1090#1086#1103#1085#1085#1086#39' as varchar(10))'
      'FROM rdb$database')
    AutoUpdateOptions.KeyFields = 'ID'
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 127
    Top = 134
    poImportDefaultValues = False
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object FIBIntegerField1: TFIBIntegerField
      FieldName = 'ID'
    end
    object FIBStringField1: TFIBStringField
      FieldName = 'NAME'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsTransferenceKind: TDataSource
    DataSet = fibdsTransferenceKind
    OnStateChange = dsMainStateChange
    Left = 127
    Top = 163
  end
  object fibqPersonsInOrders: TpFIBQuery
    Transaction = trMain
    Database = frmDM.dbMain
    SQL.Strings = (
      'SELECT P.NAME,'
      '       P.SURNAME,'
      '       P.SECOND_NAME'
      'FROM @ORDERS_TYPE O, PERSONS P'
      'WHERE (O.ORDER_ID=:ID) and (P.ID=O.PERSON_ID)')
    Left = 40
    Top = 193
  end
  object fibdsMainDismissal: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    OD.ID,'
      '    OD.ORDER_ID,'
      '    OD.PERSON_ID,'
      '    OD.DEPARTMENT_ID,'
      '    OD.JOB_ID,'
      '    OD.GRADE_QUALIFICATION_CLASS,'
      '    OD.WORK_AGREEMENT_NUMBER,'
      '    OD.WORK_AGREEMENT_DATE,'
      '    OD.DISMISSAL_DATE,'
      '    OD.DISMISSAL_REASON,'
      '    OD.DISMISSAL_REASON_DOCUMENT,'
      '    OD.COMMENTS'
      'FROM'
      '    ORDERS_DISMISSAL OD'
      'WHERE (OD.ORDER_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'ORDERS_DISMISSAL'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_ORDERS_DISMISSAL_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 156
    Top = 77
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainDismissalID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainDismissalORDER_ID: TFIBIntegerField
      FieldName = 'ORDER_ID'
    end
    object fibdsMainDismissalPERSON_ID: TFIBIntegerField
      DisplayLabel = #1060#1048#1054
      FieldName = 'PERSON_ID'
    end
    object fibdsMainDismissalDEPARTMENT_ID: TFIBIntegerField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'DEPARTMENT_ID'
    end
    object fibdsMainDismissalJOB_ID: TFIBIntegerField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100' ('#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100', '#1087#1088#1086#1092#1077#1089#1089#1080#1103')'
      FieldName = 'JOB_ID'
    end
    object fibdsMainDismissalGRADE_QUALIFICATION_CLASS: TFIBStringField
      DisplayLabel = #1056#1072#1079#1088#1103#1076', '#1082#1083#1072#1089#1089' ('#1082#1072#1090#1077#1075#1086#1088#1080#1103') '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080
      FieldName = 'GRADE_QUALIFICATION_CLASS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainDismissalWORK_AGREEMENT_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'WORK_AGREEMENT_NUMBER'
      Size = 10
      EmptyStrToNull = True
    end
    object fibdsMainDismissalWORK_AGREEMENT_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'WORK_AGREEMENT_DATE'
    end
    object fibdsMainDismissalDISMISSAL_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1077#1082#1088#1072#1097#1077#1085#1080#1103' ('#1088#1072#1089#1090#1086#1088#1078#1077#1085#1080#1103') '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072' ('#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103')'
      FieldName = 'DISMISSAL_DATE'
    end
    object fibdsMainDismissalDISMISSAL_REASON: TFIBStringField
      DisplayLabel = 
        #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1082#1088#1072#1097#1077#1085#1080#1103' ('#1088#1072#1089#1090#1086#1088#1078#1077#1085#1080#1103') '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072' ('#1091#1074#1086#1083#1100#1085#1077#1085 +
        #1080#1103')'
      FieldName = 'DISMISSAL_REASON'
      Size = 200
      EmptyStrToNull = True
    end
    object fibdsMainDismissalDISMISSAL_REASON_DOCUMENT: TFIBStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077' ('#1076#1086#1082#1091#1084#1077#1085#1090', '#1085#1086#1084#1077#1088', '#1076#1072#1090#1072')'
      FieldName = 'DISMISSAL_REASON_DOCUMENT'
      Size = 200
      EmptyStrToNull = True
    end
    object fibdsMainDismissalCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsMainDismissal: TDataSource
    DataSet = fibdsMainDismissal
    OnStateChange = dsMainStateChange
    Left = 156
    Top = 106
  end
  object fibdsMainCertificationRaisingSpecialization: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    OC.ID,'
      '    OC.ORDER_ID,'
      '    OC.PERSON_ID,'
      '    OC.START_DATE,'
      '    OC.STOP_DATE,'
      '    @INFO INFO,'
      '    OC.REASON,'
      '    OC.COMMENTS'
      'FROM'
      '    @ORDERS_BODY OC'
      'WHERE (OC.ORDER_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'ORDERS_CERTIFICATION'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_ORDERS_CERTIFICATION_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 185
    Top = 77
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainCertificationRaisingSpecializationID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainCertificationRaisingSpecializationORDER_ID: TFIBIntegerField
      FieldName = 'ORDER_ID'
    end
    object fibdsMainCertificationRaisingSpecializationPERSON_ID: TFIBIntegerField
      FieldName = 'PERSON_ID'
    end
    object fibdsMainCertificationRaisingSpecializationSTART_DATE: TFIBDateField
      DisplayLabel = #1057
      FieldName = 'START_DATE'
    end
    object fibdsMainCertificationRaisingSpecializationSTOP_DATE: TFIBDateField
      DisplayLabel = #1055#1086
      FieldName = 'STOP_DATE'
    end
    object fibdsMainCertificationRaisingSpecializationINFO: TFIBStringField
      DisplayLabel = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1080
      FieldName = 'INFO'
      Size = 200
      EmptyStrToNull = True
    end
    object fibdsMainCertificationRaisingSpecializationREASON: TFIBStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'REASON'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainCertificationRaisingSpecializationCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsMainCertificationRaisingSpecialization: TDataSource
    DataSet = fibdsMainCertificationRaisingSpecialization
    OnStateChange = dsMainStateChange
    Left = 185
    Top = 106
  end
  object fibdsMainGradeServeRaising: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    OG.ID,'
      '    OG.ORDER_ID,'
      '    OG.PERSON_ID,'
      '    @GRADE GRADE,'
      '    OG.START_DATE,'
      '    OG.COMMENTS'
      'FROM'
      '    @ORDERS_BODY OG'
      'WHERE (OG.ORDER_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'ORDERS_GRADE_RAISING'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_ORDERS_GRADE_RAISING_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 214
    Top = 77
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainGradeServeRaisingID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainGradeServeRaisingORDER_ID: TFIBIntegerField
      FieldName = 'ORDER_ID'
    end
    object fibdsMainGradeServeRaisingPERSON_ID: TFIBIntegerField
      DisplayLabel = #1060#1048#1054
      FieldName = 'PERSON_ID'
    end
    object fibdsMainGradeServeRaisingGRADE: TFIBIntegerField
      DisplayLabel = #1056#1072#1079#1088#1103#1076' '#1086#1087#1083#1072#1090#1099' '#1090#1088#1091#1076#1072
      FieldName = 'GRADE'
    end
    object fibdsMainGradeServeRaisingSTART_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1103
      FieldName = 'START_DATE'
    end
    object fibdsMainGradeServeRaisingCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsGradeServeRaising: TDataSource
    DataSet = fibdsMainGradeServeRaising
    OnStateChange = dsMainStateChange
    Left = 214
    Top = 106
  end
  object fibdsMainLeave: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    OL.ID,'
      '    OL.ORDER_ID,'
      '    OL.PERSON_ID,'
      '    OL.WORK_PERIOD_START,'
      '    OL.WORK_PERIOD_STOP,'
      '    OL.ANNUAL_LEAVE_START,'
      '    OL.ANNUAL_LEAVE_STOP,'
      '    OL.ADDITIONAL_LEAVE_REASON,'
      '    OL.ADDITIONAL_LEAVE_START,'
      '    OL.ADDITIONAL_LEAVE_STOP,'
      '    OL.COMMENTS'
      'FROM'
      '    ORDERS_LEAVE OL'
      'WHERE (OL.ORDER_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'ORDERS_LEAVE'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_ORDERS_LEAVE_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 243
    Top = 77
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainLeaveID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainLeaveORDER_ID: TFIBIntegerField
      FieldName = 'ORDER_ID'
    end
    object fibdsMainLeavePERSON_ID: TFIBIntegerField
      DisplayLabel = #1060#1048#1054
      FieldName = 'PERSON_ID'
    end
    object fibdsMainLeaveWORK_PERIOD_START: TFIBDateField
      DisplayLabel = #1047#1072' '#1087#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099' "'#1057'"'
      FieldName = 'WORK_PERIOD_START'
    end
    object fibdsMainLeaveWORK_PERIOD_STOP: TFIBDateField
      DisplayLabel = #1047#1072' '#1087#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099' "'#1055#1086'"'
      FieldName = 'WORK_PERIOD_STOP'
    end
    object fibdsMainLeaveANNUAL_LEAVE_START: TFIBDateField
      DisplayLabel = #1045#1078#1077#1075#1086#1076#1085#1099#1081' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1086#1090#1087#1091#1089#1082' "'#1057'"'
      FieldName = 'ANNUAL_LEAVE_START'
    end
    object fibdsMainLeaveANNUAL_LEAVE_STOP: TFIBDateField
      DisplayLabel = #1045#1078#1077#1075#1086#1076#1085#1099#1081' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1086#1090#1087#1091#1089#1082' "'#1055#1086'"'
      FieldName = 'ANNUAL_LEAVE_STOP'
    end
    object fibdsMainLeaveADDITIONAL_LEAVE_REASON: TFIBStringField
      DisplayLabel = #1042#1080#1076' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1075#1086' '#1086#1090#1087#1091#1089#1082#1072
      FieldName = 'ADDITIONAL_LEAVE_REASON'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainLeaveADDITIONAL_LEAVE_START: TFIBDateField
      DisplayLabel = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1086#1090#1087#1091#1089#1082' "'#1057'"'
      FieldName = 'ADDITIONAL_LEAVE_START'
    end
    object fibdsMainLeaveADDITIONAL_LEAVE_STOP: TFIBDateField
      DisplayLabel = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1086#1090#1087#1091#1089#1082' "'#1055#1086'"'
      FieldName = 'ADDITIONAL_LEAVE_STOP'
    end
    object fibdsMainLeaveCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsMainLeave: TDataSource
    DataSet = fibdsMainLeave
    OnStateChange = dsMainStateChange
    Left = 243
    Top = 106
  end
end
