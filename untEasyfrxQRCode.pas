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
unit untEasyfrxQRCode;

interface

{$I frx.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, frxClass
{$IFDEF Delphi6}
, Variants
{$ENDIF};

type
  TEasyfrxQRBarcodeObject = class(TComponent);  // fake component

  TEasyfrxQRBarcodeView = class(TfrxView)
  private
    FEccLevel: SmallInt;
    FModule: SmallInt;
    FVersion: SmallInt;
    FText: String;
    FExpression: String;
    FLineColor: TColor;
    FBackgroundColor: TColor;
    FXmag: SmallInt;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Draw(Canvas: TCanvas; ScaleX, ScaleY, OffsetX, OffsetY: Extended); override;
    class function GetDescription: String; override;
    procedure GetData; override;
  published
    property Version: SmallInt read FVersion write FVersion default 0;
    property EccLevel: SmallInt read FEccLevel write FEccLevel default 0;
//    property Module: SmallInt read FModule write FModule default 0;
    property DataField;
    property DataSet;
    property DataSetName;
    property Expression: String read FExpression write FExpression;
    property Frame;
    property Text: String read FText write FText;
    property BackgroundColor: TColor read FBackgroundColor write FBackgroundColor default clWhite;
    property LineColor: TColor read FLineColor write FLineColor default clBlack;
    property Xmag: SmallInt read FXmag write FXmag default 3;
  end;

implementation

uses untEasyfrxQRCodeRTTI, frxDsgnIntf, frxRes, frxUtils, untEasyQRCode;

constructor TEasyfrxQRBarcodeView.Create(AOwner: TComponent);
begin
  inherited;
  FBackgroundColor := clWhite;
  FLineColor := clBlack;
  FXmag := 3;
end;

class function TEasyfrxQRBarcodeView.GetDescription: String;
begin
  Result := 'EasyPlate QRBarcode';
end;

procedure TEasyfrxQRBarcodeView.Draw(Canvas: TCanvas; ScaleX, ScaleY, OffsetX,
  OffsetY: Extended);
const
  sFileName = 'QRCode.bmp';
var
  oBmp: TBitmap;
  AQR  : TEasyQRBarCode;
begin
  BeginDraw(Canvas, ScaleX, ScaleY, OffsetX, OffsetY);

  AQR := TEasyQRBarCode.Create(nil);
  try
    AQR.BackColor := FBackgroundColor;
    AQR.BarCodeColor := FLineColor;
    AQR.SymbolPicture := picBMP;
    AQR.Eclevel := FEccLevel;
//    AQR.MO
    AQR.Pxmag := Xmag;
    AQR.Picture.Bitmap.Width := Round(Width);
    AQR.Picture.Bitmap.Height := Round(Height);
    AQR.Code := FText;
    AQR.Picture.SaveToFile(sFileName);
  finally
    AQR.Free;
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


procedure TEasyfrxQRBarcodeView.GetData;
begin
  inherited;

  if IsDataField then
    FText := VarToStr(DataSet.Value[DataField])
  else if FExpression <> '' then
    FText := VarToStr(Report.Calc(FExpression));
end;

initialization
  frxObjects.RegisterObject1(TEasyfrxQRBarcodeView, nil, '', '', 0, 23);

finalization
  frxObjects.UnRegister(TEasyfrxQRBarcodeView);

end.
