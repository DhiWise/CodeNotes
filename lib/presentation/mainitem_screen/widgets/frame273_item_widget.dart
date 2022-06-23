import 'package:flutter_svg/flutter_svg.dart';

import '../controller/mainitem_controller.dart';
import '../models/frame273_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zaiynab_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Frame273ItemWidget extends StatelessWidget {
  Frame273ItemWidget(this.frame273ItemModelObj);

  Frame273ItemModel frame273ItemModelObj;

  var controller = Get.find<MainitemController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        20
      ),
      decoration: BoxDecoration(
        color: ColorConstant.gray50,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                16.00,
              ),
              top: getVerticalSize(
                4.50,
              ),
              right: getHorizontalSize(
                16.00,
              ),
              bottom: getVerticalSize(
                4.50,
              ),
            ),
            child: Obx(
              () => Text(
                frame273ItemModelObj.printHelloWorTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.textstyleoutfitbold18.copyWith(
                  fontSize: getFontSize(
                    18,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                16.00,
              ),
              top: getVerticalSize(
                9.00,
              ),
              right: getHorizontalSize(
                16.00,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(
                  ()=> Text(
                    frame273ItemModelObj.dateTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.textstyleoutfitmedium14.copyWith(
                      fontSize: getFontSize(
                        14,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      14.67,
                    ),
                    top: getVerticalSize(
                      0.67,
                    ),
                    bottom: getVerticalSize(
                      1.48,
                    ),
                  ),
                  child: Container(
                    height: getVerticalSize(
                      15.85,
                    ),
                    width: getHorizontalSize(
                      16.67,
                    ),
                    child: SvgPicture.asset(
                      ImageConstant.imgVector4,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: getHorizontalSize(
                324.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                top: getVerticalSize(
                  11.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
                bottom: getVerticalSize(
                  16.00,
                ),
              ),
              child: Obx(
                ()=> Text(
                  frame273ItemModelObj.desTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.textstyleoutfitregular142.copyWith(
                    fontSize: getFontSize(
                      14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
