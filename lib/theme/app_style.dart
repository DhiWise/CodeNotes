import 'package:flutter/material.dart';
import 'package:zaiynab_s_application1/core/app_export.dart';

class AppStyle {
  static TextStyle textstyleregular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleregular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleoutfitbold18 = TextStyle(
    color: ColorConstant.gray900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Outfit',
    fontWeight: FontWeight.w700,
  );

  static TextStyle textstyleoutfitmedium221 = textstyleoutfitmedium11.copyWith(
    fontSize: getFontSize(
      22,
    ),
  );

  static TextStyle textstyleoutfitmedium22 = textstyleoutfitmedium221.copyWith(
    color: ColorConstant.gray900,
  );

  static TextStyle textstyleoutfitregular141 =
      textstyleoutfitregular14.copyWith(
    color: ColorConstant.black900,
  );

  static TextStyle textstyleoutfitmedium11 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      11,
    ),
    fontFamily: 'Outfit',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textstyleoutfitregular142 =
      textstyleoutfitregular14.copyWith(
    color: ColorConstant.black900Cc,
  );

  static TextStyle textstyleoutfitmedium14 = TextStyle(
    color: ColorConstant.gray600,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Outfit',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textstyleregular0 = TextStyle(
    color: ColorConstant.black900,
  );

  static TextStyle textstyleoutfitregular16 = textstyleoutfitregular18.copyWith(
    fontSize: getFontSize(
      16,
    ),
  );

  static TextStyle textstyleoutfitregular14 = textstyleoutfitregular18.copyWith(
    fontSize: getFontSize(
      14,
    ),
  );

  static TextStyle textstyleoutfitregular18 = TextStyle(
    color: ColorConstant.gray800,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Outfit',
    fontWeight: FontWeight.w400,
  );
}
