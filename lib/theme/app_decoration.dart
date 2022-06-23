import 'package:flutter/material.dart';
import 'package:zaiynab_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get groupstylegray50cornerradius => BoxDecoration(
        color: ColorConstant.gray50,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
      );
  static BoxDecoration get textstyleoutfitregular141 => BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        ),
        border: Border.all(
          color: ColorConstant.red200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get groupstylered50 => BoxDecoration(
        color: ColorConstant.red50,
      );
  static BoxDecoration get groupstylewhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}
