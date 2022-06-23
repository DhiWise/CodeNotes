import 'controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zaiynab_s_application1/core/app_export.dart';

class MainScreen extends GetWidget<MainController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                              right: getHorizontalSize(22.50)),
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
                                                                      .imgMenu,
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      24.00)),
                                                          child: Text(
                                                              "lbl_codepadlite"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstyleoutfitmedium22
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              22))))
                                                    ]),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            2.00),
                                                        bottom: getVerticalSize(
                                                            2.00)),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00),
                                                              child: SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgSearch,
                                                                  fit: BoxFit
                                                                      .fill)),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          30.50),
                                                                  top:
                                                                      getVerticalSize(
                                                                          3.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          3.00)),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          18.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          11.00),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgVector,
                                                                      fit: BoxFit
                                                                          .fill)))
                                                        ]))
                                              ])))),
                              Container(
                                  width: getHorizontalSize(313.00),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(253.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Text("msg_nothing_here_ad".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.textstyleoutfitregular18
                                          .copyWith(
                                              fontSize: getFontSize(18)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(24.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: IconButton(
                                      onPressed: () {
                                        onPressGroup2();
                                      },
                                      constraints: BoxConstraints(
                                          minHeight: getSize(70.00),
                                          minWidth: getSize(70.00)),
                                      padding: EdgeInsets.all(0),
                                      icon: Container(
                                          width: getSize(70.00),
                                          height: getSize(70.00),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(8.00)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: ColorConstant
                                                        .black90005,
                                                    spreadRadius:
                                                        getHorizontalSize(2.00),
                                                    blurRadius:
                                                        getHorizontalSize(2.00),
                                                    offset: Offset(0, 5))
                                              ]),
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(21.66),
                                              top: getVerticalSize(21.66),
                                              right: getHorizontalSize(21.66),
                                              bottom: getVerticalSize(21.66)),
                                          child: Image.asset(
                                              ImageConstant.imgGroup2))))
                            ]))))));
  }

  onPressGroup2() {
    Get.toNamed(AppRoutes.addEditItemScreen);
  }
}
