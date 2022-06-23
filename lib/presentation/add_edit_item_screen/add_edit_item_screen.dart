import 'controller/add_edit_item_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zaiynab_s_application1/core/app_export.dart';
import 'package:zaiynab_s_application1/supabase/models/codesheet_model.dart';

class AddEditItemScreen extends GetWidget<AddEditItemController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.red50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration: BoxDecoration(color: ColorConstant.red50),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(24.00)),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(16.00),
                                              right: getHorizontalSize(15.00)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      2.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      2.00)),
                                                          child: Container(
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00),
                                                              child: SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgArrowleft,
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      24.00)),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      28.00),
                                                              width: getHorizontalSize(
                                                                  100.00),
                                                              child: TextFormField(
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  controller:
                                                                      controller
                                                                          .codeTitleController,
                                                                  decoration: InputDecoration(
                                                                      hintText:
                                                                          "lbl_code_title"
                                                                              .tr,
                                                                      hintStyle: AppStyle
                                                                          .textstyleoutfitmedium221
                                                                          .copyWith(
                                                                              fontSize: getFontSize(22.0),
                                                                              color: ColorConstant.black900),
                                                                      isDense: true),
                                                                  style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(22.0), fontFamily: 'Outfit', fontWeight: FontWeight.w500))))
                                                    ]),
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapTxtSave();
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                                    8.00),
                                                            bottom:
                                                                getVerticalSize(
                                                                    6.00)),
                                                        child: Text(
                                                            "lbl_save".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstyleoutfitmedium11
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            11)))))
                                              ])))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(16.00),
                                      top: getVerticalSize(16.00),
                                      right: getHorizontalSize(16.00),
                                      bottom: getVerticalSize(550.00)),
                                  child: Container(
                                      height: getVerticalSize(591.00),
                                      width: getHorizontalSize(358.00),
                                      child: TextFormField(
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.writeHereController,
                                          decoration: InputDecoration(
                                              hintText:
                                                  "msg_this_is_code_of".tr,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              8.00)),
                                                  borderSide: BorderSide.none),
                                              filled: true,
                                              fillColor: ColorConstant.gray50,
                                              isDense: true),
                                          style: TextStyle(
                                              color: ColorConstant.gray500,
                                              fontSize: getFontSize(20.0),
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.w300)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(42.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(24.00)),
                                  child: Container(
                                      height: getVerticalSize(64.00),
                                      width: getHorizontalSize(358.00),
                                      child: SvgPicture.asset(
                                          ImageConstant.imgGroup5,
                                          fit: BoxFit.fill)))
                            ]))))));
  }

  onTapTxtSave() async {
    var codeSheetModelReq = CodeSheetModel(
      descriptions: controller.writeHereController.text.toString(),
      short: controller.codeTitleController.text.toString(),
    );
    controller.createCodeSheetDocument(
      reqParams: codeSheetModelReq.toJson(),
    );
  }
}
