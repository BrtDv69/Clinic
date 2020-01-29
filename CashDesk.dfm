inherited frmCashDesk: TfrmCashDesk
  Left = 278
  Top = 250
  Caption = #1050#1074#1080#1090#1072#1085#1094#1080#1080' '#1086#1087#1083#1072#1090#1099
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Height = 396
    ClientRectBottom = 396
    ClientRectRight = 686
    ClientRectTop = 0
    inherited tsList: TcxTabSheet
      inherited dxBarDockControl1: TdxBarDockControl
        Height = 393
      end
      inherited grdMainList: TcxGrid
        Height = 393
        inherited tvMainList: TcxGridDBTableView
          OptionsData.DeletingConfirmation = False
          OptionsView.ColumnAutoWidth = True
          Preview.Column = tvMainListCOMMENTS
          Styles.IncSearch = nil
          Styles.Header = nil
          Styles.Preview = nil
          object tvMainListRECEIPT_NUMBER: TcxGridDBColumn
            DataBinding.FieldName = 'RECEIPT_NUMBER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            SortIndex = 0
            SortOrder = soAscending
            Width = 106
          end
          object tvMainListRECEIPT_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'RECEIPT_DATE'
            Visible = False
          end
          object tvMainListCUSTOMER_FIO: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER_FIO'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 340
          end
          object tvMainListAMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'RELATIVE_AMOUNT'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 87
          end
          object tvMainListCOMMENTS: TcxGridDBColumn
            DataBinding.FieldName = 'COMMENTS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMainListDEPARTMENT_ID: TcxGridDBColumn
            DataBinding.FieldName = 'DEPARTMENT_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListSource = frmDM.dsDepartments
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMainListKKM: TcxGridDBColumn
            Caption = #1063#1077#1082' '#1087#1088#1086#1073#1080#1090
            DataBinding.FieldName = 'KKM'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            HeaderAlignmentHorz = taCenter
          end
        end
      end
    end
    inherited tsDetail: TcxTabSheet
      inherited dxBarDockControl2: TdxBarDockControl
        Height = 393
      end
      inherited Panel4: TPanel
        Height = 393
        inherited Panel1: TPanel
          Top = 334
          inherited dbmComments: TcxDBMemo
            Style.IsFontAssigned = True
          end
        end
        inherited cxSplitter1: TcxSplitter
          Top = 326
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 659
          Height = 77
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          OnEnter = Panel2Enter
          DesignSize = (
            659
            77)
          object cxLabel4: TcxLabel
            Left = 10
            Top = 48
            Caption = #1055#1088#1080#1085#1103#1090#1086' '#1086#1090':'
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object lblNumberDate: TcxLabel
            Left = 10
            Top = 28
            Caption = #1050#1074#1080#1090#1072#1085#1094#1080#1103' '#8470' '#1086#1090' '
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 86
            Top = 45
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'CUSTOMER_FIO'
            DataBinding.DataSource = dsMain
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 347
          end
          object cxLabel1: TcxLabel
            Left = 41
            Top = 8
            Caption = #1050#1072#1089#1089#1072':'
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cbOrderType: TcxDBLookupComboBox
            Left = 86
            Top = 5
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'DEPARTMENT_ID'
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
            Properties.ListSource = dsReceipts
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 347
          end
          object lblKKM: TcxLabel
            Left = 589
            Top = 0
            Align = alRight
            AutoSize = False
            Caption = #1050#1072#1089#1089#1086#1074#1099#1081' '#1095#1077#1082' '#1087#1088#1086#1073#1080#1090
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Height = 77
            Width = 70
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 504
            Top = 8
            Hint = #1055#1088#1086#1076#1072#1078#1072' ('#1075#1072#1083#1086#1095#1082#1072') '#1080#1083#1080#13#1042#1086#1079#1074#1088#1072#1090' '#1087#1088#1086#1076#1072#1078#1080' ('#1075#1072#1083#1086#1095#1082#1072' '#1091#1073#1088#1072#1085#1072')'
            Anchors = [akTop, akRight]
            Caption = #1055#1088#1086#1076#1072#1078#1072
            DataBinding.DataField = 'IS_INCOME'
            DataBinding.DataSource = dsMain
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = -1
            TabOrder = 6
            Width = 77
          end
        end
        object grdMainBody: TcxGrid
          Left = 0
          Top = 77
          Width = 659
          Height = 249
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnEnter = grdMainBodyEnter
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object tvMainBody: TcxGridDBTableView
            DragMode = dmAutomatic
            NavigatorButtons.ConfirmDelete = False
            OnCustomDrawCell = tvMainBodyCustomDrawCell
            OnEditing = tvMainBodyEditing
            DataController.DataSource = dsMainBody
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = tvMainBodyAMOUNT
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
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Preview.Column = tvMainBodyCOMMENTS
            Preview.Visible = True
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            object tvMainBodyPRICE_LIST_ID: TcxGridDBColumn
              DataBinding.FieldName = 'PRICE_LIST_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ClearKey = 46
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME_WITH_DEPT'
                end>
              Properties.ListOptions.AnsiSort = True
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsPriceList
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 446
            end
            object tvMainBodyPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'PRICE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 61
            end
            object tvMainBodyCOMMENTS: TcxGridDBColumn
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvMainBodyQUANTITY: TcxGridDBColumn
              DataBinding.FieldName = 'QUANTITY'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 63
            end
            object tvMainBodyAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'AMOUNT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Focusing = False
              Width = 76
            end
            object tvMainBodyCAN_EDIT_PRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CAN_EDIT_PRICE'
              Visible = False
              Hidden = True
            end
          end
          object lvMainBody: TcxGridLevel
            GridView = tvMainBody
          end
        end
      end
    end
  end
  object mmKKMLog: TcxMemo [1]
    Left = 0
    Top = 396
    Align = alBottom
    Properties.ReadOnly = True
    Properties.ScrollBars = ssVertical
    TabOrder = 5
    Visible = False
    Height = 53
    Width = 711
  end
  inherited dsMainList: TDataSource
    Top = 186
  end
  inherited dsMain: TDataSource
    Top = 186
  end
  inherited cxGridPopupMenu1: TcxGridPopupMenu
    Top = 157
  end
  inherited trMain: TpFIBTransaction
    Top = 128
  end
  inherited fibdsMainList: TpFIBDataSet
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      '    R.ID,'
      '    R.DEPARTMENT_ID,'
      '    R.RECEIPT_NUMBER,'
      '    R.RECEIPT_DATE,'
      '    R.CUSTOMER_FIO,'
      '    R.AMOUNT,'
      '    R.COMMENTS,'
      '    R.KKM,'
      '    R.IS_INCOME'
      'FROM'
      '    RECEIPTS R'
      'WHERE (R.RECEIPT_DATE=current_date)'
      'ORDER BY 4,3 ')
    AutoUpdateOptions.GeneratorName = 'GEN__ID'
    OnCalcFields = fibdsMainListCalcFields
    AllowedUpdateKinds = []
    Top = 157
    object fibdsMainListID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainListDEPARTMENT_ID: TFIBIntegerField
      DisplayLabel = #1050#1072#1089#1089#1072
      FieldName = 'DEPARTMENT_ID'
    end
    object fibdsMainListRECEIPT_NUMBER: TFIBIntegerField
      DisplayLabel = #8470
      FieldName = 'RECEIPT_NUMBER'
    end
    object fibdsMainListRECEIPT_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'RECEIPT_DATE'
    end
    object fibdsMainListCUSTOMER_FIO: TFIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'CUSTOMER_FIO'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainListAMOUNT: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object fibdsMainListCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainListKKM: TFIBIntegerField
      FieldName = 'KKM'
    end
    object fibdsMainListIS_INCOME: TFIBSmallIntField
      FieldName = 'IS_INCOME'
    end
    object fibdsMainListRELATIVE_AMOUNT: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldKind = fkCalculated
      FieldName = 'RELATIVE_AMOUNT'
      DisplayFormat = '#,##0.00'
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
            Item = sbPrintList
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
            Item = dxBarSubItem6
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
    Top = 128
    DockControlHeights = (
      0
      0
      0
      0)
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
    inherited sbPrint: TdxBarButton
      OnClick = sbPrintClick
    end
    object sbPrintList: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 11
      OnClick = sbPrintListClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarSubItem6: TdxBarSubItem
      Category = 0
      Visible = ivAlways
      ImageIndex = 11
      ItemLinks = <
        item
          Item = dxBarButton6
          Visible = True
        end
        item
          Item = dxBarButton3
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton4
          Visible = True
        end
        item
          Item = dxBarButton5
          Visible = True
        end>
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1086#1074#1090#1086#1088' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1095#1077#1082#1072
      Category = 0
      Hint = #1055#1086#1074#1090#1086#1088' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1095#1077#1082#1072
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1057#1091#1090#1086#1095#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1073#1077#1079' '#1075#1072#1096#1077#1085#1080#1103
      Category = 0
      Hint = #1057#1085#1103#1090#1100' '#1089#1091#1090#1086#1095#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1073#1077#1079' '#1075#1072#1096#1077#1085#1080#1103
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1057#1091#1090#1086#1095#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1089' '#1075#1072#1096#1077#1085#1080#1077#1084
      Category = 0
      Hint = #1057#1085#1103#1090#1100' '#1089#1091#1090#1086#1095#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1089' '#1075#1072#1096#1077#1085#1080#1077#1084
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1095#1077#1082#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1082#1072#1089#1089#1086#1074#1086#1075#1086' '#1095#1077#1082#1072
      Visible = ivAlways
      OnClick = sbPrintClick
    end
  end
  inherited fibdsMain: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    R.ID,'
      '    R.DEPARTMENT_ID,'
      '    R.RECEIPT_NUMBER,'
      '    R.RECEIPT_DATE,'
      '    R.CUSTOMER_FIO,'
      '    R.COMMENTS,'
      '    R.KKM,'
      '    R.IS_INCOME'
      'FROM'
      '    RECEIPTS R'
      'WHERE (R.ID=:ID)')
    CacheModelOptions.BufferChunks = 2
    AutoUpdateOptions.UpdateTableName = 'RECEIPTS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_RECEIPTS_ID'
    AutoUpdateOptions.AutoParamsToFields = False
    AfterOpen = fibdsMainAfterOpen
    OnNewRecord = fibdsMainNewRecord
    Top = 157
    object fibdsMainID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainDEPARTMENT_ID: TFIBIntegerField
      FieldName = 'DEPARTMENT_ID'
    end
    object fibdsMainRECEIPT_NUMBER: TFIBIntegerField
      FieldName = 'RECEIPT_NUMBER'
    end
    object fibdsMainRECEIPT_DATE: TFIBDateField
      FieldName = 'RECEIPT_DATE'
    end
    object fibdsMainCUSTOMER_FIO: TFIBStringField
      FieldName = 'CUSTOMER_FIO'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainKKM: TFIBIntegerField
      FieldName = 'KKM'
      OnChange = fibdsMainKKMChange
    end
    object fibdsMainIS_INCOME: TFIBSmallIntField
      FieldName = 'IS_INCOME'
    end
  end
  object fibdsReceipts: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'select D.ID, D.NAME'
      'from DEPARTMENTS D'
      'where (D.ITEM_TYPE=2)'
      'order by 2')
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    OnCalcFields = fibdsPriceListCalcFields
    AllowedUpdateKinds = []
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 69
    Top = 215
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsReceiptsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsReceiptsNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsReceipts: TDataSource
    DataSet = fibdsReceipts
    Left = 69
    Top = 244
  end
  object dsMainBody: TDataSource
    DataSet = fibdsMainBody
    OnStateChange = dsMainStateChange
    Left = 98
    Top = 186
  end
  object fibdsPriceList: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      
        'select GS.NAME GOODS_SERVICES_NAME, D.NAME DEPARTMENT_NAME, PL.P' +
        'RICE, PL.CAN_EDIT_PRICE, PL.ID'
      'from PRICE_LIST PL, DEPARTMENTS D, GOODS_SERVICES GS'
      'where (PL.START_DATE=(select first 1 PL2.START_DATE'
      '                        from PRICE_LIST PL2'
      
        '                       where (PL2.GOOD_SERVICE_ID=PL.GOOD_SERVIC' +
        'E_ID) and'
      
        '                             (PL2.DEPARTMENT_ID=PL.DEPARTMENT_ID' +
        ') and'
      '                             (PL2.START_DATE!>:RECEIPT_DATE)'
      '                       order by 1 desc)) and'
      
        '      (GS.ID=PL.GOOD_SERVICE_ID) and (D.ID=PL.DEPARTMENT_ID) and' +
        ' (PL.VALID=1) and (GS.VALID=1)'
      'order by 1,2')
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    OnCalcFields = fibdsPriceListCalcFields
    AllowedUpdateKinds = []
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 98
    Top = 215
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsPriceListID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsPriceListGOODS_SERVICES_NAME: TFIBStringField
      FieldName = 'GOODS_SERVICES_NAME'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsPriceListDEPARTMENT_NAME: TFIBStringField
      FieldName = 'DEPARTMENT_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsPriceListPRICE: TFIBFloatField
      FieldName = 'PRICE'
    end
    object fibdsPriceListNAME_WITH_DEPT: TStringField
      DisplayWidth = 300
      FieldKind = fkCalculated
      FieldName = 'NAME_WITH_DEPT'
      Size = 300
      Calculated = True
    end
    object fibdsPriceListCAN_EDIT_PRICE: TFIBIntegerField
      FieldName = 'CAN_EDIT_PRICE'
    end
  end
  object dsPriceList: TDataSource
    DataSet = fibdsPriceList
    Left = 98
    Top = 244
  end
  object trLock: TpFIBTransaction
    DefaultDatabase = frmDM.dbMain
    TimeoutAction = TARollback
    TRParams.Strings = (
      'consistency'
      'lock_write=RECEIPTS_LOCK'
      'exclusive'
      'wait')
    TPBMode = tpbDefault
    Left = 69
    Top = 128
  end
  object fibdsMainBody: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    RB.ID,'
      '    RB.RECEIPT_ID,'
      '    RB.PRICE_LIST_ID,'
      '    RB.QUANTITY,'
      '    RB.PRICE,'
      '    RB.COMMENTS'
      'FROM'
      '    RECEIPT_BODIES RB'
      'WHERE (RB.RECEIPT_ID=:ID)')
    AutoUpdateOptions.UpdateTableName = 'RECEIPT_BODIES'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_RECEIPT_BODIES_ID'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = fibdsMainAfterDelete
    OnCalcFields = fibdsMainBodyCalcFields
    Transaction = trMain
    Database = frmDM.dbMain
    SQLScreenCursor = crSQLWait
    DataSource = dsMain
    Left = 98
    Top = 157
    poSetRequiredFields = True
    poSetReadOnlyFields = True
    poSQLINT64ToBCD = True
    oRefreshAfterPost = False
    oStartTransaction = False
    oFetchAll = True
    object fibdsMainBodyID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainBodyRECEIPT_ID: TFIBIntegerField
      FieldName = 'RECEIPT_ID'
    end
    object fibdsMainBodyPRICE_LIST_ID: TFIBIntegerField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      FieldName = 'PRICE_LIST_ID'
      OnChange = fibdsMainBodyPRICE_LIST_IDChange
    end
    object fibdsMainBodyQUANTITY: TFIBIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'QUANTITY'
    end
    object fibdsMainBodyPRICE: TFIBFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object fibdsMainBodyCOMMENTS: TFIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainBodyAMOUNT: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldKind = fkCalculated
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object fibdsMainBodyCAN_EDIT_PRICE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CAN_EDIT_PRICE'
      LookupDataSet = fibdsPriceList
      LookupKeyFields = 'ID'
      LookupResultField = 'CAN_EDIT_PRICE'
      KeyFields = 'PRICE_LIST_ID'
      Lookup = True
    end
  end
end
