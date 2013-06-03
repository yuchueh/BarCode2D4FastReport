{------------------------------------------------------------------------------
//                       HhfComponents For Delphi 7                          
//                         一轩软研第三方开发包                         
//                         @Copyright 2009 hehf                      
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
{
ECC200原始出处是 DataMatrix，官方网址在
http://www.neodynamic.com/barcodes/DataMatrix_Barcode.aspx
}
unit untEasyECC200;

interface

uses
  DateUtils;
  
type 
 
  TByteArray = array of byte; 
 
  TECC200Size = ( 
    ecc200_Autosize, 
    ecc200_10x10, 
    ecc200_12x12, 
    ecc200_14x14, 
    ecc200_16x16, 
    ecc200_18x18, 
    ecc200_20x20, 
    ecc200_22x22, 
    ecc200_24x24, 
    ecc200_26x26, 
    ecc200_32x32, 
    ecc200_36x36, 
    ecc200_40x40, 
    ecc200_44x44, 
    ecc200_48x48, 
    ecc200_52x52, 
    ecc200_64x64, 
    ecc200_72x72, 
    ecc200_80x80, 
    ecc200_88x88, 
    ecc200_96x96, 
    ecc200_104x104, 
    ecc200_120x120, 
    ecc200_132x132, 
    ecc200_144x144, 
    ecc200_8x18, 
    ecc200_8x32, 
    ecc200_12x26, 
    ecc200_12x36, 
    ecc200_16x36, 
    ecc200_16x48); 
 
    TECC200Shape = (ecc200_Square, ecc200_Rectangle); 
 
    TECC200SymbolParam = record 
      Size : TECC200Size; 
      Rows, 
      Cols, 
      RegionRows, 
      RegionCols, 
      RegionVCount, 
      RegionHCount, 
      MappingMatrixRows, 
      MappingMatrixCols, 
      DataLength, 
      ErrorLength, 
      BlockDataLength, 
      BlockErrorLength, 
      BlockCount: Integer; 
    end; 
 
var 
  ECC200SymbolParams : array [TECC200Size] of TECC200SymbolParam = ( 
    ( 
      Size :              ecc200_Autosize; 
      Rows :              0; 
      Cols :              0; 
      RegionRows :        0; 
      RegionCols :        0; 
      RegionVCount :      0; 
      RegionHCount :      0; 
      MappingMatrixRows : 0; 
      MappingMatrixCols : 0; 
      DataLength :        0; 
      ErrorLength :       0; 
      BlockDataLength :   0; 
      BlockErrorLength :  0; 
      BlockCount :        0; 
    ), 
    ( 
      Size :              ecc200_10x10; 
      Rows :              10; 
      Cols :              10; 
      RegionRows :        8; 
      RegionCols :        8; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  8; 
      MappingMatrixCols :  8; 
      DataLength :        3; 
      ErrorLength :       5; 
      BlockDataLength :   3; 
      BlockErrorLength :  5; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_12x12; 
      Rows :              12; 
      Cols :              12; 
      RegionRows :        10; 
      RegionCols :        10; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  10; 
      MappingMatrixCols :  10; 
      DataLength :        5; 
      ErrorLength :       7; 
      BlockDataLength :   5; 
      BlockErrorLength :  7; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_14x14; 
      Rows :              14; 
      Cols :              14; 
      RegionRows :        12; 
      RegionCols :        12; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  12; 
      MappingMatrixCols :  12; 
      DataLength :        8; 
      ErrorLength :       10; 
      BlockDataLength :   8; 
      BlockErrorLength :  10; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_16x16; 
      Rows :              16; 
      Cols :              16; 
      RegionRows :        14; 
      RegionCols :        14; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  14; 
      MappingMatrixCols :  14; 
      DataLength :        12; 
      ErrorLength :       12; 
      BlockDataLength :   12; 
      BlockErrorLength :  12; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_18x18; 
      Rows :              18; 
      Cols :              18; 
      RegionRows :        16; 
      RegionCols :        16; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  16; 
      MappingMatrixCols :  16; 
      DataLength :        18; 
      ErrorLength :       14; 
      BlockDataLength :   18; 
      BlockErrorLength :  14; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_20x20; 
      Rows :              20; 
      Cols :              20; 
      RegionRows :        18; 
      RegionCols :        18; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  18; 
      MappingMatrixCols :  18; 
      DataLength :        22; 
      ErrorLength :       18; 
      BlockDataLength :   22; 
      BlockErrorLength :  18; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_22x22; 
      Rows :              22; 
      Cols :              22; 
      RegionRows :        20; 
      RegionCols :        20; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  20; 
      MappingMatrixCols :  20; 
      DataLength :        30; 
      ErrorLength :       20; 
      BlockDataLength :   30; 
      BlockErrorLength :  20; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_24x24; 
      Rows :              24; 
      Cols :              24; 
      RegionRows :        22; 
      RegionCols :        22; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  22; 
      MappingMatrixCols :  22; 
      DataLength :        36; 
      ErrorLength :       24; 
      BlockDataLength :   36; 
      BlockErrorLength :  24; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_26x26; 
      Rows :              26; 
      Cols :              26; 
      RegionRows :        24; 
      RegionCols :        24; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  24; 
      MappingMatrixCols :  24; 
      DataLength :        44; 
      ErrorLength :       28; 
      BlockDataLength :   44; 
      BlockErrorLength :  28; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_32x32; 
      Rows :              32; 
      Cols :              32; 
      RegionRows :        14; 
      RegionCols :        14; 
      RegionVCount :      2; 
      RegionHCount :      2; 
      MappingMatrixRows :  28; 
      MappingMatrixCols :  28; 
      DataLength :        62; 
      ErrorLength :       36; 
      BlockDataLength :   62; 
      BlockErrorLength :  36; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_36x36; 
      Rows :              36; 
      Cols :              36; 
      RegionRows :        16; 
      RegionCols :        16; 
      RegionVCount :      2; 
      RegionHCount :      2; 
      MappingMatrixRows :  32; 
      MappingMatrixCols :  32; 
      DataLength :        86; 
      ErrorLength :       42; 
      BlockDataLength :   86; 
      BlockErrorLength :  42; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_40x40; 
      Rows :              40; 
      Cols :              40; 
      RegionRows :        18; 
      RegionCols :        18; 
      RegionVCount :      2; 
      RegionHCount :      2; 
      MappingMatrixRows :  36; 
      MappingMatrixCols :  36; 
      DataLength :        114; 
      ErrorLength :       48; 
      BlockDataLength :   114; 
      BlockErrorLength :  48; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_44x44; 
      Rows :              44; 
      Cols :              44; 
      RegionRows :        20; 
      RegionCols :        20; 
      RegionVCount :      2; 
      RegionHCount :      2; 
      MappingMatrixRows :  40; 
      MappingMatrixCols :  40; 
      DataLength :        144; 
      ErrorLength :       56; 
      BlockDataLength :   144; 
      BlockErrorLength :  56; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_48x48; 
      Rows :              48; 
      Cols :              48; 
      RegionRows :        22; 
      RegionCols :        22; 
      RegionVCount :      2; 
      RegionHCount :      2; 
      MappingMatrixRows :  44; 
      MappingMatrixCols :  44; 
      DataLength :        174; 
      ErrorLength :       68; 
      BlockDataLength :   174; 
      BlockErrorLength :  68; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_52x52; 
      Rows :              52; 
      Cols :              52; 
      RegionRows :        24; 
      RegionCols :        24; 
      RegionVCount :      2; 
      RegionHCount :      2; 
      MappingMatrixRows :  48; 
      MappingMatrixCols :  48; 
      DataLength :        204; 
      ErrorLength :       84; 
      BlockDataLength :   102; 
      BlockErrorLength :  42; 
      BlockCount :        2; 
    ), 
    ( 
      Size :              ecc200_64x64; 
      Rows :              64; 
      Cols :              64; 
      RegionRows :        14; 
      RegionCols :        14; 
      RegionVCount :      4; 
      RegionHCount :      4; 
      MappingMatrixRows :  56; 
      MappingMatrixCols :  56; 
      DataLength :        280; 
      ErrorLength :       112; 
      BlockDataLength :   140; 
      BlockErrorLength :  56; 
      BlockCount :        2; 
    ), 
    ( 
      Size :              ecc200_72x72; 
      Rows :              72; 
      Cols :              72; 
      RegionRows :        16; 
      RegionCols :        16; 
      RegionVCount :      4; 
      RegionHCount :      4; 
      MappingMatrixRows :  64; 
      MappingMatrixCols :  64; 
      DataLength :        368; 
      ErrorLength :       144; 
      BlockDataLength :   92; 
      BlockErrorLength :  36; 
      BlockCount :        4; 
    ), 
    ( 
      Size :              ecc200_80x80; 
      Rows :              80; 
      Cols :              80; 
      RegionRows :        18; 
      RegionCols :        18; 
      RegionVCount :      4; 
      RegionHCount :      4; 
      MappingMatrixRows :  72; 
      MappingMatrixCols :  72; 
      DataLength :        456; 
      ErrorLength :       192; 
      BlockDataLength :   114; 
      BlockErrorLength :  48; 
      BlockCount :        4; 
    ), 
    ( 
      Size :              ecc200_88x88; 
      Rows :              88; 
      Cols :              88; 
      RegionRows :        20; 
      RegionCols :        20; 
      RegionVCount :      4; 
      RegionHCount :      4; 
      MappingMatrixRows :  80; 
      MappingMatrixCols :  80; 
      DataLength :        576; 
      ErrorLength :       224; 
      BlockDataLength :   144; 
      BlockErrorLength :  56; 
      BlockCount :        4; 
    ), 
    ( 
      Size :              ecc200_96x96; 
      Rows :              96; 
      Cols :              96; 
      RegionRows :        22; 
      RegionCols :        22; 
      RegionVCount :      4; 
      RegionHCount :      4; 
      MappingMatrixRows :  88; 
      MappingMatrixCols :  88; 
      DataLength :        696; 
      ErrorLength :       272; 
      BlockDataLength :   174; 
      BlockErrorLength :  68; 
      BlockCount :        4; 
    ), 
    ( 
      Size :              ecc200_104x104; 
      Rows :              104; 
      Cols :              104; 
      RegionRows :        24; 
      RegionCols :        24; 
      RegionVCount :      4; 
      RegionHCount :      4; 
      MappingMatrixRows :  96; 
      MappingMatrixCols :  96; 
      DataLength :        816; 
      ErrorLength :       336; 
      BlockDataLength :   136; 
      BlockErrorLength :  56; 
      BlockCount :        6; 
    ), 
    ( 
      Size :              ecc200_120x120; 
      Rows :              120; 
      Cols :              120; 
      RegionRows :        18; 
      RegionCols :        18; 
      RegionVCount :      6; 
      RegionHCount :      6; 
      MappingMatrixRows :  108; 
      MappingMatrixCols :  108; 
      DataLength :        1050; 
      ErrorLength :       408; 
      BlockDataLength :   175; 
      BlockErrorLength :  68; 
      BlockCount :        6; 
    ), 
    ( 
      Size :              ecc200_132x132; 
      Rows :              132; 
      Cols :              132; 
      RegionRows :        20; 
      RegionCols :        20; 
      RegionVCount :      6; 
      RegionHCount :      6; 
      MappingMatrixRows :  120; 
      MappingMatrixCols :  120; 
      DataLength :        1304; 
      ErrorLength :       496; 
      BlockDataLength :   163; 
      BlockErrorLength :  62; 
      BlockCount :        8; 
    ), 
    ( 
      Size :              ecc200_144x144; 
      Rows :              144; 
      Cols :              144; 
      RegionRows :        22; 
      RegionCols :        22; 
      RegionVCount :      6; 
      RegionHCount :      6; 
      MappingMatrixRows :  132; 
      MappingMatrixCols :  132; 
      DataLength :        1558; 
      ErrorLength :       620; 
      BlockDataLength :   156; 
      BlockErrorLength :  62; 
      BlockCount :        10; 
    ), 
    ( 
      Size :              ecc200_8x18; 
      Rows :              8; 
      Cols :              18; 
      RegionRows :        6; 
      RegionCols :        16; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  6; 
      MappingMatrixCols :  16; 
      DataLength :        5; 
      ErrorLength :       7; 
      BlockDataLength :   5; 
      BlockErrorLength :  7; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_8x32; 
      Rows :              8; 
      Cols :              32; 
      RegionRows :        6; 
      RegionCols :        14; 
      RegionVCount :      1; 
      RegionHCount :      2; 
      MappingMatrixRows :  6; 
      MappingMatrixCols :  28; 
      DataLength :        10; 
      ErrorLength :       11; 
      BlockDataLength :   10; 
      BlockErrorLength :  11; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_12x26; 
      Rows :              12; 
      Cols :              26; 
      RegionRows :        10; 
      RegionCols :        24; 
      RegionVCount :      1; 
      RegionHCount :      1; 
      MappingMatrixRows :  10; 
      MappingMatrixCols :  24; 
      DataLength :        16; 
      ErrorLength :       14; 
      BlockDataLength :   16; 
      BlockErrorLength :  14; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_12x36; 
      Rows :              12; 
      Cols :              36; 
      RegionRows :        10; 
      RegionCols :        16; 
      RegionVCount :      1; 
      RegionHCount :      2; 
      MappingMatrixRows :  10; 
      MappingMatrixCols :  32; 
      DataLength :        22; 
      ErrorLength :       18; 
      BlockDataLength :   22; 
      BlockErrorLength :  18; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_16x36; 
      Rows :              16; 
      Cols :              36; 
      RegionRows :        14; 
      RegionCols :        16; 
      RegionVCount :      1; 
      RegionHCount :      2; 
      MappingMatrixRows :  14; 
      MappingMatrixCols :  32; 
      DataLength :        32; 
      ErrorLength :       24; 
      BlockDataLength :   32; 
      BlockErrorLength :  24; 
      BlockCount :        1; 
    ), 
    ( 
      Size :              ecc200_16x48; 
      Rows :              16; 
      Cols :              48; 
      RegionRows :        14; 
      RegionCols :        22; 
      RegionVCount :      1; 
      RegionHCount :      2; 
      MappingMatrixRows :  14; 
      MappingMatrixCols :  44; 
      DataLength :        49; 
      ErrorLength :       28; 
      BlockDataLength :   49; 
      BlockErrorLength :  28; 
      BlockCount :        1; 
    ) 
  ); 
 
procedure CalcECC200(Source : TByteArray; Size : TECC200Size; 
  Shape : TECC200Shape; 
  var DataMatrix : TByteArray; 
  var MatrixWidth, MatrixHeight : integer); 
 
implementation 
 
uses SysUtils, untEasyReedSolomon, Forms; 
 
const 
  Ploy5 : array [0..5] of byte = (228, 48, 15, 111, 62, 1); 
  Ploy7 : array [0..7] of byte = (23, 68, 144, 134, 240, 92, 254, 1); 
  Ploy10 : array [0..10] of byte = (28, 24, 185, 166, 223, 248, 116, 255, 110, 
    61, 1); 
  Ploy11 : array [0..11] of byte = (175, 138, 205, 12, 194, 168, 39, 245, 60, 
    97, 120, 1); 
  Ploy12 : array [0..12] of byte = (41, 153, 158, 91, 61, 42, 142, 213, 97, 178, 
    100, 242, 1); 
  Ploy14 : array [0..14] of byte = (156, 97, 192, 252, 95, 9, 157, 119, 138, 45, 
    18, 186, 83, 185, 1); 
  Ploy18 : array [0..18] of byte = (83, 195, 100, 39, 188, 75, 66, 61, 241, 213, 
    109, 129, 94, 254, 225, 48, 90, 188, 1); 
  Ploy20 : array [0..20] of byte = (15, 195, 244, 9, 233, 71, 168, 2, 188, 160, 
    153, 145, 253, 79, 108, 82, 27, 174, 186, 172, 1); 
  Ploy24 : array [0..24] of byte = (52, 190, 88, 205, 109, 39, 176, 21, 155, 
    197, 251, 223, 155, 21, 5, 172, 254, 124, 12, 181, 184, 96, 50, 193, 1); 
  Ploy28 : array [0..28] of byte = (211, 231, 43, 97, 71, 96, 103, 174, 37, 151, 
    170, 53, 75, 34, 249, 121, 17, 138, 110, 213, 141, 136, 120, 151, 233, 168, 
    93, 255, 1); 
  Ploy36 : array [0..36] of byte = (245, 127, 242, 218, 130, 250, 162, 181, 102, 
    120, 84, 179, 220, 251, 80, 182, 229, 18, 2, 4, 68, 33, 101, 137, 95, 119, 
    115, 44, 175, 184, 59, 25, 225, 98, 81, 112, 1); 
  Ploy42 : array [0..42] of byte = (77, 193, 137, 31, 19, 38, 22, 153, 247, 105, 
    122, 2, 245, 133, 242, 8, 175, 95, 100, 9, 167, 105, 214, 111, 57, 121, 21, 
    1, 253, 57, 54, 101, 248, 202, 69, 50, 150, 177, 226, 5, 9, 5, 1); 
  Ploy48 : array [0..48] of byte = (245, 132, 172, 223, 96, 32, 117, 22, 238, 
    133, 238, 231, 205, 188, 237, 87, 191, 106, 16, 147, 118, 23, 37, 90, 170, 
    205, 131, 88, 120, 100, 66, 138, 186, 240, 82, 44, 176, 87, 187, 147, 160, 
    175, 69, 213, 92, 253, 225, 19, 1); 
  Ploy56 : array [0..56] of byte = (175, 9, 223, 238, 12, 17, 220, 208, 100, 29, 
    175, 170, 230, 192, 215, 235, 150, 159, 36, 223, 38, 200, 132, 54, 228, 146, 
    218, 234, 117, 203, 29, 232, 144, 238, 22, 150, 201, 117, 62, 207, 164, 13, 
    137, 245, 127, 67, 247, 28, 155, 43, 203, 107, 233, 53, 143, 46, 1); 
  Ploy62 : array [0..62] of byte = (242, 93, 169, 50, 144, 210, 39, 118, 202, 
    188, 201, 189, 143, 108, 196, 37, 185, 112, 134, 230, 245, 63, 197, 190, 
    250, 106, 185, 221, 175, 64, 114, 71, 161, 44, 147, 6, 27, 218, 51, 63, 87, 
    10, 40, 130, 188, 17, 163, 31, 176, 170, 4, 107, 232, 7, 94, 166, 224, 124, 
    86, 47, 11, 204, 1); 
  Ploy68 : array [0..68] of byte = (220, 228, 173, 89, 251, 149, 159, 56, 89, 
    33, 147, 244, 154, 36, 73, 127, 213, 136, 248, 180, 234, 197, 158, 177, 68, 
    122, 93, 213, 15, 160, 227, 236, 66, 139, 153, 185, 202, 167, 179, 25, 220, 
    232, 96, 210, 231, 136, 223, 239, 181, 241, 59, 52, 172, 25, 49, 232, 211, 
    189, 64, 54, 108, 153, 132, 63, 96, 103, 82, 186, 1); 
 
  C40BasicSet = [32, 48..57, 65..90]; 
  C40Shift1Set = [0..31]; 
  C40Shift2Set = [33..47, 58..64, 91..95]; 
  C40Shift3Set = [96..127]; 
 
  TextBasicSet = [32, 48..57, 97..122]; 
  TextShift1Set = [0..31]; 
  TextShift2Set = [33..47, 58..64, 91..95]; 
  TextShift3Set = [96, 65..90, 123..127]; 
 
  X12Set = [13, 42, 62, 32, 48..57, 65..90]; 
 
  EDIFACTSet = [32..94]; 
 
type 
  TEncodeMode = (emASCII, emC40, emText, emX12, emEDIFACT, emBase256); 
  TTriByteState = (tsReady, tsByte1, tsByte2); //用于C40, Text, X12编码时记录算法的状态 
 
function Random253(Pad_codeword_value: Byte; Pad_codeword_position: Integer): Byte; 
var 
  pseudo_random_number, temp_variable :Integer; 
begin 
  pseudo_random_number := ((149 * Pad_codeword_position) mod 253) + 1; 
  temp_variable := Pad_codeword_value + pseudo_random_number; 
  if temp_variable <= 254 then 
    Result := temp_variable 
  else 
    Result := temp_variable - 254; 
end; 
 
function Random255(Base256_codeword_value: Byte; Base256_codeword_position: Integer): Byte; 
var 
  pseudo_random_number, temp_variable: Integer; 
begin 
  pseudo_random_number := ((149 * Base256_codeword_position) mod 255) + 1; 
  temp_variable := Base256_codeword_value + pseudo_random_number; 
  if temp_variable <= 255 then 
    Result := temp_variable 
  else 
    Result := temp_variable - 256; 
end; 
 
function LookAhead(var Source : TByteArray; FromPos : integer; CurEncodeMode : TEncodeMode): TEncodeMode; 
var 
  ASCIICount, 
  C40Count, 
  TextCount, 
  X12Count, 
  EDFCount, 
  B256Count : single; 
  b : byte; 
  ToPos: Integer; 
 
label J, K, L, M, N, O, P, Q, R, S; 
begin 
  ToPos := FromPos; 
J: 
  if CurEncodeMode = emASCII then 
  begin 
    ASCIICount := 0; 
    C40Count := 1; 
    TextCount := 1; 
    X12Count := 1; 
    EDFCount := 1; 
    B256Count := 1.25; 
  end 
  else 
  begin 
    ASCIICount := 1; 
    C40Count := 2; 
    TextCount := 2; 
    X12Count := 2; 
    EDFCount := 2; 
    B256Count := 2.25; 
  end; 
  case CurEncodeMode of 
    emC40     : C40Count := 0; 
    emText    : TextCount := 0; 
    emX12     : X12Count := 0; 
    emEDIFACT : EDFCount := 0; 
    emBase256 : B256Count := 0; 
  end; 
  ToPos := FromPos; 
K: 
  if ToPos > High(Source) then 
  begin 
    ASCIICount := Trunc(ASCIICount + 0.9999999); 
    C40Count := Trunc(C40Count + 0.9999999); 
    TextCount := Trunc(TextCount + 0.9999999); 
    X12Count := Trunc(X12Count + 0.9999999); 
    EDFCount := Trunc(EDFCount + 0.9999999); 
    B256Count := Trunc(B256Count + 0.9999999); 
 
    if (ASCIICount <= C40Count) 
      and (ASCIICount <= TextCount) 
      and (ASCIICount <= X12Count) 
      and (ASCIICount <= EDFCount) 
      and (ASCIICount <= B256Count) then 
    begin 
      Result := emASCII; 
      exit; 
    end; 
 
    if (B256Count < ASCIICount) 
      and (B256Count < C40Count) 
      and (B256Count < TextCount) 
      and (B256Count < X12Count) 
      and (B256Count < EDFCount) then 
    begin 
      Result := emBase256; 
      exit; 
    end; 
 
    if (EDFCount < ASCIICount) 
      and (EDFCount < C40Count) 
      and (EDFCount < TextCount) 
      and (EDFCount < X12Count) 
      and (EDFCount <B256Count) then 
    begin 
      Result := emEDIFACT; 
      exit; 
    end; 
 
    if (TextCount < ASCIICount) 
      and (TextCount < C40Count) 
      and (TextCount < X12Count) 
      and (TextCount < EDFCount) 
      and (TextCount < B256Count) then 
    begin 
      Result := emText; 
      exit; 
    end; 
 
    if (X12Count < ASCIICount) 
      and (X12Count < C40Count) 
      and (X12Count < TextCount) 
      and (X12Count < EDFCount) 
      and (X12Count < B256Count) then 
    begin 
      Result := emX12; 
      exit; 
    end; 
 
    Result := emC40; 
    exit; 
  end; 
 
  b := Source[ToPos]; 
 
L: 
  if b in [48..57] then ASCIICount := ASCIICount + 1/2 
  else if b > 127 then ASCIICount := ASCIICount + 2 
  else ASCIICount := ASCIICount + 1; 
 
M: 
  if b in C40BasicSet then C40Count := C40Count + 2/3 
  else if b > 127 then C40Count := C40Count + 8/3 
  else C40Count := C40Count + 4/3; 
N: 
  if b in TextBasicSet then TextCount := TextCount + 2/3 
  else if b > 127 then TextCount := TextCount + 8/3 
  else TextCount := TextCount + 4/3; 
O: 
  if b in X12Set then X12Count := X12Count + 2/3 
  else if b > 127 then X12Count := X12Count + 13/3 
  else X12Count := X12Count +10/3; 
P: 
  if b in EDIFACTSet then EDFCount := EDFCount + 3/4 
  else if b > 127 then EDFCount := EDFCount + 17/4 
  else EDFCount := EDFCount + 13/4; 
Q: 
  if b > 255 then B256Count := B256Count + 4   
  else B256Count := B256Count + 1; 
R: 
  if ToPos - FromPos >= 4 then 
  begin 
    if (ASCIICount + 1 <= C40Count) 
      and (ASCIICount + 1 <= TextCount) 
      and (ASCIICount + 1 <= X12Count) 
      and (ASCIICount + 1 <= EDFCount) 
      and (ASCIICount + 1 <= B256Count) then 
    begin 
      Result := emASCII; 
      exit; 
    end; 
 
    if (B256Count + 1 <= ASCIICount) or ( 
      ((B256Count <= C40Count) 
      and (B256Count <= TextCount) 
      and (B256Count <= X12Count) 
      and (B256Count <= EDFCount))) then 
    begin 
      Result := emBase256; 
      exit; 
    end; 
 
    if (EDFCount + 1 < ASCIICount) 
      and (EDFCount + 1 < C40Count) 
      and (EDFCount + 1 < TextCount) 
      and (EDFCount + 1 < X12Count) 
      and (EDFCount + 1 < B256Count) then 
    begin 
      Result := emEDIFACT; 
      exit; 
    end; 
 
    if (TextCount + 1 < ASCIICount) 
      and (TextCount + 1 < C40Count) 
      and (TextCount + 1 < X12Count) 
      and (TextCount + 1 < EDFCount) 
      and (TextCount + 1 < B256Count) then 
    begin 
      Result := emText; 
      exit; 
    end; 
 
    if (X12Count + 1 < ASCIICount) 
      and (X12Count + 1 < C40Count) 
      and (X12Count + 1 < TextCount) 
      and (X12Count + 1 < EDFCount) 
      and (X12Count + 1 < B256Count) then 
    begin 
      Result := emX12; 
      exit; 
    end; 
 
    if (C40Count + 1 < ASCIICount) 
      and (C40Count + 1 < B256COunt) 
      and (C40Count + 1 < EDFCount) 
      and (C40Count + 1 < TextCount) then 
    begin 
      if C40Count < X12Count then 
      begin 
        Result := emC40; 
        exit; 
      end; 
      if C40Count = X12Count then 
      begin 
        if (ToPos < High(Source)) and (Source[ToPos] in [13, 42, 62]) then 
        begin 
          Result := emX12; 
          exit; 
        end; 
      end; 
      Result := emC40; 
      exit; 
    end; 
  end; 
S: 
  Inc(ToPos); 
  goto K; 
end; 
 
function UpToBound(Shape : TEcc200Shape; CurPos: Integer): Boolean; 
var 
  s : TECC200Size; 
begin 
  Result := False; 
  if Shape = ecc200_Square then 
  begin 
    for s := ecc200_10x10 to ecc200_144x144 do 
    begin 
      if ECC200SymbolParams[s].DataLength = CurPos then 
      begin 
        Result := True; 
        Break; 
      end; 
      if ECC200SymbolParams[s].DataLength > CurPos then Break; 
    end 
  end 
  else 
  begin 
    for s := ecc200_8x18 to ecc200_16x48 do 
    begin 
      if ECC200SymbolParams[s].DataLength = CurPos then 
      begin 
        Result := True; 
        Break; 
      end; 
      if ECC200SymbolParams[s].DataLength > CurPos then Break; 
    end; 
  end; 
end; 
 
function NearestSize(Shape : TEcc200Shape; CurPos: Integer): Integer; 
var 
  s : TECC200Size; 
  outlen: Integer; 
begin 
    if Shape = ecc200_Square then 
    begin 
      for s := ecc200_10x10 to ecc200_144x144 do 
      begin 
        outlen := ECC200SymbolParams[s].DataLength; 
        if outlen > CurPos then 
        begin 
          Result := outlen; 
          break; 
        end; 
      end; 
    end 
    else 
    begin 
      for s := ecc200_8x18 to ecc200_16x48 do 
      begin 
        outlen := ECC200SymbolParams[s].DataLength; 
        if outlen > CurPos then 
        begin 
          Result := outlen; 
          break; 
        end; 
      end; 
    end; 
    if outlen < CurPos then raise Exception.Create('数据超出二维码容量！'); 
end; 
 
procedure TriByteEncode(InByte1, InByte2, InByte3: Byte; var OutByte1, OutByte2: Byte); 
var 
  w: Word; 
begin 
  w := 1600 * InByte1 + 40 * InByte2 + InByte3 + 1; 
  OutByte1 := w div 256; 
  OutByte2 := w mod 256; 
end; 
 
function C40Value(ASCII: Byte) : Byte; 
begin 
  case ASCII of 
    32:       Result := 3; 
    48..57:   Result := ASCII - 48 + 4; 
    65..90:   Result := ASCII - 65 + 14; 
    00..31:   Result := ASCII; 
    33..47:   Result := ASCII - 33; 
    58..64:   Result := ASCII - 58 + 15; 
    91..95:   Result := ASCII - 91 + 22; 
    96..127:  Result := ASCII - 96; 
    else raise Exception.Create('C40编码算法错误，请通知开发人员！ 错误信息：ASCII码大于127'); 
  end; 
end; 
 
function NextAreTwoDigit(var Source: TByteArray; SourceIndex: Integer): Boolean; 
begin 
  Result := False; 
  if SourceIndex >= Length(Source) - 1 then Exit; 
  Result := (Source[SourceIndex] in [48..57]) 
            and (Source[SourceIndex + 1] in [48..57]); 
end; 
 
procedure ASCII_EncodeDoubleDigit( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer); 
begin 
  Buffer[BufferIndex] := 
    ((Source[SourceIndex] - 48) * 10 + Source[SourceIndex + 1] - 48) + 130; 
  Inc(SourceIndex, 2); 
  Inc(BufferIndex); 
end; 
 
procedure SwitchModeTo( 
  var Buffer: TByteArray; 
  var BufferIndex: Integer; 
  ToMode: TEncodeMode); 
begin 
  case ToMode of 
    emC40: 
    begin 
      Buffer[BufferIndex] := 230; Inc(BufferIndex); 
    end; 
 
    emText: 
    begin 
      Buffer[BufferIndex] := 239; Inc(BufferIndex); 
    end; 
 
    emX12: 
    begin 
      Buffer[BufferIndex] := 238; Inc(BufferIndex); 
    end; 
 
    emEDIFACT: 
    begin 
      Buffer[BufferIndex] := 240; Inc(BufferIndex); 
    end; 
 
    emBase256: 
    begin 
      Buffer[BufferIndex] := 231; Inc(BufferIndex); 
    end; 
  end; 
end; 
 
procedure SwitchTriByteBack(var Buffer: TByteArray; var BufferIndex: Integer); 
begin 
  Buffer[BufferIndex] := 254; Inc(BufferIndex); 
end; 
 
procedure SwitchMode( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer; 
  FromMode, ToMode: TEncodeMode); 
begin 
  case FromMode of 
    emASCII: 
    begin 
      SwitchModeTo(Buffer, BufferIndex, ToMode); 
    end; 
 
    emC40: 
    begin 
      SwitchTriByteBack(Buffer, BufferIndex); 
      SwitchModeTo(Buffer, BufferIndex, ToMode); 
    end; 
 
    emText: 
    begin 
      SwitchTriByteBack(Buffer, BufferIndex); 
      SwitchModeTo(Buffer, BufferIndex, ToMode); 
    end; 
 
    emX12: 
    begin 
      SwitchTriByteBack(Buffer, BufferIndex); 
      SwitchModeTo(Buffer, BufferIndex, ToMode); 
    end; 
  end; 
end; 
 
function NextIsExtendASCII(var Source: TByteArray; SourceIndex: Integer): Boolean; 
begin 
  Result := (Source[SourceIndex] > 127); 
end; 
 
procedure ASCII_EncodeExtendData( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer); 
begin 
  Buffer[BufferIndex] := 235; 
  Inc(BufferIndex); 
  Buffer[BufferIndex] := Source[SourceIndex] - 128 + 1; 
  Inc(BufferIndex); 
  Inc(sourceIndex); 
end; 
 
procedure ASCII_EncodeData( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer); 
begin 
  Buffer[BufferIndex] := Source[SourceIndex] + 1; 
  Inc(BufferIndex); 
  Inc(SourceIndex); 
end; 
 
function ASCII_Encode( 
  Shape: TECC200Shape;  
  EncodeMode: TEncodeMode; 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer): TEncodeMode; 
begin 
  Result := EncodeMode; 
  while SourceIndex < Length(Source) do 
  begin 
    if NextAreTwoDigit(Source, SourceIndex) then 
    begin 
      ASCII_EncodeDoubleDigit(Source, SourceIndex, Buffer, BufferIndex); 
      Continue; 
    end; 
    Result := LookAhead(Source, SourceIndex, EncodeMode); 
// 
    if Result <> emBase256 then Result := emASCII; 
// 
    if Result <> emASCII then 
    begin 
      SwitchMode(Source, SourceIndex, Buffer, BufferIndex, EncodeMode, Result); 
      Exit; 
    end; 
    if NextIsExtendASCII(Source, SourceIndex) then 
    begin 
      ASCII_EncodeExtendData(Source, SourceIndex, Buffer, BufferIndex); 
      Continue; 
    end; 
    ASCII_EncodeData(Source, SourceIndex, Buffer, BufferIndex); 
  end; 
end; 
 
 
 
 
 
 
function C40_EncodeFromReady( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer; 
  var Byte1, Byte2, Byte3: Byte): TTriByteState; 
begin 
  if Source[SourceIndex] in C40BasicSet then 
  begin 
    Byte1 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte1; 
  end 
  else if Source[SourceIndex] in C40Shift1Set then 
  begin 
    Byte1 := 0; 
    Byte2 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte2; 
  end 
  else if Source[SourceIndex] in C40Shift2Set then 
  begin 
    Byte1 := 1; 
    Byte2 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte2; 
  end 
  else if Source[SourceIndex] in C40Shift3Set then 
  begin 
    Byte1 := 2; 
    Byte2 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte2; 
  end 
  else if Source[SourceIndex] > 127 then 
  begin 
    if (Source[SourceIndex] - 128) in C40BasicSet then 
    begin 
      Byte1 := 1; 
      Byte2 := 30; 
      Byte3 := C40Value(Source[SourceIndex]); 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Result := tsReady; 
    end 
    else if (Source[SourceIndex] - 128) in C40Shift1Set then 
    begin 
      Byte1 := 1; 
      Byte2 := 30; 
      Byte3 := 0; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := C40Value(Source[SourceIndex]); 
      Result := tsByte1; 
    end 
    else if (Source[SourceIndex] - 128) in C40Shift2Set then 
    begin 
      Byte1 := 1; 
      Byte2 := 30; 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(SourceIndex, 2); 
      Byte1 := C40Value(Source[SourceIndex]); 
      Result := tsByte1; 
    end 
    else if (Source[SourceIndex] - 128) in C40Shift3Set then 
    begin 
      Byte1 := 1; 
      Byte2 := 30; 
      Byte3 := 2; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := C40Value(Source[SourceIndex]); 
      Result := tsByte1; 
    end 
    else raise Exception.Create('C40字符集设计有遗漏， 请通知开发人员！'); 
  end; 
end; 
 
function C40_EncodeFromByte1( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer; 
  var Byte1, Byte2, Byte3: Byte): TTriByteState; 
begin 
  if Source[SourceIndex] in C40BasicSet then 
  begin 
    Byte2 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte2; 
  end 
  else if Source[SourceIndex] in C40Shift1Set then 
  begin 
    Byte2 := 0; 
    Byte3 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Result := tsReady; 
  end 
  else if Source[SourceIndex] in C40Shift2Set then 
  begin 
    Byte2 := 1; 
    Byte3 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]);  
    Inc(BufferIndex, 2); 
    Result := tsReady; 
  end 
  else if Source[SourceIndex] in C40Shift3Set then 
  begin 
    Byte2 := 2; 
    Byte3 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Result := tsReady; 
  end 
  else if Source[SourceIndex] > 127 then 
  begin 
    if (Source[SourceIndex] - 128) in C40BasicSet then 
    begin 
      Byte2 := 1; 
      Byte3 := 30; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := C40Value(Source[SourceIndex]); 
      Result := tsByte1; 
    end 
    else if (Source[SourceIndex] - 128) in C40Shift1Set then 
    begin 
      Byte2 := 1; 
      Byte3 := 30; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 0; 
      Byte2 := C40Value(Source[SourceIndex]); 
      Result := tsByte2; 
    end 
    else if (Source[SourceIndex] - 128) in C40Shift2Set then 
    begin 
      Byte2 := 1; 
      Byte3 := 30; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 1; 
      Byte2 := C40Value(Source[SourceIndex]); 
      Result := tsByte2; 
    end 
    else if (Source[SourceIndex] - 128) in C40Shift3Set then 
    begin 
      Byte2 := 1; 
      Byte3 := 30; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 2; 
      Byte2 := C40Value(Source[SourceIndex]); 
      Result := tsByte2; 
    end 
    else raise Exception.Create('C40字符集设计有遗漏， 请通知开发人员！'); 
  end; 
end; 
 
function C40_EncodeFromByte2( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer; 
  var Byte1, Byte2, Byte3: Byte): TTriByteState; 
begin 
  if Source[SourceIndex] in C40BasicSet then 
  begin 
    Byte3 := C40Value(Source[SourceIndex]); 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Inc(SourceIndex); 
    Result := tsReady; 
  end 
  else if Source[SourceIndex] in C40Shift1Set then 
  begin 
    Byte3 := 0; 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Byte1 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte1; 
  end 
  else if Source[SourceIndex] in C40Shift2Set then 
  begin 
    Byte3 := 1; 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Byte1 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte1; 
  end 
  else if Source[SourceIndex] in C40Shift3Set then 
  begin 
    Byte3 := 2; 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Byte1 := C40Value(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte1; 
  end 
  else if Source[SourceIndex] > 127 then 
  begin 
    if (Source[SourceIndex] - 128) in C40BasicSet then 
    begin 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 30; 
      Byte2 := C40Value(Source[SourceIndex]); 
      Result := tsByte2; 
    end 
    else if (Source[SourceIndex] - 128) in C40Shift1Set then 
    begin 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 30; 
      Byte2 := 0; 
      Byte3 := C40Value(Source[SourceIndex]); 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Result := tsReady; 
    end 
    else if (Source[SourceIndex] - 128) in C40Shift2Set then 
    begin 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 30; 
      Byte2 := 1; 
      Byte3 := C40Value(Source[SourceIndex]); 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Result := tsReady; 
    end 
    else if (Source[SourceIndex] - 128) in C40Shift3Set then 
    begin 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 30; 
      Byte2 := 2; 
      Byte3 := C40Value(Source[SourceIndex]); 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Result := tsReady; 
    end 
    else raise Exception.Create('C40字符集设计有遗漏， 请通知开发人员！'); 
  end; 
end; 
 
function C40_Encode(Shape: TECC200Shape; EncodeMode: TEncodeMode; var Source: TByteArray; var SourceIndex: Integer; var Buffer: TByteArray; var BufferIndex: Integer): TEncodeMode; 
var 
  State: TTriByteState; 
  Byte1, Byte2, Byte3: Byte; 
begin 
  State := tsReady; 
  while SourceIndex < Length(Source) do 
  begin 
    case State of 
      tsReady: 
      begin 
        Result := LookAhead(Source, SourceIndex, EncodeMode); 
        if Result <> EncodeMode then 
        begin 
          SwitchMode(Source, SourceIndex, Buffer, BufferIndex, EncodeMode, Result); 
          Exit; 
        end; 
        State := C40_EncodeFromReady(Source, SourceIndex, Buffer, BufferIndex, Byte1, Byte2, Byte3); 
      end; 
 
      tsByte1: 
      begin 
        State := C40_EncodeFromByte1(Source, SourceIndex, Buffer, BufferIndex, Byte1, Byte2, Byte3); 
      end; 
 
      tsByte2: 
      begin 
        State := C40_EncodeFromByte2(Source, SourceIndex, Buffer, BufferIndex, Byte1, Byte2, Byte3); 
      end; 
    end; 
  end; 
 
  case State of 
    tsReady: 
    begin 
      if not UpToBound(Shape, BufferIndex) then 
      begin 
        if NearestSize(Shape, BufferIndex) - BufferIndex > 1 then 
        begin 
          SwitchTriByteBack(Buffer, BufferIndex); 
          Result := emASCII; 
          Exit; 
        end; 
      end; 
    end; 
 
    tsByte1: 
    begin 
      case NearestSize(Shape, BufferIndex) - BufferIndex of 
        1: 
        begin 
          Buffer[BufferIndex] := Source[SourceIndex - 1] + 1; 
          Inc(BufferIndex); 
          Result := emASCII; 
          Exit; 
        end; 
 
        else 
        begin 
          SwitchTriByteBack(Buffer, BufferIndex); 
          Buffer[BufferIndex] := Source[SourceIndex - 1] + 1; 
          Inc(BufferIndex); 
          Result := emASCII; 
          Exit; 
        end; 
      end; 
    end; 
 
    tsByte2: 
    begin 
      case NearestSize(Shape, BufferIndex) - BufferIndex of 
        2: 
        begin 
          Byte3 := 0; 
          TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
          Inc(BufferIndex, 2); 
        end; 
 
        else 
        begin 
          SwitchTriByteBack(Buffer, BufferIndex); 
          Result := emASCII; 
          Buffer[BufferIndex] := Source[SourceIndex - 2] + 1; Inc(BufferIndex); 
          Buffer[BufferIndex] := Source[SourceIndex - 1] + 1; Inc(BufferIndex); 
        end; 
      end; 
    end; 
  end; 
end; 
 
function TextValue(ASCII: Byte) : Byte; 
begin 
  case ASCII of 
    32:       Result := 3; 
    48..57:   Result := ASCII - 48 + 4; 
    65..90:   Result := ASCII - 65 + 1; 
    00..31:   Result := ASCII; 
    33..47:   Result := ASCII - 33; 
    58..64:   Result := ASCII - 58 + 15; 
    91..95:   Result := ASCII - 91 + 22; 
    96:       Result := 0; 
    97..127:  Result := ASCII - 97 + 14; 
    else raise Exception.Create('Text编码算法错误，请通知开发人员！ 错误信息：ASCII码大于127'); 
  end; 
end; 
 
function Text_EncodeFromReady( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer; 
  var Byte1, Byte2, Byte3: Byte): TTriByteState; 
begin 
  if Source[SourceIndex] in TextBasicSet then 
  begin 
    Byte1 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte1; 
  end 
  else if Source[SourceIndex] in TextShift1Set then 
  begin 
    Byte1 := 0; 
    Byte2 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte2; 
  end 
  else if Source[SourceIndex] in TextShift2Set then 
  begin 
    Byte1 := 1; 
    Byte2 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte2; 
  end 
  else if Source[SourceIndex] in TextShift3Set then 
  begin 
    Byte1 := 2; 
    Byte2 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte2; 
  end 
  else if Source[SourceIndex] > 127 then 
  begin 
    if (Source[SourceIndex] - 128) in TextBasicSet then 
    begin 
      Byte1 := 1; 
      Byte2 := 30; 
      Byte3 := TextValue(Source[SourceIndex]); 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Inc(BufferIndex, 2); 
      Result := tsReady; 
    end 
    else if (Source[SourceIndex] - 128) in TextShift1Set then 
    begin 
      Byte1 := 1; 
      Byte2 := 30; 
      Byte3 := 0; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Inc(BufferIndex, 2); 
      Byte1 := TextValue(Source[SourceIndex]); 
      Result := tsByte1; 
    end 
    else if (Source[SourceIndex] - 128) in TextShift2Set then 
    begin 
      Byte1 := 1; 
      Byte2 := 30; 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Inc(SourceIndex, 2); 
      Byte1 := TextValue(Source[SourceIndex]); 
      Result := tsByte1; 
    end 
    else if (Source[SourceIndex] - 128) in TextShift3Set then 
    begin 
      Byte1 := 1; 
      Byte2 := 30; 
      Byte3 := 2; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Inc(BufferIndex, 2); 
      Byte1 := TextValue(Source[SourceIndex]); 
      Result := tsByte1; 
    end 
    else raise Exception.Create('Text字符集设计有遗漏， 请通知开发人员！'); 
  end; 
end; 
 
function Text_EncodeFromByte1( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer; 
  var Byte1, Byte2, Byte3: Byte): TTriByteState; 
begin 
  if Source[SourceIndex] in TextBasicSet then 
  begin 
    Byte2 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte2; 
  end 
  else if Source[SourceIndex] in TextShift1Set then 
  begin 
    Byte2 := 0; 
    Byte3 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Result := tsReady; 
  end 
  else if Source[SourceIndex] in TextShift2Set then 
  begin 
    Byte2 := 1; 
    Byte3 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Result := tsReady; 
  end 
  else if Source[SourceIndex] in TextShift3Set then 
  begin 
    Byte2 := 2; 
    Byte3 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Result := tsReady; 
  end 
  else if Source[SourceIndex] > 127 then 
  begin 
    if (Source[SourceIndex] - 128) in TextBasicSet then 
    begin 
      Byte2 := 1; 
      Byte3 := 30; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := TextValue(Source[SourceIndex]); 
      Result := tsByte1; 
    end 
    else if (Source[SourceIndex] - 128) in TextShift1Set then 
    begin 
      Byte2 := 1; 
      Byte3 := 30; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 0; 
      Byte2 := TextValue(Source[SourceIndex]); 
      Result := tsByte2; 
    end 
    else if (Source[SourceIndex] - 128) in TextShift2Set then 
    begin 
      Byte2 := 1; 
      Byte3 := 30; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 1; 
      Byte2 := TextValue(Source[SourceIndex]); 
      Result := tsByte2; 
    end 
    else if (Source[SourceIndex] - 128) in TextShift3Set then 
    begin 
      Byte2 := 1; 
      Byte3 := 30; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 2; 
      Byte2 := TextValue(Source[SourceIndex]); 
      Result := tsByte2; 
    end 
    else raise Exception.Create('Text字符集设计有遗漏， 请通知开发人员！'); 
  end; 
end; 
 
function Text_EncodeFromByte2( 
  var Source: TByteArray; 
  var SourceIndex: Integer; 
  var Buffer: TByteArray; 
  var BufferIndex: Integer; 
  var Byte1, Byte2, Byte3: Byte): TTriByteState; 
begin 
  if Source[SourceIndex] in TextBasicSet then 
  begin 
    Byte3 := TextValue(Source[SourceIndex]); 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Inc(SourceIndex); 
    Result := tsReady; 
  end 
  else if Source[SourceIndex] in TextShift1Set then 
  begin 
    Byte3 := 0; 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Byte1 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte1; 
  end 
  else if Source[SourceIndex] in TextShift2Set then 
  begin 
    Byte3 := 1; 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Byte1 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte1; 
  end 
  else if Source[SourceIndex] in TextShift3Set then 
  begin 
    Byte3 := 2; 
    TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
    Inc(BufferIndex, 2); 
    Byte1 := TextValue(Source[SourceIndex]); 
    Inc(SourceIndex); 
    Result := tsByte1; 
  end 
  else if Source[SourceIndex] > 127 then 
  begin 
    if (Source[SourceIndex] - 128) in TextBasicSet then 
    begin 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 30; 
      Byte2 := TextValue(Source[SourceIndex]); 
      Result := tsByte2; 
    end 
    else if (Source[SourceIndex] - 128) in TextShift1Set then 
    begin 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 30; 
      Byte2 := 0; 
      Byte3 := TextValue(Source[SourceIndex]); 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Result := tsReady; 
    end 
    else if (Source[SourceIndex] - 128) in TextShift2Set then 
    begin 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 30; 
      Byte2 := 1; 
      Byte3 := TextValue(Source[SourceIndex]); 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Result := tsReady; 
    end 
    else if (Source[SourceIndex] - 128) in TextShift3Set then 
    begin 
      Byte3 := 1; 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Byte1 := 30; 
      Byte2 := 2; 
      Byte3 := TextValue(Source[SourceIndex]); 
      TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
      Inc(BufferIndex, 2); 
      Result := tsReady; 
    end 
    else raise Exception.Create('Text字符集设计有遗漏， 请通知开发人员！'); 
  end; 
end; 
 
function Text_Encode(Shape: TECC200Shape; EncodeMode: TEncodeMode; var Source: TByteArray; var SourceIndex: Integer; var Buffer: TByteArray; var BufferIndex: Integer): TEncodeMode; 
var 
  State: TTriByteState; 
  Byte1, Byte2, Byte3: Byte; 
begin 
  State := tsReady; 
  while SourceIndex < Length(Source) do 
  begin 
    case State of 
      tsReady: 
      begin 
        Result := LookAhead(Source, SourceIndex, EncodeMode); 
        if Result <> EncodeMode then 
        begin 
          SwitchMode(Source, SourceIndex, Buffer, BufferIndex, EncodeMode, Result); 
          Exit; 
        end; 
        State := Text_EncodeFromReady(Source, SourceIndex, Buffer, BufferIndex, Byte1, Byte2, Byte3); 
      end; 
 
      tsByte1: 
      begin 
        State := Text_EncodeFromByte1(Source, SourceIndex, Buffer, BufferIndex, Byte1, Byte2, Byte3); 
      end; 
 
      tsByte2: 
      begin 
        State := Text_EncodeFromByte2(Source, SourceIndex, Buffer, BufferIndex, Byte1, Byte2, Byte3); 
      end; 
    end; 
  end; 
 
  case State of 
    tsReady: 
    begin 
      if not UpToBound(Shape, BufferIndex) then 
      begin 
        if NearestSize(Shape, BufferIndex) - BufferIndex > 1 then 
        begin 
          SwitchTriByteBack(Buffer, BufferIndex); 
          Result := emASCII; 
          Exit; 
        end; 
      end; 
    end; 
 
    tsByte1: 
    begin 
      case NearestSize(Shape, BufferIndex) - BufferIndex of 
        1: 
        begin 
          Buffer[BufferIndex] := Source[SourceIndex - 1] + 1; 
          Inc(BufferIndex); 
          Result := emASCII; 
          Exit; 
        end; 
 
        else 
        begin 
          SwitchTriByteBack(Buffer, BufferIndex); 
          Result := emASCII; 
          Buffer[BufferIndex] := Source[SourceIndex - 1] + 1; 
          Inc(BufferIndex); 
          Exit; 
        end; 
      end; 
    end; 
 
    tsByte2: 
    begin 
      case NearestSize(Shape, BufferIndex) - BufferIndex of 
        2: 
        begin 
          Byte3 := 0; 
          TriByteEncode(Byte1, Byte2, Byte3, Buffer[BufferIndex], Buffer[BufferIndex + 1]); 
          Inc(BufferIndex, 2); 
        end; 
 
        else 
        begin 
          SwitchTriByteBack(Buffer, BufferIndex); 
          Result := emASCII; 
          Buffer[BufferIndex] := Source[SourceIndex - 2] + 1; Inc(BufferIndex); 
          Buffer[BufferIndex] := Source[SourceIndex - 1] + 1; Inc(BufferIndex); 
        end; 
      end; 
    end; 
  end; 
end; 
 
function X12Value(ASCII: Byte) : Byte; 
begin 
  case ASCII of 
    13: Result := 0; 
    42: Result := 1; 
    62: Result := 2; 
    32: Result := 3; 
    48..57: Result := ASCII - 48 + 4; 
    65..90: Result := ASCII - 65 + 14;  
  end; 
end; 
 
//X12字符集没有Unlatch和Pad字符，因此，必须三个X12字符一组进行编码。如果 
//可编码字符不足三个，必须退出X12编码模式 
function X12_Encode(Shape: TECC200Shape; EncodeMode: TEncodeMode; var Source: TByteArray; var SourceIndex: Integer; var Buffer: TByteArray; var BufferIndex: Integer): TEncodeMode; 
var 
  State: TTriByteState; 
  NewMode: TEncodeMode; 
  Byte1, Byte2, Byte3: Byte; 
begin 
  State := tsReady; 
  while (SourceIndex <= Length(Source) - 3) 
  and (Source[SourceIndex] in X12Set) 
  and (Source[SourceIndex + 1] in X12Set) 
  and (Source[SourceIndex + 2] in X12Set) do 
  begin 
    TriByteEncode( 
        X12Value(Source[SourceIndex]), 
        X12Value(Source[SourceIndex + 1]), 
        X12Value(Source[SourceIndex + 2]), 
        Buffer[BufferIndex], 
        Buffer[BufferIndex + 1]); 
        Inc(SourceIndex, 3); 
        Inc(BufferIndex, 2); 
  end; 
 
  if SourceIndex < Length(Source) then 
  begin 
    case Length(Source) - SourceIndex of 
      1: 
      begin 
        case NearestSize(Shape, BufferIndex) - BufferIndex of 
          1: 
          begin 
            ASCII_EncodeData(Source, SourceIndex, Buffer, BufferIndex); 
            Result := emASCII; 
            Exit; 
          end; 
 
          else 
          begin 
            SwitchTriByteBack(Buffer, BufferIndex); 
            ASCII_EncodeData(Source, SourceIndex, Buffer, BufferIndex); 
            Result := emASCII; 
          end; 
 
        end; 
      end; 
 
      2: 
      begin 
        case NearestSize(Shape, BufferIndex) - BufferIndex of 
          2: 
          begin 
            TriByteEncode( 
              X12Value(Source[SourceIndex]), 
              X12Value(Source[SourceIndex + 1]), 
              0, 
              Source[SourceIndex], 
              Source[SourceIndex + 1]); 
          end; 
 
          else 
          begin 
            SwitchTriByteBack(Buffer, BufferIndex); 
            Result := emASCII; 
          end; 
        end; 
      end; 
    end; 
  end; 
 
  if UptoBound(Shape, BufferIndex) then Exit; 
  if NearestSize(Shape, BufferIndex) - BufferIndex <= 1 then Exit; 
  SwitchTriByteBack(Buffer, BufferIndex); 
  Result := emASCII; 
end; 
 
type 
  TFourBytes = array[0..3] of Byte; 
 
procedure EDIFACT_EncodeFourBytes(var Bytes: TFourBytes; var Buffer: TByteArray; var BufferIndex: Integer); 
var 
  T: Longword; 
begin 
  T := (((Bytes[0] * 64 + Bytes[1]) * 64 + Bytes[2]) * 64) + Bytes[3]; 
  Buffer[BufferIndex] := T div $10000;  T := T mod $10000;  Inc(BufferIndex); 
  Buffer[BufferIndex] := T div $100;    T := T mod $100;    Inc(BufferIndex); 
  Buffer[BufferIndex] := T;                                 Inc(BufferIndex); 
end; 
 
function EDIFACTValue(ASCII: Byte): Byte; 
begin 
  if ASCII in [64..94] then Result := ASCII - 64 
  else if ASCII in [32..63] then Result := ASCII 
  else raise Exception.Create('EDIFACT 求值错误，ASCII超出EDIFACT字符集范围！'); 
end; 
 
function EDIFACT_Encode(Shape: TECC200Shape; EncodeMode: TEncodeMode; var Source: TByteArray; var SourceIndex: Integer; var Buffer: TByteArray; var BufferIndex: Integer): TEncodeMode; 
var 
  Index, I: Integer; 
  Bytes: TFourBytes; 
begin 
  Index := 0; 
  while SourceIndex < Length(Source) do 
  begin 
    if Index = 0 then 
    begin 
      Result := LookAhead(Source, SourceIndex, EncodeMode); 
      if Result <> EncodeMode then 
      begin 
        Bytes[Index] := 31; 
        Inc(Index); 
        for I := Index to 3 do Bytes[I] := 0; 
        EDIFACT_EncodeFourBytes(Bytes, Buffer, BufferIndex); 
        Exit; 
      end; 
    end; 
    if (Source[SourceIndex] in EDIFACTSet) then 
    begin 
      Bytes[Index] := EDIFACTValue(Source[SourceIndex]); 
      Inc(Index); 
      Inc(SourceIndex); 
      if Index = 4 then 
      begin 
        EDIFACT_EncodeFourBytes(Bytes, Buffer, BufferIndex); 
        Index := 0; 
      end; 
    end 
    else 
    begin 
      Bytes[Index] := 31; 
      Inc(Index); 
      for I := Index to 3 do Bytes[I] := 0; 
      EDIFACT_EncodeFourBytes(Bytes, Buffer, BufferIndex); 
      Result := emASCII; 
      Exit; 
    end; 
  end; 
 
  case Index of 
    0: 
    begin 
      if UptoBound(Shape, BufferIndex) then Exit; 
    end; 
 
    1: 
    begin 
      case NearestSize(Shape, BufferIndex) - BufferIndex of 
        1..2: 
        begin 
          Buffer[BufferIndex] := Source[SourceIndex - 1] + 1; 
          Inc(BufferIndex); 
          Result := emASCII; 
          Exit; 
        end; 
 
        else 
        begin 
          Bytes[1] := 31; 
          Bytes[2] := 0; 
          Bytes[3] := 0; 
          EDIFACT_EncodeFourBytes(Bytes, Buffer, BufferIndex); 
          Result := emASCII; 
          Exit; 
        end; 
      end; 
    end; 
 
    2: 
    begin 
      case NearestSize(Shape, BufferIndex) - BufferIndex of 
        1..2: 
        begin 
          Buffer[BufferIndex] := Source[SourceIndex - 2] + 1; 
          Inc(BufferIndex); 
          Buffer[BufferIndex] := Source[SourceIndex - 1] + 1; 
          Inc(BufferIndex); 
          Result := emASCII; 
          Exit; 
        end; 
 
        else 
        begin 
          Bytes[2] := 31; 
          Bytes[3] := 0; 
          EDIFACT_EncodeFourBytes(Bytes, Buffer, BufferIndex); 
          Result := emASCII; 
          Exit; 
        end; 
      end; 
    end; 
 
    3: 
    begin 
      Bytes[3] := 31; 
      EDIFACT_EncodeFourBytes(Bytes, Buffer, BufferIndex); 
      Result := emASCII; 
      Exit; 
    end; 
  end; 
 
  Bytes[Index] := 31; 
  Inc(Index); 
  for I := Index to 3 do Bytes[I] := 0; 
  EDIFACT_EncodeFourBytes(Bytes, Buffer, BufferIndex); 
  Result := emASCII; 
end; 
 
function Base256_Encode(Shape: TECC200Shape; EncodeMode: TEncodeMode; var Source: TByteArray; var SourceIndex: Integer; var Buffer: TByteArray; var BufferIndex: Integer): TEncodeMode; 
var 
  Len: Integer; 
  Bytes: array [0..5000] of Byte; 
  I: Integer; 
begin 
  Len := 0; 
  while SourceIndex < Length(Source) do 
  begin 
    Result := LookAhead(Source, SourceIndex, EncodeMode); 
    if (Result <> emBase256) or (Len > 1555) then 
    begin 
      Result := emASCII; 
      case Len of 
        0: 
        begin 
          Buffer[BufferIndex] := Random255(Len, BufferIndex + 1); 
          Inc(BufferIndex); 
          Exit; 
        end; 
 
        1..249: 
        begin 
          Buffer[BufferIndex] := Random255(Len, BufferIndex + 1); 
          Inc(BufferIndex); 
          for I := 0 to Len - 1 do 
          begin 
            Buffer[BufferIndex] := Random255(Bytes[I], BufferIndex + 1); 
            Inc(BufferIndex); 
          end; 
          Exit; 
        end; 
 
        250..1555: 
        begin 
          Buffer[BufferIndex] := Random255(Len div 250 + 249, BufferIndex + 1); 
          Inc(BufferIndex); 
          Buffer[BufferIndex] := Random255(Len mod 250, BufferIndex + 1); 
          Inc(BufferIndex); 
          for I := 0 to Len - 1 do 
          begin 
            Buffer[BufferIndex] := Random255(Bytes[I], BufferIndex + 1); 
            Inc(BufferIndex); 
          end; 
          Exit; 
        end; 
 
        else raise Exception.Create('Base256数据块大于1555字节！'); 
      end; 
    end 
    else 
    begin 
      Bytes[Len] := Source[SourceIndex]; 
      Inc(SourceIndex); 
      Inc(Len); 
    end; 
  end; 
 
  case Len of 
    0: 
    begin 
      Buffer[BufferIndex] := Random255(Len, BufferIndex + 1);; 
      Inc(BufferIndex); 
    end; 
 
    1..249: 
    begin 
      Buffer[BufferIndex] := Random255(Len, BufferIndex + 1); 
      Inc(BufferIndex); 
      for I := 0 to Len - 1 do 
      begin 
        Buffer[BufferIndex] := Random255(Bytes[I], BufferIndex + 1); 
        Inc(BufferIndex); 
      end; 
    end; 
 
    250..1555: 
    begin 
      Buffer[BufferIndex] := Random255(Len div 250 + 249, BufferIndex + 1); 
      Inc(BufferIndex); 
      Buffer[BufferIndex] := Random255(Len mod 250, BufferIndex + 1); 
      Inc(BufferIndex); 
      for I := 0 to Len - 1 do 
      begin 
        Buffer[BufferIndex] := Random255(Bytes[I], BufferIndex + 1); 
        Inc(BufferIndex); 
      end; 
    end; 
 
    else raise Exception.Create('Base256数据块大于1555字节！'); 
  end; 
  Result := emASCII; 
end; 
 
procedure MakeCodeword(Source : TByteArray; Size : TECC200Size; Shape : TEcc200Shape; var EncodeStream : TByteArray; var EncodeSize : TECC200Size); 
var 
  Buffer : TByteArray; 
  SourceIndex, BufferIndex: Integer; 
  EncodeMode: TEncodeMode; 
  s: TECC200Size; 
  outlen, i: Integer; 
begin 
  SetLength(Buffer, 5000); 
  EncodeMode := emASCII; 
  SourceIndex := 0; 
  BufferIndex := 0; 
  while SourceIndex < Length(Source) do 
  begin 
    while (EncodeMode = emASCII)    and (SourceIndex < Length(Source)) do EncodeMode := ASCII_Encode   (Shape, EncodeMode, Source, SourceIndex, Buffer, BufferIndex); 
    while (EncodeMode = emC40)      and (SourceIndex < Length(Source)) do EncodeMode := C40_Encode     (Shape, EncodeMode, Source, SourceIndex, Buffer, BufferIndex); 
    while (EncodeMode = emText)     and (SourceIndex < Length(Source)) do EncodeMode := Text_Encode    (Shape, EncodeMode, Source, SourceIndex, Buffer, BufferIndex); 
    while (EncodeMode = emX12)      and (SourceIndex < Length(Source)) do EncodeMode := X12_Encode     (Shape, EncodeMode, Source, SourceIndex, Buffer, BufferIndex); 
    while (EncodeMode = emEDIFACT)  and (SourceIndex < Length(Source)) do EncodeMode := EDIFACT_Encode (Shape, EncodeMode, Source, SourceIndex, Buffer, BufferIndex); 
    while (EncodeMode = emBase256)  and (SourceIndex < Length(Source)) do EncodeMode := Base256_Encode (Shape, EncodeMode, Source, SourceIndex, Buffer, BufferIndex); 
  end; 
 
  if Size = ecc200_Autosize then 
  begin 
    if Shape = ecc200_Square then 
    begin 
      for s := ecc200_10x10 to ecc200_144x144 do 
      begin 
        outlen := ECC200SymbolParams[s].DataLength; 
        if outlen >= BufferIndex then 
        begin 
          EncodeSize := s; 
          break; 
        end; 
      end; 
    end 
    else 
    begin 
      for s := ecc200_8x18 to ecc200_16x48 do 
      begin 
        outlen := ECC200SymbolParams[s].DataLength; 
        if outlen >= BufferIndex then 
        begin 
          EncodeSize := s; 
          break; 
        end; 
      end; 
    end; 
    if outlen < BufferIndex then raise Exception.Create('数据超出二维码容量！'); 
  end 
  else 
  begin 
    EncodeSize := Size; 
    outlen := ECC200SymbolParams[Size].DataLength; 
    if outlen < BufferIndex then raise Exception.Create('数据超出二维码容量！'); 
  end; 
 
  SetLength(EncodeStream, outlen); 
  for i := 0 to BufferIndex - 1 do 
  begin 
    EncodeStream[i] := Buffer[i]; 
  end; 
  if BufferIndex < outlen then 
  begin 
    EncodeStream[BufferIndex] := 129; 
    for i := BufferIndex + 1 to outlen - 1 do 
    begin 
      EncodeStream[i] := Random253(129, i + 1); 
    end; 
  end; 
end; 
 
function Encode(CodewordStream : TByteArray; Size : TECC200Size) : TByteArray; 
var 
  x, y, z : TPloy; 
  i, j, p : integer; 
  BlockCount, DataLen, ErrorLen : integer; 
begin 
  case Size of 
    ecc200_10x10 : 
    begin 
      SetLength(y, Length(Ploy5)); 
      for i := 0 to 5 do y[i] := Ploy5[i]; 
    end; 
    ecc200_12x12 : 
    begin 
      SetLength(y, Length(Ploy7)); 
      for i := 0 to 7 do y[i] := Ploy7[i]; 
    end; 
    ecc200_14x14 : 
    begin 
      SetLength(y, Length(Ploy10)); 
      for i := 0 to 10 do y[i] := Ploy10[i]; 
    end; 
    ecc200_16x16 : 
    begin 
      SetLength(y, Length(Ploy12)); 
      for i := 0 to 12 do y[i] := Ploy12[i]; 
    end; 
    ecc200_18x18 : 
    begin 
      SetLength(y, Length(Ploy14)); 
      for i := 0 to 14 do y[i] := Ploy14[i]; 
    end; 
    ecc200_20x20 : 
    begin 
      SetLength(y, Length(Ploy18)); 
      for i := 0 to 18 do y[i] := Ploy18[i]; 
    end; 
    ecc200_22x22 : 
    begin 
      SetLength(y, Length(Ploy20)); 
      for i := 0 to 20 do y[i] := Ploy20[i]; 
    end; 
    ecc200_24x24 : 
    begin 
      SetLength(y, Length(Ploy24)); 
      for i := 0 to 24 do y[i] := Ploy24[i]; 
    end; 
    ecc200_26x26 : 
    begin 
      SetLength(y, Length(Ploy28)); 
      for i := 0 to 28 do y[i] := Ploy28[i]; 
    end; 
    ecc200_32x32 : 
    begin 
      SetLength(y, Length(Ploy36)); 
      for i := 0 to 36 do y[i] := Ploy36[i]; 
    end; 
    ecc200_36x36 : 
    begin 
      SetLength(y, Length(Ploy42)); 
      for i := 0 to 42 do y[i] := Ploy42[i]; 
    end; 
    ecc200_40x40 : 
    begin 
      SetLength(y, Length(Ploy48)); 
      for i := 0 to 48 do y[i] := Ploy48[i]; 
    end; 
    ecc200_44x44 : 
    begin 
      SetLength(y, Length(Ploy56)); 
      for i := 0 to 56 do y[i] := Ploy56[i]; 
    end; 
    ecc200_48x48 : 
    begin 
      SetLength(y, Length(Ploy68)); 
      for i := 0 to 68 do y[i] := Ploy68[i]; 
    end; 
    ecc200_52x52 : 
    begin 
      SetLength(y, Length(Ploy42)); 
      for i := 0 to 42 do y[i] := Ploy42[i]; 
    end; 
    ecc200_64x64 : 
    begin 
      SetLength(y, Length(Ploy56)); 
      for i := 0 to 56 do y[i] := Ploy56[i]; 
    end; 
    ecc200_72x72 : 
    begin 
      SetLength(y, Length(Ploy36)); 
      for i := 0 to 36 do y[i] := Ploy36[i]; 
    end; 
    ecc200_80x80 : 
    begin 
      SetLength(y, Length(Ploy48)); 
      for i := 0 to 48 do y[i] := Ploy48[i]; 
    end; 
    ecc200_88x88 : 
    begin 
      SetLength(y, Length(Ploy56)); 
      for i := 0 to 56 do y[i] := Ploy56[i]; 
    end; 
    ecc200_96x96 : 
    begin 
      SetLength(y, Length(Ploy68)); 
      for i := 0 to 68 do y[i] := Ploy68[i]; 
    end; 
    ecc200_104x104 : 
    begin 
      SetLength(y, Length(Ploy56)); 
      for i := 0 to 56 do y[i] := Ploy56[i]; 
    end; 
    ecc200_120x120 : 
    begin 
      SetLength(y, Length(Ploy68)); 
      for i := 0 to 68 do y[i] := Ploy68[i]; 
    end; 
    ecc200_132x132 : 
    begin 
      SetLength(y, Length(Ploy62)); 
      for i := 0 to 62 do y[i] := Ploy62[i]; 
    end; 
    ecc200_144x144 : 
    begin 
      SetLength(y, Length(Ploy62)); 
      for i := 0 to 62 do y[i] := Ploy62[i]; 
    end; 
    ecc200_8x18 : 
    begin 
      SetLength(y, Length(Ploy7)); 
      for i := 0 to 7 do y[i] := Ploy7[i]; 
    end; 
    ecc200_8x32 : 
    begin 
      SetLength(y, Length(Ploy11)); 
      for i := 0 to 11 do y[i] := Ploy11[i]; 
    end; 
    ecc200_12x26 : 
    begin 
      SetLength(y, Length(Ploy14)); 
      for i := 0 to 14 do y[i] := Ploy14[i]; 
    end; 
    ecc200_12x36 : 
    begin 
      SetLength(y, Length(Ploy18)); 
      for i := 0 to 18 do y[i] := Ploy18[i]; 
    end; 
    ecc200_16x36 : 
    begin 
      SetLength(y, Length(Ploy24)); 
      for i := 0 to 24 do y[i] := Ploy24[i]; 
    end; 
    ecc200_16x48 : 
    begin 
      SetLength(y, Length(Ploy28)); 
      for i := 0 to 28 do y[i] := Ploy28[i]; 
    end; 
  end; 
 
  SetLength(Result, ECC200SymbolParams[Size].DataLength + ECC200SymbolParams[Size].ErrorLength); 
  BlockCount := ECC200SymbolParams[Size].BlockCount; 
  DataLen := ECC200SymbolParams[Size].BlockDataLength; 
  ErrorLen := ECC200SymbolParams[Size].BlockErrorLength; 
 
  for i := 0 to BlockCount -1 do 
  begin 
    x := nil; 
    if (Size = ECC200_144x144) and (i >= 8) then 
      DataLen := 155; 
    SetLength(x, DataLen + ErrorLen); 
    p := i; 
    for j := High(x) downto High(x) - DataLen + 1 do 
    begin 
      x[j] := CodewordStream[p]; 
      Result[p] := CodewordStream[p]; 
      inc(p, BlockCount); 
    end; 
    z := PloyMod(x, y); 
    for j := High(z) downto 0 do 
    begin 
      Result[p] := z[j]; 
      inc(p, BlockCount); 
    end; 
  end; 
end; 
 
function Mapping(EncodeStream : TByteArray; Size : TECC200Size) : TByteArray; 
type 
  TExpandByte = array [0..7] of byte; 
var 
  E : array of TExpandByte; 
  r : array of integer; 
  i, j : integer; 
  b : byte; 
 
  p : TECC200SymbolParam; 
 
  //These vars are from ECC200 Standard 
  nrow, ncol : integer; 
  chr, row, col : integer; 
 
  procedure module(row, col, chr, bit : integer); 
  begin 
    if row < 0 then 
    begin 
      inc(row, nrow); 
      inc(col, 4 - ((nrow + 4) mod 8)); 
    end; 
    if col < 0 then 
    begin 
      inc(col, ncol); 
      inc(row, 4 - ((ncol + 4) mod 8)); 
    end; 
 
    r[row * ncol + col] := chr * 10 + 1; 
    Result[row * ncol + col] := E[chr - 1, bit - 1]; 
  end; 
 
  procedure utah(row, col, chr : integer); 
  begin 
    module(row - 2, col - 2, chr, 1); 
    module(row - 2, col - 1, chr, 2); 
    module(row - 1, col - 2, chr, 3); 
    module(row - 1, col - 1, chr, 4); 
    module(row - 1, col, chr, 5); 
    module(row, col - 2, chr, 6); 
    module(row, col - 1, chr, 7); 
    module(row, col, chr, 8); 
  end; 
 
  procedure corner1(chr : integer); 
  begin 
    module(nrow - 1, 0, chr, 1); 
    module(nrow - 1, 1, chr, 2); 
    module(nrow - 1, 2, chr, 3); 
    module(0, ncol - 2, chr, 4); 
    module(0, ncol - 1, chr, 5); 
    module(1, ncol - 1, chr, 6); 
    module(2, ncol - 1, chr, 7); 
    module(3, ncol - 1, chr, 8); 
  end; 
 
  procedure corner2(chr : integer); 
  begin 
    module(nrow - 3, 0, chr, 1); 
    module(nrow - 2, 0, chr, 2); 
    module(nrow - 1, 0, chr, 3); 
    module(0, ncol - 4, chr, 4); 
    module(0, ncol - 3, chr, 5); 
    module(0, ncol - 2, chr, 6); 
    module(0, ncol - 1, chr, 7); 
    module(1, ncol - 1, chr, 8); 
  end; 
 
  procedure corner3(chr : integer); 
  begin 
    module(nrow - 3, 0, chr, 1); 
    module(nrow - 2, 0, chr, 2); 
    module(nrow - 1, 0, chr, 3); 
    module(0, ncol - 2, chr, 4); 
    module(0, ncol - 1, chr, 5); 
    module(1, ncol - 1, chr, 6); 
    module(2, ncol - 1, chr, 7); 
    module(3, ncol - 1, chr, 8); 
  end; 
 
  procedure corner4(chr : integer); 
  begin 
    module(nrow - 1, 0, chr, 1); 
    module(nrow - 1, ncol - 1, chr, 2); 
    module(0, ncol - 3, chr, 3); 
    module(0, ncol - 2, chr, 4); 
    module(0, ncol - 1, chr, 5); 
    module(1, ncol - 3, chr, 6); 
    module(1, ncol - 2, chr, 7); 
    module(1, ncol - 1, chr, 8); 
  end; 
var 
  mmm : integer; 
begin 
  p := ECC200SymbolParams[Size]; 
  mmm := Length(EncodeStream); 
  SetLength(e, mmm); 
  for i:= 0 to High(E) do 
  begin 
    b := EncodeStream[i]; 
    for j := 7 downto 0 do 
    begin 
      E[i, j] := b mod 2; 
      b := b shr 1; 
    end; 
  end; 
 
  ncol := p.RegionCols * p.RegionHCount; 
  nrow := p.RegionRows * p.RegionVCount; 
 
  SetLength(Result, ncol * nrow); 
  SetLength(r, ncol * nrow); 
 
  for i := 0 to High(Result) do 
  begin 
    Result[i]:= 0; 
    r[i] := 0; 
  end; 
 
  chr := 1; 
  row := 4; 
  col := 0; 
 
  repeat 
 
    if (row = nrow) and (col = 0) then 
    begin 
      corner1(chr); 
      inc(chr); 
    end; 
 
    if (row = nrow - 2) and (col = 0) and (ncol mod 4 <> 0) then 
    begin 
      corner2(chr); 
      inc(chr); 
    end; 
 
    if (row = nrow - 2) and (col = 0) and (ncol mod 8 = 4) then 
    begin 
      corner3(chr); 
      inc(chr); 
    end; 
 
    if (row = nrow + 4) and (col = 2) and (ncol mod 8 = 0) then 
    begin 
      corner4(chr); 
      inc(chr); 
    end; 
 
    repeat 
 
      if (row < nrow) and (col >= 0) and (r[row * ncol + col] = 0) then 
      begin 
        utah(row, col, chr); 
        inc(chr); 
      end; 
      dec(row, 2); 
      inc(col, 2); 
    until not((row >= 0) and (col <ncol)); 
    inc(row); 
    inc(col, 3); 
 
    repeat 
      if (row >= 0) and (col < ncol) and (r[row * ncol + col] = 0) then 
      begin 
        utah(row, col, chr); 
        inc(chr); 
      end; 
      inc(row, 2); 
      dec(col, 2); 
    until not ((row < nrow) and (col >= 0)); 
    inc(row, 3); 
    inc(col); 
  until not ((row < nrow) or (col < ncol)); 
 
  if r[nrow * ncol - 1] = 0 then 
  begin 
    Result[nrow * ncol - 1] := 1; 
    Result[nrow * ncol - ncol - 2] := 1; 
    r[nrow * ncol - 1] := 1; 
    r[nrow * ncol - ncol - 2] := 1; 
  end; 
end; 
 
function Alignment(MatrixMapping : TByteArray; Size : TECC200Size) : TByteArray; 
var 
  i, j, m, n : integer; 
  row, col, row1, col1 : integer; 
  p : TECC200SymbolParam; 
  ncol, ncol1 : integer; 
  b : byte; 
  Demo: Boolean; 
begin 
  p := ECC200SymbolParams[Size]; 
  SetLength(Result, p.Rows * p.Cols); 
  ncol := p.Cols - 2 * p.RegionHCount; 
  ncol1 := p.Cols; 
  for i := 0 to High(Result) do Result[i] := 0; 
  Demo := False; 
{$IFDEF DEMO} 
  if (YearOf(Now) > 2006) and (Random(100) > 90) then Demo := True; 
{$ENDIF} 
 
  for i := 0 to p.RegionHCount - 1 do 
  begin 
    for j := 0 to p.RegionVCount -1 do 
    begin 
      for m := 0 to p.RegionCols - 1 do 
      begin 
        for n := 0 to p.RegionRows - 1 do 
        begin 
          row := j * p.RegionRows + n; 
          col := i * p.RegionCols + m; 
          row1 := j * (p.RegionRows + 2) + 1 + n; 
          col1 := i * (p.RegionCols + 2) + 1 + m; 
          Result[row1 * ncol1 + col1] := MatrixMapping[row * ncol + col]; 
{$IFDEF DEMO} 
          if Demo then Result[row1 * ncol1 + col1] := Random(100) mod 2; 
{$ENDIF} 
        end; 
      end; 
    end; 
  end; 
  for i := 0 to p.RegionHCount - 1 do 
  begin 
    col := i * (p.RegionCols + 2); 
    col1 := (i + 1) * (p.RegionCols + 2) - 1; 
    for j := 0 to p.Rows - 1 do 
    begin 
      Result[j * p.Cols + col] := 1; 
      Result[j * p.Cols + col1] := j mod 2; 
    end; 
  end; 
  for i := 0 to p.RegionVCount - 1 do 
  begin 
    row := i * (p.RegionRows + 2); 
    row1 := (i + 1) * (p.RegionRows + 2) - 1; 
    for j := 0 to p.Cols - 1 do 
    begin 
      Result[row * p.Cols + j] := (j + 1) mod 2; 
      Result[row1 * p.Cols + j] := 1; 
    end; 
  end;  
end; 
 
procedure CalcECC200(Source : TByteArray; Size : TECC200Size; 
  Shape : TECC200Shape; 
  var DataMatrix : TByteArray; 
  var MatrixWidth, MatrixHeight : integer); 
var 
  CodewordStream : TByteArray; 
  EncodeStream : TByteArray; 
  MatrixMapping : TByteArray; 
  EncodeSize : TECC200Size; 
  I: Integer; 
begin 
  MakeCodeword(Source, Size, Shape, CodewordStream, EncodeSize); 
  EncodeStream := Encode(CodewordStream, EncodeSize); 
  MatrixMapping := Mapping(EncodeStream, EncodeSize); 
  DataMatrix := Alignment(MatrixMapping, EncodeSize); 
  MatrixWidth := ECC200SymbolParams[EncodeSize].Cols; 
  MatrixHeight := ECC200SymbolParams[EncodeSize].Rows; 
end;

end.
