object frmAdminReports: TfrmAdminReports
  Left = 140
  Top = 128
  BorderStyle = bsToolWindow
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1086#1090#1095#1077#1090#1072#1084#1080
  ClientHeight = 347
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 347
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object Panel2: TPanel
      Left = 0
      Top = 288
      Width = 509
      Height = 59
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Label339: TLabel
        Left = 0
        Top = 0
        Width = 509
        Height = 16
        Align = alTop
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080':'
        FocusControl = dbmComments
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbmComments: TcxDBMemo
        Left = 0
        Top = 16
        Width = 509
        Height = 43
        Align = alClient
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = dsMainList
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 0
      Top = 280
      Width = 509
      Height = 8
      Hint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      HotZoneClassName = 'TcxMediaPlayer9Style'
      AlignSplitter = salBottom
      ResizeUpdate = True
      Control = Panel2
    end
    object grdMainList: TcxGrid
      Left = 0
      Top = 0
      Width = 509
      Height = 280
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
      object tvMainList: TcxGridDBTableView
        DragMode = dmAutomatic
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsMainList
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.DataRowSizing = True
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        Preview.Column = tvMainListCOMMENTS
        Preview.Visible = True
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
        object tvMainListREPORT_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'REPORT_NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 397
        end
        object tvMainListDEFAULT_PRINTING: TcxGridDBColumn
          DataBinding.FieldName = 'DEFAULT_PRINTING'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
          Properties.DisplayUnchecked = #1053#1077#1084#1077#1076#1083#1077#1085#1085#1072#1103' '#1087#1077#1095#1072#1090#1100
          Properties.ValueChecked = 0
          Properties.ValueUnchecked = 1
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 98
        end
        object tvMainListCOMMENTS: TcxGridDBColumn
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object lvMainList: TcxGridLevel
        GridView = tvMainList
      end
    end
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Custom 1'
        DockedDockingStyle = dsRight
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsRight
        FloatLeft = 76
        FloatTop = 229
        FloatClientWidth = 0
        FloatClientHeight = 0
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
            Item = sbDesign
            Visible = True
          end
          item
            Item = sbFilter
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
          end>
        Name = 'Custom 1'
        NotDocking = [dsNone, dsLeft]
        OneOnRow = True
        Row = 0
        ShowMark = False
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    Images = frmDM.ilButtons
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsBottom]
    PopupMenuLinks = <>
    StretchGlyphs = False
    Style = bmsUseLookAndFeel
    UseLargeImagesForLargeIcons = True
    UseSystemFont = True
    Left = 37
    Top = 32
    DockControlHeights = (
      0
      27
      0
      0)
    object sbFirst: TdxBarButton
      Caption = 'aaa'
      Category = 0
      Enabled = False
      Hint = #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
    end
    object sbPrior: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 1
    end
    object sbNext: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 2
    end
    object sbLast: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 3
    end
    object sbAdd: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1086#1090#1095#1077#1090
      Visible = ivAlways
      ImageIndex = 4
      OnClick = sbAddClick
    end
    object sbDelete: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1086#1090#1095#1077#1090
      Visible = ivAlways
      ImageIndex = 5
      OnClick = sbDeleteClick
    end
    object sbDesign: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090
      Visible = ivAlways
      ImageIndex = 6
      OnClick = sbDesignClick
    end
    object sbApply: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 7
      OnClick = sbApplyClick
    end
    object sbCancel: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 8
      OnClick = sbCancelClick
    end
    object sbClose: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      OnClick = sbCloseClick
    end
    object sbFilter: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      Visible = ivAlways
      ImageIndex = 10
      OnClick = sbFilterClick
    end
  end
  object trMain: TpFIBTransaction
    DefaultDatabase = frmDM.dbMain
    TimeoutAction = TARollback
    Left = 8
    Top = 32
  end
  object fibdsMainList: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'select R.ID, R.REPORT_NAME, R.DEFAULT_PRINTING, R.COMMENTS'
      'from REPORTS_SHOING RS, REPORTS R'
      'where (R.ID=RS.REPORT_ID) and (RS.SENDER_NAME=:SENDER)')
    OnUpdateRecord = fibdsMainListUpdateRecord
    AutoUpdateOptions.UpdateTableName = 'REPORTS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_REPORTS_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainListAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 8
    Top = 61
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainListID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainListREPORT_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'REPORT_NAME'
      Size = 60
      EmptyStrToNull = False
    end
    object fibdsMainListDEFAULT_PRINTING: TFIBIntegerField
      DisplayLabel = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      FieldName = 'DEFAULT_PRINTING'
    end
    object fibdsMainListCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 300
      EmptyStrToNull = False
    end
  end
  object dsMainList: TDataSource
    DataSet = fibdsMainList
    OnStateChange = dsMainListStateChange
    Left = 8
    Top = 90
  end
  object fibdsReportShowing: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    RS.ID,'
      '    RS.REPORT_ID,'
      '    RS.SENDER_NAME'
      'FROM'
      '    REPORTS_SHOING RS')
    AutoUpdateOptions.UpdateTableName = 'REPORTS_SHOING'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_REPORTS_SHOING_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 8
    Top = 119
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsReportShowingID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsReportShowingREPORT_ID: TFIBIntegerField
      FieldName = 'REPORT_ID'
    end
    object fibdsReportShowingSENDER_NAME: TFIBStringField
      FieldName = 'SENDER_NAME'
      Size = 300
      EmptyStrToNull = False
    end
  end
  object dsReportShowing: TDataSource
    DataSet = fibdsReportShowing
    Left = 8
    Top = 148
  end
end
