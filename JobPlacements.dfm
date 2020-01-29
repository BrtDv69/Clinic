inherited frmJobPlacements: TfrmJobPlacements
  Left = 265
  Top = 131
  Caption = #1047#1072#1085#1080#1084#1072#1077#1084#1099#1077' '#1076#1086#1083#1078#1085#1086#1089#1090#1080
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited grdMainList: TcxGrid
      Left = 249
      Width = 435
      inherited tvMainList: TcxGridDBTableView
        DataController.DataSource = dsMainList
        DataController.KeyFieldNames = 'DEPARTMENT_ID;PERSON_ID;JOB_ID'
        OptionsCustomize.ColumnsQuickCustomization = False
        OptionsView.ColumnAutoWidth = True
        Preview.Column = tvMainListCOMMENTS
        Styles.IncSearch = nil
        Styles.Header = nil
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
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainListPERSON_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PERSON_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'FIO'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = frmDM.dsPersons
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainListJOB_ID: TcxGridDBColumn
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
        end
        object tvMainListCOMMENTS: TcxGridDBColumn
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
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
      DataController.DataSource = dsDepartments
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
        Caption.Text = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
        DataBinding.FieldName = 'NAME_WITH_COUNT'
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
      object tlGroupsWORKER_COUNT: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'WORKER_COUNT'
        Position.ColIndex = 3
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
      OnAfterOpen = cxSplitter2AfterClose
      OnAfterClose = cxSplitter2AfterClose
    end
  end
  inherited fibdsMainList: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    JP.DEPARTMENT_ID,'
      '    JP.PERSON_ID,'
      '    JP.JOB_ID,'
      '    JP.COMMENTS'
      'FROM'
      '    JOB_PLACEMENTS JP'
      '@WHERE')
    AutoUpdateOptions.UpdateTableName = 'JOB_PLACEMENTS'
    AutoUpdateOptions.KeyFields = 'DEPARTMENT_ID;PERSON_ID;JOB_ID'
    AutoUpdateOptions.GeneratorName = 'GEN_JOB_PLACEMENTS_ID'
    AutoUpdateOptions.WhenGetGenID = wgNever
    DataSource = dsDepartments
    AfterOpen = fibdsMainListAfterOpen
    BeforeOpen = fibdsMainListBeforeOpen
    OnNewRecord = fibdsMainListNewRecord
    Left = 69
    object fibdsMainListDEPARTMENT_ID: TFIBIntegerField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'DEPARTMENT_ID'
    end
    object fibdsMainListPERSON_ID: TFIBIntegerField
      DisplayLabel = #1060#1048#1054
      FieldName = 'PERSON_ID'
    end
    object fibdsMainListJOB_ID: TFIBIntegerField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'JOB_ID'
    end
    object fibdsMainListCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = False
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
    SelectSQL.Strings = (
      'SELECT D.ID, D.PARENT_ID, D.NAME, D.VALID, D.COMMENTS,'
      
        '(select count(*) from JOB_PLACEMENTS JP where (JP.DEPARTMENT_ID=' +
        'D.ID)) WORKER_COUNT'
      'FROM DEPARTMENTS D'
      'order by 3')
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    BeforeScroll = fibdsDepartmentsBeforeScroll
    OnCalcFields = fibdsDepartmentsCalcFields
    AllowedUpdateKinds = []
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
    end
    object fibdsDepartmentsPARENT_ID: TFIBIntegerField
      FieldName = 'PARENT_ID'
    end
    object fibdsDepartmentsNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsDepartmentsVALID: TFIBIntegerField
      FieldName = 'VALID'
    end
    object fibdsDepartmentsCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 200
      EmptyStrToNull = True
    end
    object fibdsDepartmentsWORKER_COUNT: TFIBIntegerField
      FieldName = 'WORKER_COUNT'
    end
    object fibdsDepartmentsNAME_WITH_COUNT: TFIBStringField
      DisplayWidth = 110
      FieldKind = fkCalculated
      FieldName = 'NAME_WITH_COUNT'
      Size = 110
      EmptyStrToNull = True
      Calculated = True
    end
  end
  object dsDepartments: TDataSource
    DataSet = fibdsDepartments
    Left = 40
    Top = 90
  end
end
