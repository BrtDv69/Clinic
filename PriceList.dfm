inherited frmPriceList: TfrmPriceList
  Top = 113
  Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited grdMainList: TcxGrid
      Left = 249
      Width = 243
      inherited tvMainList: TcxGridDBTableView
        OnCustomDrawCell = tvMainListCustomDrawCell
        OnEditing = tvMainListEditing
        DataController.DataSource = dsMainList
        OptionsCustomize.ColumnsQuickCustomization = False
        OptionsData.Appending = False
        OptionsView.ColumnAutoWidth = True
        Preview.Column = tvMainListCOMMENTS
        Styles.IncSearch = nil
        Styles.Preview = nil
        object tvMainListDEPARTMENT_ID: TcxGridDBColumn
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
          Width = 196
        end
        object tvMainListSTART_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'START_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DateOnError = deNull
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.OnValidate = tvMainListSTART_DATEPropertiesValidate
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 0
          SortOrder = soDescending
          Width = 115
        end
        object tvMainListPRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072', '#1088#1091#1073'.'
          DataBinding.FieldName = 'PRICE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 81
        end
        object tvMainListCOMMENTS: TcxGridDBColumn
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainListCAN_EDIT_PRICE: TcxGridDBColumn
          DataBinding.FieldName = 'CAN_EDIT_PRICE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1086#1078#1085#1086
          Properties.DisplayUnchecked = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1077#1083#1100#1079#1103
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
    end
    inherited Panel1: TPanel
      inherited dbmComments: TcxDBMemo
        Height = 43
        Width = 684
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
      DataController.DataSource = dsGoodsServices
      DataController.ParentField = 'PARENT_ID'
      DataController.KeyField = 'ID'
      OptionsBehavior.CellHints = True
      OptionsBehavior.ExpandOnIncSearch = True
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsData.AnsiSort = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      Preview.Visible = True
      RootValue = Null
      TabOrder = 3
      OnCustomDrawCell = tlGroupsCustomDrawCell
      object tlGroupsNAME: TcxDBTreeListColumn
        Caption.AlignHorz = taCenter
        Caption.AlignVert = vaCenter
        Caption.Text = #1043#1088#1091#1087#1087#1099
        DataBinding.FieldName = 'NAME'
        Position.ColIndex = 0
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
      object tlGroupsITEM_TYPE: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ITEM_TYPE'
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 241
      Top = 0
      Width = 8
      Height = 382
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1076#1077#1088#1077#1074#1086' '#1086#1090#1076#1077#1083#1077#1085#1080#1081' '#1080' '#1075#1088#1091#1087#1087
      HotZoneClassName = 'TcxMediaPlayer9Style'
      ResizeUpdate = True
      Control = tlGroups
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
      TabOrder = 6
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object tvSearch: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = tvSearchCustomDrawCell
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
      end
      object lvSearch: TcxGridLevel
        GridView = tvSearch
      end
    end
  end
  inherited fibdsMainList: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PL.ID,'
      '    PL.GOOD_SERVICE_ID,'
      '    PL.DEPARTMENT_ID,'
      '    PL.START_DATE,'
      '    PL.PRICE,'
      '    PL.CAN_EDIT_PRICE,'
      '    PL.COMMENTS'
      'FROM'
      '    PRICE_LIST PL'
      'WHERE (PL.GOOD_SERVICE_ID=:ID)'
      'order by 4 desc')
    AutoUpdateOptions.UpdateTableName = 'PRICE_LIST'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_PRICE_LIST_ID'
    AfterOpen = fibdsMainListAfterOpen
    BeforeDelete = fibdsMainListBeforeDelete
    BeforeInsert = fibdsMainListBeforeInsert
    BeforeOpen = fibdsMainListBeforeOpen
    OnNewRecord = fibdsMainListNewRecord
    DataSource = dsGoodsServices
    Left = 69
    object fibdsMainListID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainListGOOD_SERVICE_ID: TFIBIntegerField
      FieldName = 'GOOD_SERVICE_ID'
    end
    object fibdsMainListDEPARTMENT_ID: TFIBIntegerField
      DisplayLabel = #1054#1090#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'DEPARTMENT_ID'
    end
    object fibdsMainListSTART_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1094#1077#1085#1099
      FieldName = 'START_DATE'
    end
    object fibdsMainListPRICE: TFIBFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object fibdsMainListCAN_EDIT_PRICE: TFIBIntegerField
      DisplayLabel = #1062#1077#1085#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1091#1077#1084#1072#1103
      FieldName = 'CAN_EDIT_PRICE'
    end
    object fibdsMainListCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
  end
  inherited dxBarManager1: TdxBarManager
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
            Item = sbPrint
            Visible = True
          end
          item
            BeginGroup = True
            Item = sbClose
            Visible = True
          end>
        Name = 'Custom 11'
        NotDocking = [dsNone, dsLeft]
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
    DockControlHeights = (
      0
      27
      0
      0)
    inherited sbApply: TdxBarButton
      OnClick = sbApplyClick
    end
    inherited sbCancel: TdxBarButton
      OnClick = sbCancelClick
    end
    object sbPrint: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 11
      OnClick = sbPrintClick
    end
  end
  inherited dsMainList: TDataSource
    Left = 69
  end
  object fibdsGoodsServices: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    GS.ID,'
      '    GS.ITEM_TYPE,'
      '    GS.PARENT_ID,'
      '    GS.CHILD_COUNT,'
      '    GS.NAME'
      'FROM'
      '    GOODS_SERVICES GS')
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    BeforeScroll = fibdsGoodsServicesBeforeScroll
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
    object fibdsGoodsServicesID: TFIBIntegerField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object fibdsGoodsServicesPARENT_ID: TFIBIntegerField
      FieldName = 'PARENT_ID'
      ReadOnly = True
    end
    object fibdsGoodsServicesCHILD_COUNT: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'CHILD_COUNT'
      ReadOnly = True
    end
    object fibdsGoodsServicesNAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      ReadOnly = True
      Required = True
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsGoodsServicesITEM_TYPE: TFIBIntegerField
      DefaultExpression = '1'
      FieldName = 'ITEM_TYPE'
      ReadOnly = True
    end
  end
  object dsGoodsServices: TDataSource
    DataSet = fibdsGoodsServices
    Left = 40
    Top = 90
  end
  object fibdsSearch: TpFIBDataSet
    SelectSQL.Strings = (
      'select GS.ID, GS.ITEM_TYPE, GS.NAME'
      'from GOODS_SERVICES GS'
      'where (UPPER(GS.NAME) like :NAME)'
      'order by 2,3')
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    Left = 98
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
      EmptyStrToNull = True
    end
  end
  object dsSearch: TDataSource
    DataSet = fibdsSearch
    Left = 98
    Top = 90
  end
end
