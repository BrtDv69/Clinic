inherited frmLikeTabs: TfrmLikeTabs
  Left = 35
  Caption = 'frmLikeTabs'
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 711
    Height = 449
    ActivePage = tsDetail
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    Options = [pcoTopToBottomText]
    ParentFont = False
    TabOrder = 0
    TabPosition = tpRight
    OnPageChanging = cxPageControl1PageChanging
    ClientRectBottom = 449
    ClientRectRight = 686
    ClientRectTop = 0
    object tsList: TcxTabSheet
      Caption = #1057#1087#1080#1089#1086#1082
      ImageIndex = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 659
        Top = 3
        Width = 27
        Height = 446
        Align = dalRight
        BarManager = dxBarManager
      end
      object grdMainList: TcxGrid
        Left = 0
        Top = 3
        Width = 659
        Height = 446
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object tvMainList: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = tvMainListFocusedRecordChanged
          DataController.DataSource = dsMainList
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
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsCustomize.DataRowSizing = True
          OptionsCustomize.GroupRowSizing = True
          OptionsData.Inserting = False
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
      object dxBarDockControl4: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 686
        Height = 3
        Align = dalTop
        BarManager = dxBarManager
      end
    end
    object tsDetail: TcxTabSheet
      Caption = #1044#1077#1090#1072#1083#1080
      ImageIndex = 1
      object dxBarDockControl2: TdxBarDockControl
        Left = 659
        Top = 3
        Width = 27
        Height = 446
        Align = dalRight
        BarManager = dxBarManager
      end
      object dxBarDockControl3: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 686
        Height = 3
        Align = dalTop
        BarManager = dxBarManager
      end
      object Panel4: TPanel
        Left = 0
        Top = 3
        Width = 659
        Height = 446
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Panel1: TPanel
          Left = 0
          Top = 387
          Width = 659
          Height = 59
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object Label339: TLabel
            Left = 0
            Top = 0
            Width = 659
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
            Align = alClient
            DataBinding.DataField = 'COMMENTS'
            DataBinding.DataSource = dsMain
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 43
            Width = 659
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 0
          Top = 379
          Width = 659
          Height = 8
          Hint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salBottom
          ResizeUpdate = True
          Control = Panel1
        end
      end
    end
  end
  object dsMainList: TDataSource [1]
    DataSet = fibdsMainList
    OnStateChange = dsMainListStateChange
    Left = 40
    Top = 90
  end
  object dsMain: TDataSource [2]
    DataSet = fibdsMain
    OnStateChange = dsMainStateChange
    Left = 69
    Top = 90
  end
  object cxGridPopupMenu1: TcxGridPopupMenu [3]
    Grid = grdMainList
    PopupMenus = <>
    Left = 11
    Top = 61
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
  object dxBarManager: TdxBarManager
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
        Caption = 'List'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 76
        FloatTop = 229
        FloatClientWidth = 0
        FloatClientHeight = 0
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
        Name = 'List'
        NotDocking = [dsNone, dsLeft, dsBottom]
        OneOnRow = True
        Row = 0
        ShowMark = False
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
        FloatClientHeight = 22
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
        Name = 'Detail'
        NotDocking = [dsNone, dsLeft, dsBottom]
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
    NotDocking = [dsNone, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    StretchGlyphs = False
    Style = bmsUseLookAndFeel
    UseLargeImagesForLargeIcons = True
    UseSystemFont = True
    Left = 11
    Top = 32
    DockControlHeights = (
      0
      0
      0
      0)
    object sbFirstList: TdxBarButton
      Caption = 'aaa'
      Category = 0
      Enabled = False
      Hint = #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = sbFirstListClick
    end
    object sbPriorList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = sbPriorListClick
    end
    object sbNextList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = sbNextListClick
    end
    object sbLastList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = sbLastListClick
    end
    object sbAddList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 4
      OnClick = sbAddListClick
    end
    object sbDeleteList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = sbDeleteListClick
    end
    object sbRefreshList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 6
      OnClick = sbRefreshListClick
    end
    object sbApplyList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 7
    end
    object sbCancelList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 8
    end
    object sbCloseList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      OnClick = sbCloseListClick
    end
    object sbFilterList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = sbFilterListClick
    end
    object sbAdd: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100'/'#1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 4
    end
    object sbDelete: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
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
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
    end
    object sbCancel: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 8
    end
    object sbPrint: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 11
    end
    object sbClose: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      OnClick = sbCloseListClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem5: TdxBarSubItem
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 11
      ItemLinks = <>
    end
  end
  object fibdsMain: TpFIBDataSet
    CachedUpdates = True
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    AfterInsert = fibdsMainAfterInsert
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
  end
end
