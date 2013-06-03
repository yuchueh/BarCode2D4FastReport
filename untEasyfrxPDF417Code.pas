{------------------------------------------------------------------------------
//                       HhfComponents For Delphi 7
//                         一轩软研第三方开发包
//                         @Copyright 2013 hehf
//                   ------------------------------------
//
//            本开发包是公司内部使用部分源码来自WWW,作为开发工具使用任何
//       人不得外泄,否则后果自负.
//
//            使用权限以及相关解释请联系何海锋
//
//            让知识转化成财富财富,让鄙视见鬼去
//
//            网站地址：http://www.YiXuan-SoftWare.com
//            电子邮件：hehaifeng1984@126.com
//                      YiXuan-SoftWare@hotmail.com
//            QQ      ：383530895
//            MSN     ：YiXuan-SoftWare@hotmail.com
//
------------------------------------------------------------------------------}
unit untEasyfrxPDF417Code;

interface

{$I frx.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, frxClass, Vcl.StdCtrls
{$IFDEF Delphi6}
, Variants
{$ENDIF};

type
  TEasyfrxPDF417BarcodeObject = class(TComponent);  // fake component

  TEasyfrxPDF417BarcodeView = class(TfrxView)
  private
    FEccLevel: SmallInt;
    FModule: SmallInt;
    FVersion: SmallInt;
    FText: String;
    FExpression: String;
    FLineColor: TColor;
    FBackgroundColor: TColor;
    FXmag: SmallInt;
    FCaption: String;
    FCaptionLayout: TTextLayout;
    procedure SetCaptionLayout(const Value: TTextLayout);
  public
    constructor Create(AOwner: TComponent); override;
    procedure Draw(Canvas: TCanvas; ScaleX, ScaleY, OffsetX, OffsetY: Extended); override;
    class function GetDescription: String; override;
    procedure GetData; override;
  published
    property Version: SmallInt read FVersion write FVersion default 0;
    property DataField;
    property DataSet;
    property DataSetName;
    property Expression: String read FExpression write FExpression;
    property Frame;
    property Text: String read FText write FText;
    property BackgroundColor: TColor read FBackgroundColor write FBackgroundColor default clWhite;
    property LineColor: TColor read FLineColor write FLineColor default clBlack;
//    property Caption: String read FCaption write FCaption;
//    property CaptionLayout : TTextLayout read FCaptionLayout write SetCaptionLayout
//             default tlBottom;
  end;

implementation

uses untEasyfrxQRCodeRTTI, frxDsgnIntf, frxRes, frxUtils, untEasyBarCode2;

constructor TEasyfrxPDF417BarcodeView.Create(AOwner: TComponent);
begin
  inherited;
  FBackgroundColor := clWhite;
  FLineColor := clBlack;
  FCaption := '';
  FCaptionLayout := tlBottom;
end;

class function TEasyfrxPDF417BarcodeView.GetDescription: String;
begin
  Result := 'EasyPlate PDF417Barcode';
end;

procedure TEasyfrxPDF417BarcodeView.SetCaptionLayout(const Value: TTextLayout);
begin
  FCaptionLayout := Value;
end;

procedure TEasyfrxPDF417BarcodeView.Draw(Canvas: TCanvas; ScaleX, ScaleY, OffsetX,
  OffsetY: Extended);
const
  sFileName = 'PDF417Code.bmp';
var
  oBmp: TBitmap;
  APSBC: TEasyPDF417Barcode;
begin
  BeginDraw(Canvas, ScaleX, ScaleY, OffsetX, OffsetY);

  APSBC := TEasyPDF417Barcode.Create(nil);
  try
    APSBC.BackgroundColor := FBackgroundColor;
    APSBC.Color := FLineColor;
    APSBC.Caption := FCaption;
    if Width < 273 then
      APSBC.Width := 273
    else
      APSBC.Width := Round(Width);
    if Height < 81 then
      APSBC.Height := 81
    else
      APSBC.Height := Round(Height);
    APSBC.Code := FText;
    APSBC.SaveToFile(sFileName);
  finally
    APSBC.Free;
  end;

  if FileExists(sFileName) then
  begin
    oBmp := TBitmap.Create;
    try
      oBmp.LoadFromFile(sFileName);
      frxDrawGraphic(Canvas, Rect(FX, FY, FX1, FY1), oBmp, IsPrinting, False, False, 0);
    finally
      FreeAndNil(oBmp);
      DeleteFile(sFileName);
    end;
  end;

  DrawFrame;
end;

procedure TEasyfrxPDF417BarcodeView.GetData;
begin
  inherited;

  if IsDataField then
    FText := VarToStr(DataSet.Value[DataField])
  else if FExpression <> '' then
    FText := VarToStr(Report.Calc(FExpression));
end;

initialization
  frxObjects.RegisterObject1(TEasyfrxPDF417BarcodeView, nil, '', '', 0, 23);

finalization
  frxObjects.UnRegister(TEasyfrxPDF417BarcodeView);

end.
