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
unit untEasyfrxQRCodeRTTI;

interface

{$I frx.inc}

implementation

uses
  Windows, Classes, SysUtils, Forms, fs_iinterpreter, untEasyfrxQRCode, frxClassRTTI
{$IFDEF Delphi6}
, Variants
{$ENDIF};

type
  TEasyQRFunctions = class(TfsRTTIModule)
  public
    constructor Create(AScript: TfsScript); override;
  end;

{ TFunctions }

constructor TEasyQRFunctions.Create(AScript: TfsScript);
begin
  inherited Create(AScript);
  with AScript do
  begin
    AddClass(TEasyfrxQRBarcodeView, 'TfrxView');
  end;
end;

initialization
  fsRTTIModules.Add(TEasyQRFunctions);

finalization
  if fsRTTIModules <> nil then
    fsRTTIModules.Remove(TEasyQRFunctions);

end.
