inherited frmGoodsAndServices: TfrmGoodsAndServices
  Left = 0
  Top = 103
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1091#1089#1083#1091#1075
  KeyPreview = True
  OldCreateOrder = True
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 684
    Height = 449
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object Panel2: TPanel
      Left = 0
      Top = 390
      Width = 684
      Height = 59
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Label339: TLabel
        Left = 0
        Top = 0
        Width = 684
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
        Width = 684
        Height = 43
        Align = alClient
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = dsMainGoodsServices
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
      Top = 382
      Width = 684
      Height = 8
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      HotZoneClassName = 'TcxMediaPlayer9Style'
      AlignSplitter = salBottom
      ResizeUpdate = True
      Control = Panel2
    end
    object cxSplitter2: TcxSplitter
      Left = 241
      Top = 0
      Width = 8
      Height = 382
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1076#1077#1088#1077#1074#1086' '#1075#1088#1091#1087#1087
      HotZoneClassName = 'TcxMediaPlayer9Style'
      ResizeUpdate = True
      Control = tlGroups
    end
    object grdMainList: TcxGrid
      Left = 249
      Top = 0
      Width = 243
      Height = 382
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object tvMainList: TcxGridDBTableView
        DragMode = dmAutomatic
        OnEndDrag = tvMainListEndDrag
        OnStartDrag = tvMainListStartDrag
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = tvMainListCustomDrawCell
        OnFocusedRecordChanged = tvMainListFocusedRecordChanged
        DataController.DataSource = dsMainGoodsServices
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
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
        object tvMainListNAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 328
        end
        object tvMainListITEM_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'ITEM_TYPE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1043#1088#1091#1087#1087#1072
          Properties.DisplayUnchecked = #1059#1089#1083#1091#1075#1072
          Properties.ValueChecked = 0
          Properties.ValueUnchecked = 1
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainListCOMMENTS: TcxGridDBColumn
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainListID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Hidden = True
        end
        object tvMainListPARENT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT_ID'
          Visible = False
          Hidden = True
        end
      end
      object lvMainList: TcxGridLevel
        GridView = tvMainList
      end
    end
    object tlGroups: TcxDBTreeList
      Left = 0
      Top = 0
      Width = 241
      Height = 382
      Styles.StyleSheet = frmDM.cxTreeListStyleSheet1
      Align = alLeft
      Bands = <
        item
        end>
      BufferedPaint = False
      DataController.DataSource = dsMain
      DataController.ParentField = 'PARENT_ID'
      DataController.KeyField = 'ID'
      OptionsBehavior.DragFocusing = True
      OptionsBehavior.ExpandOnIncSearch = True
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsData.AnsiSort = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      RootValue = Null
      TabOrder = 4
      OnCustomDrawCell = tlGroupsCustomDrawCell
      OnDragDrop = tlGroupsDragDrop
      OnDragOver = tlGroupsDragOver
      object tlGroupsNAME: TcxDBTreeListColumn
        Caption.AlignHorz = taCenter
        Caption.AlignVert = vaCenter
        Caption.Text = #1043#1088#1091#1087#1087#1099
        DataBinding.FieldName = 'NAME_WITH_CHIELD_COUNT'
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        SortOrder = soAscending
      end
      object tlGroupsID: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ID'
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object tlGroupsPARENT_ID: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'PARENT_ID'
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object tlGroupsCHILD_COUNT: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CHILD_COUNT'
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object tlGroupsONLY_NAME: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'NAME'
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
    end
    object grdSearch: TcxGrid
      Left = 500
      Top = 0
      Width = 184
      Height = 382
      Align = alRight
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object tvSearch: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = tvMainListCustomDrawCell
        OnFocusedRecordChanged = tvSearchFocusedRecordChanged
        DataController.DataSource = dsSearch
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
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.DataRowSizing = True
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderEndEllipsis = True
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
        object tvSearchID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Hidden = True
        end
        object tvSearchITEM_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'ITEM_TYPE'
          Visible = False
          Hidden = True
        end
        object tvSearchNAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
        end
        object tvSearchPARENT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT_ID'
          Visible = False
          Hidden = True
        end
      end
      object lvSearch: TcxGridLevel
        GridView = tvSearch
      end
    end
    object cxSplitter3: TcxSplitter
      Left = 492
      Top = 0
      Width = 8
      Height = 382
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1086#1080#1089#1082#1072
      HotZoneClassName = 'TcxMediaPlayer9Style'
      AlignSplitter = salRight
      ResizeUpdate = True
      Control = grdSearch
      OnAfterClose = cxSplitter3AfterClose
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
    Left = 69
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
      OnClick = sbFirstClick
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
    object sbNext: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = sbNextClick
    end
    object sbLast: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = sbLastClick
    end
    object sbAdd: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 4
      OnClick = sbAddClick
    end
    object sbDelete: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = sbDeleteClick
    end
    object sbRefresh: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 6
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
      Hint = #1060#1080#1083#1100#1090#1088'/'#1055#1086#1080#1089#1082
      Visible = ivAlways
      ImageIndex = 10
      OnClick = sbFilterClick
    end
  end
  object fibdsMain: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      
        'select GS.ID, GS.ITEM_TYPE, GS.PARENT_ID, GS.CHILD_COUNT, GS.NAM' +
        'E, GS.COMMENTS'
      'from GOODS_SERVICES GS'
      'where (GS.ITEM_TYPE=0)')
    AutoUpdateOptions.UpdateTableName = 'GOODS_SERVICES'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_GOODS_SERVICES_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    AfterOpen = fibdsMainAfterOpen
    BeforeScroll = fibdsMainBeforeScroll
    OnCalcFields = fibdsMainCalcFields
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 40
    Top = 61
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainITEM_TYPE: TFIBIntegerField
      FieldName = 'ITEM_TYPE'
    end
    object fibdsMainPARENT_ID: TFIBIntegerField
      FieldName = 'PARENT_ID'
    end
    object fibdsMainCHILD_COUNT: TFIBIntegerField
      FieldName = 'CHILD_COUNT'
      ReadOnly = True
    end
    object fibdsMainNAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsMainCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainNAME_WITH_CHIELD_COUNT: TFIBStringField
      DisplayWidth = 310
      FieldKind = fkCalculated
      FieldName = 'NAME_WITH_CHIELD_COUNT'
      Size = 310
      EmptyStrToNull = True
      Calculated = True
    end
  end
  object dsMain: TDataSource
    DataSet = fibdsMain
    OnStateChange = dsMainStateChange
    Left = 40
    Top = 90
  end
  object fibdsMainGoodsServices: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'select GS.ID, GS.ITEM_TYPE, GS.PARENT_ID, GS.NAME, GS.COMMENTS'
      'from GOODS_SERVICES GS'
      'where (GS.PARENT_ID=:ID)'
      'order by 2,4')
    AutoUpdateOptions.UpdateTableName = 'GOODS_SERVICES'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_GOODS_SERVICES_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    DataSource = dsMain
    AfterDelete = fibdsMainAfterDelete
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 40
    Top = 119
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainGoodsServicesID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainGoodsServicesITEM_TYPE: TFIBIntegerField
      DisplayLabel = #1043#1088#1091#1087#1087#1072
      FieldName = 'ITEM_TYPE'
    end
    object fibdsMainGoodsServicesPARENT_ID: TFIBIntegerField
      FieldName = 'PARENT_ID'
    end
    object fibdsMainGoodsServicesNAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsMainGoodsServicesCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsMainGoodsServices: TDataSource
    DataSet = fibdsMainGoodsServices
    OnStateChange = dsMainStateChange
    Left = 40
    Top = 148
  end
  object fibdsSearch: TpFIBDataSet
    SelectSQL.Strings = (
      'select GS.ID, GS.ITEM_TYPE, GS.NAME, GS.PARENT_ID'
      'from GOODS_SERVICES GS'
      'where (UPPER(GS.NAME) like :NAME)'
      'order by 2,3')
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 69
    Top = 61
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsSearchID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsSearchITEM_TYPE: TFIBIntegerField
      FieldName = 'ITEM_TYPE'
    end
    object fibdsSearchNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 300
      EmptyStrToNull = False
    end
    object fibdsSearchPARENT_ID: TFIBIntegerField
      FieldName = 'PARENT_ID'
    end
  end
  object dsSearch: TDataSource
    DataSet = fibdsSearch
    Left = 69
    Top = 90
  end
end
