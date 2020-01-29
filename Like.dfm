object frmLike: TfrmLike
  Left = 81
  Top = 124
  Width = 719
  Height = 476
  Caption = 'frmLike'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object trMain: TpFIBTransaction
    DefaultDatabase = frmDM.dbMain
    TimeoutAction = TARollback
    Left = 40
    Top = 32
  end
end
