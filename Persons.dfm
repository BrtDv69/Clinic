inherited frmPersons: TfrmPersons
  Left = 4
  Top = 143
  Width = 784
  Height = 397
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 749
    Height = 370
    inherited grdMainList: TcxGrid
      Width = 749
      Height = 303
      inherited tvMainList: TcxGridDBTableView
        DataController.DataSource = dsMainList
        OptionsCustomize.ColumnHiding = True
        OptionsView.ColumnAutoWidth = True
        Preview.Column = tvMainListCOMMENTS
        Styles.IncSearch = nil
        Styles.Header = nil
        Styles.Preview = nil
        object tvMainListSURNAME: TcxGridDBColumn
          DataBinding.FieldName = 'SURNAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 124
        end
        object tvMainListNAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 89
        end
        object tvMainListSECOND_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'SECOND_NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 139
        end
        object tvMainListSEX: TcxGridDBColumn
          DataBinding.FieldName = 'SEX'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            #1052
            #1046)
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '('#1084' | '#1052') | ('#1078' | '#1046')o?'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 58
        end
        object tvMainListBIRTHDAY: TcxGridDBColumn
          DataBinding.FieldName = 'BIRTHDAY'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 96
        end
        object tvMainListTABLE_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'TABLE_NUMBER'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 72
        end
        object tvMainListPENS_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'PENS_NUMBER'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 106
        end
        object tvMainListVALID: TcxGridDBColumn
          DataBinding.FieldName = 'VALID'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1056#1072#1073#1086#1090#1072#1077#1090
          Properties.DisplayUnchecked = #1053#1077' '#1088#1072#1073#1086#1090#1072#1077#1090
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 51
        end
        object tvMainListCOMMENTS: TcxGridDBColumn
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
    end
    inherited Panel1: TPanel
      Top = 311
      Width = 749
      inherited Label339: TLabel
        Width = 749
      end
      inherited dbmComments: TcxDBMemo
        Width = 749
      end
    end
    inherited cxSplitter1: TcxSplitter
      Top = 303
      Width = 749
    end
  end
  inherited fibdsMainList: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    P.ID,'
      '    P.NAME,'
      '    P.SURNAME,'
      '    P.SECOND_NAME,'
      '    P.SEX,'
      '    P.BIRTHDAY,'
      '    P.TABLE_NUMBER,'
      '    P.PENS_NUMBER,'
      '    P.VALID,'
      '    P.COMMENTS'
      'FROM'
      '    PERSONS P')
    AutoUpdateOptions.UpdateTableName = 'PERSONS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_PERSONS_ID'
    AutoUpdateOptions.AutoParamsToFields = False
    object fibdsMainListID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fibdsMainListNAME: TFIBStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'NAME'
      Size = 30
      EmptyStrToNull = False
    end
    object fibdsMainListSURNAME: TFIBStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'SURNAME'
      Size = 30
      EmptyStrToNull = False
    end
    object fibdsMainListSECOND_NAME: TFIBStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      FieldName = 'SECOND_NAME'
      Size = 30
      EmptyStrToNull = False
    end
    object fibdsMainListSEX: TFIBStringField
      DisplayLabel = #1055#1086#1083
      FieldName = 'SEX'
      Size = 1
      EmptyStrToNull = False
    end
    object fibdsMainListBIRTHDAY: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'BIRTHDAY'
    end
    object fibdsMainListTABLE_NUMBER: TFIBIntegerField
      DisplayLabel = #1058#1072#1073'.'#8470
      FieldName = 'TABLE_NUMBER'
    end
    object fibdsMainListPENS_NUMBER: TFIBIntegerField
      DisplayLabel = #8470' '#1087#1077#1085#1089#1080#1086#1085#1085#1086#1075#1086' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1103
      FieldName = 'PENS_NUMBER'
    end
    object fibdsMainListVALID: TFIBIntegerField
      DisplayLabel = #1056#1072#1073#1086#1090#1072#1077#1090
      FieldName = 'VALID'
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
            Item = dxBarButton1
            Visible = True
          end
          item
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
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 173
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
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ImageIndex = 10
    end
  end
  inherited cxGridPopupMenu1: TcxGridPopupMenu
    Left = 224
    Top = 80
  end
end
