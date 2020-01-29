inherited frmJobs: TfrmJobs
  Left = 68
  Top = 168
  Width = 540
  Height = 371
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1086#1083#1078#1085#1086#1089#1090#1077#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 505
    Height = 344
    inherited grdMainList: TcxGrid
      Width = 505
      Height = 277
      inherited tvMainList: TcxGridDBTableView
        DataController.DataSource = dsMainList
        OptionsCustomize.ColumnsQuickCustomization = False
        OptionsView.ColumnAutoWidth = True
        Preview.Column = tvMainListCOMMENTS
        Styles.IncSearch = nil
        Styles.Header = nil
        Styles.Preview = nil
        object tvMainListNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
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
    inherited Panel1: TPanel
      Top = 285
      Width = 505
      inherited Label339: TLabel
        Width = 505
      end
      inherited dbmComments: TcxDBMemo
        Width = 505
      end
    end
    inherited cxSplitter1: TcxSplitter
      Top = 277
      Width = 505
    end
  end
  inherited fibdsMainList: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE JOBS'
      'SET '
      '    NAME = :NAME,'
      '    COMMENTS = :COMMENTS'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    JOBS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO JOBS('
      '    ID,'
      '    NAME,'
      '    COMMENTS'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME,'
      '    :COMMENTS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    J.ID,'
      '    J.NAME,'
      '    J.COMMENTS'
      'FROM'
      '    JOBS J'
      ' WHERE '
      '        J.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    J.ID,'
      '    J.NAME,'
      '    J.COMMENTS'
      'FROM'
      '    JOBS J')
    AutoUpdateOptions.UpdateTableName = 'JOBS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_JOBS_ID'
    object fibdsMainListID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainListNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fibdsMainListCOMMENTS: TFIBStringField
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
    inherited sbRefresh: TdxBarButton
      OnClick = sbRefreshClick
    end
    inherited sbApply: TdxBarButton
      OnClick = sbApplyClick
    end
    inherited sbCancel: TdxBarButton
      OnClick = sbCancelClick
    end
  end
end
