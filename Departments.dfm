inherited frmDepartments: TfrmDepartments
  Left = 77
  Top = 123
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1099#1093' '#1087#1086#1076#1088#1072#1079#1076#1077#1085#1077#1085#1080#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited grdMainList: TcxGrid
      Left = 249
      Width = 243
      inherited tvMainList: TcxGridDBTableView
        DragMode = dmAutomatic
        OnEndDrag = tvMainListEndDrag
        OnStartDrag = tvMainListStartDrag
        OnCustomDrawCell = tvMainListCustomDrawCell
        DataController.DataSource = dsMainList
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnsQuickCustomization = False
        OptionsData.Appending = False
        OptionsView.ColumnAutoWidth = True
        Preview.Column = tvMainListCOMMENTS
        Styles.IncSearch = nil
        Styles.Header = nil
        Styles.Preview = nil
        object tvMainListID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Hidden = True
        end
        object tvMainListPARENT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT_ID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Hidden = True
        end
        object tvMainListNAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 71
        end
        object tvMainListITEM_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'ITEM_TYPE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsItemTypes
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 38
        end
        object tvMainListCHIEF_JOB_ID: TcxGridDBColumn
          DataBinding.FieldName = 'CHIEF_JOB_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 48
        end
        object tvMainListCHIEF_ID: TcxGridDBColumn
          DataBinding.FieldName = 'CHIEF_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 150
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'FIO'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 49
        end
        object tvMainListVALID: TcxGridDBColumn
          DataBinding.FieldName = 'VALID'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 23
        end
        object tvMainListCOMMENTS: TcxGridDBColumn
          DataBinding.FieldName = 'COMMENTS'
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
      DataController.DataSource = dsDepartaments
      DataController.ParentField = 'PARENT_ID'
      DataController.KeyField = 'ID'
      OptionsBehavior.CellHints = True
      OptionsBehavior.DragFocusing = True
      OptionsBehavior.ExpandOnIncSearch = True
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsData.AnsiSort = True
      OptionsData.Deleting = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      Preview.Visible = True
      RootValue = Null
      TabOrder = 3
      OnCustomDrawCell = tlGroupsCustomDrawCell
      OnDragDrop = tlGroupsDragDrop
      OnDragOver = tlGroupsDragOver
      object tlGroupsNAME: TcxDBTreeListColumn
        Caption.AlignHorz = taCenter
        Caption.AlignVert = vaCenter
        Caption.Text = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
        DataBinding.FieldName = 'NAME_WITH_CHIELD_COUNT'
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
      object tlGroupsVALID: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'VALID'
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object tlGroupsONLY_NAME: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'NAME'
        Position.ColIndex = 5
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
  end
  inherited fibdsMainList: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    D.ID,'
      '    D.PARENT_ID,'
      '    D.NAME,'
      '    D.ITEM_TYPE,'
      '    D.CHIEF_ID,'
      '    D.CHIEF_JOB_ID,'
      '    D.VALID,'
      '    D.COMMENTS'
      'FROM'
      '    DEPARTMENTS D'
      'WHERE (D.PARENT_ID=:ID) @WHERE '
      'order by 4,3')
    AutoUpdateOptions.UpdateTableName = 'DEPARTMENTS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_DEPARTMENTS_ID'
    AfterOpen = fibdsMainListAfterOpen
    BeforeOpen = fibdsMainListBeforeOpen
    DataSource = dsDepartaments
    Left = 69
    object fibdsMainListID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainListPARENT_ID: TFIBIntegerField
      FieldName = 'PARENT_ID'
    end
    object fibdsMainListNAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainListITEM_TYPE: TFIBIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'ITEM_TYPE'
    end
    object fibdsMainListCHIEF_JOB_ID: TFIBIntegerField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103
      FieldName = 'CHIEF_JOB_ID'
    end
    object fibdsMainListCHIEF_ID: TFIBIntegerField
      DisplayLabel = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
      FieldName = 'CHIEF_ID'
      OnValidate = fibdsMainListCHIEF_IDValidate
    end
    object fibdsMainListVALID: TFIBIntegerField
      DisplayLabel = #1044#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1086#1077
      FieldName = 'VALID'
    end
    object fibdsMainListCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 200
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
  end
  inherited dsMainList: TDataSource
    Left = 69
  end
  object fibdsDepartments: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    D.ID,'
      '    D.PARENT_ID,'
      '    D.CHILD_COUNT,'
      '    D.NAME,'
      '    D.ITEM_TYPE,'
      '    D.VALID'
      'FROM'
      '    DEPARTMENTS D')
    AutoUpdateOptions.UpdateTableName = 'DEPARTMENTS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_DEPARTMENTS_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterOpen = fibdsDepartmentsAfterOpen
    BeforeScroll = fibdsDepartmentsBeforeScroll
    OnCalcFields = fibdsDepartmentsCalcFields
    AllowedUpdateKinds = [ukModify, ukInsert]
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
    object fibdsDepartmentsID: TFIBIntegerField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object fibdsDepartmentsPARENT_ID: TFIBIntegerField
      FieldName = 'PARENT_ID'
      ReadOnly = True
    end
    object fibdsDepartmentsNAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      ReadOnly = True
      Required = True
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsDepartmentsITEM_TYPE: TFIBIntegerField
      DefaultExpression = '1'
      FieldName = 'ITEM_TYPE'
      ReadOnly = True
    end
    object fibdsDepartmentsCHILD_COUNT: TFIBIntegerField
      FieldName = 'CHILD_COUNT'
    end
    object fibdsDepartmentsNAME_WITH_CHIELD_COUNT: TStringField
      FieldKind = fkCalculated
      FieldName = 'NAME_WITH_CHIELD_COUNT'
      Size = 110
      Calculated = True
    end
    object fibdsDepartmentsVALID: TFIBIntegerField
      FieldName = 'VALID'
    end
  end
  object dsDepartaments: TDataSource
    DataSet = fibdsDepartments
    Left = 40
    Top = 90
  end
  object fibdsSearch: TpFIBDataSet
    SelectSQL.Strings = (
      'select D.ID, D.NAME, D.PARENT_ID'
      'from DEPARTMENTS D'
      'where (UPPER(D.NAME) like :NAME)'
      'order by 2')
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AllowedUpdateKinds = []
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
    object fibdsSearchNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsSearchPARENT_ID: TFIBIntegerField
      FieldName = 'PARENT_ID'
    end
  end
  object dsSearch: TDataSource
    DataSet = fibdsSearch
    Left = 98
    Top = 90
  end
  object fibdsItemTypes: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DEPARTMENTS'
      'SET '
      '    PARENT_ID = :PARENT_ID,'
      '    NAME = :NAME,'
      '    CHIEF_ID = :CHIEF_ID,'
      '    VALID = :VALID,'
      '    COMMENTS = :COMMENTS'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    DEPARTMENTS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO DEPARTMENTS('
      '    ID,'
      '    PARENT_ID,'
      '    NAME,'
      '    CHIEF_ID,'
      '    VALID,'
      '    COMMENTS'
      ')'
      'VALUES('
      '    :ID,'
      '    :PARENT_ID,'
      '    :NAME,'
      '    :CHIEF_ID,'
      '    :VALID,'
      '    :COMMENTS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    D.ID,'
      '    D.PARENT_ID,'
      '    D.NAME,'
      '    D.CHIEF_ID,'
      '    D.VALID,'
      '    D.COMMENTS'
      'FROM'
      '    DEPARTMENTS D'
      ' WHERE '
      '        D.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT 0 ID, cast('#39#1054#1073#1097#1072#1103' '#1089#1090#1088#1091#1082#1090#1091#1088#1072#39' as varchar(16)) NAME'
      'FROM rdb$database'
      'union'
      'SELECT 1, cast('#39#1054#1090#1076#1077#1083#1077#1085#1080#1077#39' as varchar(16))'
      'FROM rdb$database'
      'union'
      'SELECT 2,cast('#39#1050#1072#1089#1089#1072#39' as varchar(16))'
      'FROM rdb$database')
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AllowedUpdateKinds = []
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
    object fibdsItemTypesID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsItemTypesNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 10
      EmptyStrToNull = True
    end
  end
  object dsItemTypes: TDataSource
    DataSet = fibdsItemTypes
    OnStateChange = dsMainListStateChange
    Left = 40
    Top = 148
  end
end
