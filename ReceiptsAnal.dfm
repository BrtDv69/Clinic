inherited frmReceiptsAnal: TfrmReceiptsAnal
  Left = 83
  Top = 149
  Caption = #1040#1085#1072#1083#1080#1079' '#1082#1074#1080#1090#1072#1085#1094#1080#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited grdMainList: TcxGrid
      Left = 249
      Top = 32
      Width = 435
      Height = 350
      inherited tvMainList: TcxGridDBTableView
        DataController.DataSource = dsMainList
        DataController.KeyFieldNames = 'NAME;DEPARTMENT_ID'
        DataController.Summary.DefaultGroupSummaryItems.BeginText = ' - '
        DataController.Summary.DefaultGroupSummaryItems.EndText = '.'
        DataController.Summary.DefaultGroupSummaryItems.Separator = ''
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = #1054#1082#1072#1079#1072#1085#1086' #,##0 '#1091#1089#1083#1091#1075
            Kind = skSum
            Column = tvMainListQUANTITY
          end
          item
            Format = #1085#1072' '#1086#1073#1097#1091#1102' '#1089#1091#1084#1084#1091' #,##0.00'#1088'.'
            Kind = skSum
            Column = tvMainListAMOUNT
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = tvMainListAMOUNT
          end
          item
            Format = '#,##0'
            Kind = skSum
            Column = tvMainListQUANTITY
          end>
        OptionsCustomize.ColumnGrouping = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Styles.IncSearch = nil
        Styles.Header = nil
        Styles.Preview = nil
        object tvMainListNAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 170
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
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 124
        end
        object tvMainListQUANTITY: TcxGridDBColumn
          DataBinding.FieldName = 'QUANTITY'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Filtering = False
          Width = 56
        end
        object tvMainListAMOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'AMOUNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Filtering = False
        end
      end
    end
    inherited Panel1: TPanel
      Visible = False
      inherited dbmComments: TcxDBMemo
        DataBinding.DataField = ''
        DataBinding.DataSource = nil
      end
    end
    inherited cxSplitter1: TcxSplitter
      Visible = False
    end
    object tlGroups: TcxDBTreeList
      Left = 0
      Top = 32
      Width = 241
      Height = 350
      Styles.StyleSheet = frmDM.cxTreeListStyleSheet1
      Align = alLeft
      Bands = <
        item
        end>
      BufferedPaint = False
      DataController.DataSource = dsGoodsServices
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
      TabOrder = 3
      object tlGroupsNAME: TcxDBTreeListColumn
        Caption.AlignHorz = taCenter
        Caption.AlignVert = vaCenter
        Caption.Text = #1043#1088#1091#1087#1087#1099
        DataBinding.FieldName = 'NAME_WITH_AMOUNT'
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
    end
    object cxSplitter2: TcxSplitter
      Left = 241
      Top = 32
      Width = 8
      Height = 350
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1076#1077#1088#1077#1074#1086' '#1075#1088#1091#1087#1087
      HotZoneClassName = 'TcxMediaPlayer9Style'
      ResizeUpdate = True
      Control = tlGroups
      OnAfterOpen = cxSplitter2AfterOpen
      OnAfterClose = cxSplitter2AfterClose
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 684
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object cxLabel12: TcxLabel
        Left = 10
        Top = 7
        Width = 114
        Height = 19
        Caption = #1055#1077#1088#1080#1086#1076' '#1072#1085#1072#1083#1080#1079#1072': '#1057
        ParentFont = False
        Style.Font.Charset = RUSSIAN_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
      end
      object cxLabel1: TcxLabel
        Left = 219
        Top = 7
        Width = 20
        Height = 19
        Caption = #1055#1086
        ParentFont = False
        Style.Font.Charset = RUSSIAN_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
      end
      object deStart: TcxDateEdit
        Left = 129
        Top = 5
        Width = 80
        Height = 21
        EditValue = 0d
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 2
      end
      object deStop: TcxDateEdit
        Left = 244
        Top = 5
        Width = 80
        Height = 21
        EditValue = 0d
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 3
      end
    end
  end
  inherited trMain: TpFIBTransaction
    TRParams.Strings = (
      'read'
      'read_committed')
    TPBMode = tpbDefault
  end
  inherited fibdsMainList: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select GS.NAME, PL.DEPARTMENT_ID, SUM(RB.QUANTITY) QUANTITY, SUM' +
        '(RB.QUANTITY*RB.PRICE) AMOUNT'
      
        'from RECEIPTS R, RECEIPT_BODIES RB, PRICE_LIST PL, GOODS_SERVICE' +
        'S GS'
      'where (R.RECEIPT_DATE!<:START) and (R.RECEIPT_DATE!>:STOP) and'
      
        '(R.ID=RB.RECEIPT_ID) and (PL.ID=RB.PRICE_LIST_ID) and (PL.GOOD_S' +
        'ERVICE_ID=GS.ID)'
      'and (GS.PARENT_ID=:ID)'
      'group by 1,2')
    DataSource = dsGoodsServices
    BeforeOpen = fibdsGoodsServicesBeforeOpen
    Left = 69
    object fibdsMainListNAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 300
      EmptyStrToNull = True
    end
    object fibdsMainListDEPARTMENT_ID: TFIBIntegerField
      DisplayLabel = #1054#1090#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'DEPARTMENT_ID'
    end
    object fibdsMainListQUANTITY: TFIBBCDField
      DisplayLabel = #1050#1086#1083'.-'#1074#1086
      FieldName = 'QUANTITY'
      DisplayFormat = '#,##0'
      Size = 0
      RoundByScale = True
    end
    object fibdsMainListAMOUNT: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
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
    inherited sbAdd: TdxBarButton
      Visible = ivNever
    end
    inherited sbDelete: TdxBarButton
      Visible = ivNever
    end
    inherited sbApply: TdxBarButton
      Visible = ivNever
    end
    inherited sbCancel: TdxBarButton
      Visible = ivNever
    end
  end
  inherited dsMainList: TDataSource
    Left = 69
  end
  object fibdsGoodsServices: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select GS.ID, GS.PARENT_ID, GS.NAME, GS.COMMENTS, SUM(RB.QUANTIT' +
        'Y*RB.PRICE) AMOUNT'
      
        'from RECEIPTS R, RECEIPT_BODIES RB, PRICE_LIST PL, GOODS_SERVICE' +
        'S GS'
      'where (GS.ITEM_TYPE=0) and (R.RECEIPT_DATE!<:START) and'
      
        '(R.RECEIPT_DATE!>:STOP) and (R.ID=RB.RECEIPT_ID) and (PL.ID=RB.P' +
        'RICE_LIST_ID) and'
      
        '(PL.GOOD_SERVICE_ID in (select GGSH.ID from GET_GOOD_SERVICE_CHI' +
        'LDREN(GS.ID) GGSH where (GGSH.ITEM_TYPE=1)))'
      'group by 1,2,3,4')
    AutoUpdateOptions.KeyFields = 'ID'
    BeforeOpen = fibdsGoodsServicesBeforeOpen
    OnCalcFields = fibdsGoodsServicesCalcFields
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
    object fibdsGoodsServicesID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsGoodsServicesPARENT_ID: TFIBIntegerField
      FieldName = 'PARENT_ID'
    end
    object fibdsGoodsServicesNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 300
      EmptyStrToNull = False
    end
    object fibdsGoodsServicesCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 100
      EmptyStrToNull = False
    end
    object fibdsGoodsServicesAMOUNT: TFIBFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'#1088'.'
    end
    object fibdsGoodsServicesNAME_WITH_AMOUNT: TFIBStringField
      FieldKind = fkCalculated
      FieldName = 'NAME_WITH_AMOUNT'
      Size = 310
      EmptyStrToNull = False
      Calculated = True
    end
  end
  object dsGoodsServices: TDataSource
    DataSet = fibdsGoodsServices
    Left = 40
    Top = 90
  end
end
