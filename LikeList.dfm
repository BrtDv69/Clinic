inherited frmLikeList: TfrmLikeList
  Left = 0
  Caption = 'frmLikeList'
  KeyPreview = True
  OldCreateOrder = True
  WindowState = wsMaximized
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 0
    Width = 684
    Height = 449
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object grdMainList: TcxGrid
      Left = 0
      Top = 0
      Width = 684
      Height = 382
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
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = tvMainListFocusedRecordChanged
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
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
      end
      object lvMainList: TcxGridLevel
        GridView = tvMainList
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 390
      Width = 684
      Height = 59
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
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
      Top = 382
      Width = 684
      Height = 8
      Hint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      HotZoneClassName = 'TcxMediaPlayer9Style'
      AlignSplitter = salBottom
      ResizeUpdate = True
      Control = Panel1
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu [1]
    Grid = grdMainList
    PopupMenus = <>
    Left = 168
    Top = 64
  end
  object fibdsMainList: TpFIBDataSet
    CachedUpdates = True
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainListAfterDelete
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
    Left = 181
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
      OnClick = sbRefreshClick
    end
    object sbApply: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 7
    end
    object sbCancel: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 8
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
  object dsMainList: TDataSource
    DataSet = fibdsMainList
    OnStateChange = dsMainListStateChange
    Left = 40
    Top = 90
  end
end
