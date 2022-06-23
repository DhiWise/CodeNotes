import '../mainitem_screen/widgets/frame273_item_widget.dart';
import '../mainitem_screen/widgets/main_screen_item_list_view_item_widget.dart';
import 'controller/mainitem_controller.dart';
import 'models/frame273_item_model.dart';
import 'models/main_screen_item_list_view_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zaiynab_s_application1/core/app_export.dart';

class MainitemScreen extends GetWidget<MainitemController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.red50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(797.00),
                        width: size.width,
                        decoration: BoxDecoration(color: ColorConstant.red50),
                        child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: ColorConstant.red50),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: size.width,
                                                    margin: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            24.00)),
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                                    16.00),
                                                            right:
                                                                getHorizontalSize(
                                                                    22.50)),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                2.00),
                                                                            bottom: getVerticalSize(
                                                                                2.00)),
                                                                        child: Container(
                                                                            height:
                                                                                getSize(24.00),
                                                                            width: getSize(24.00),
                                                                            child: SvgPicture.asset(ImageConstant.imgMenu1, fit: BoxFit.fill))),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                24.00)),
                                                                        child: Text(
                                                                            "lbl_all_codes"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstyleoutfitmedium22.copyWith(fontSize: getFontSize(22))))
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
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Container(
                                                                            height:
                                                                                getSize(24.00),
                                                                            width: getSize(24.00),
                                                                            child: SvgPicture.asset(ImageConstant.imgSearch1, fit: BoxFit.fill)),
                                                                        Padding(
                                                                            padding: EdgeInsets.only(
                                                                                left: getHorizontalSize(30.50),
                                                                                top: getVerticalSize(3.00),
                                                                                bottom: getVerticalSize(3.00)),
                                                                            child: Container(height: getVerticalSize(18.00), width: getHorizontalSize(11.00), child: SvgPicture.asset(ImageConstant.imgVector1, fit: BoxFit.fill)))
                                                                      ]))
                                                            ])))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            26.00),
                                                        top: getVerticalSize(
                                                            21.00),
                                                        right:
                                                            getHorizontalSize(
                                                                26.00)),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                              "lbl_date_created"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstyleoutfitregular16
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              16),
                                                                      height:
                                                                          1.81)),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          15.00),
                                                                  top:
                                                                      getVerticalSize(
                                                                          8.50),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          8.50)),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          12.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          18.00),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgVector2,
                                                                      fit: BoxFit
                                                                          .fill)))
                                                        ]))),
                                            Obx(() =>
                                                ListView.builder(
                                                    physics:
                                                        BouncingScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: controller
                                                        .mainitemModelObj
                                                        .value
                                                        .frame273ItemList
                                                        .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      Frame273ItemModel
                                                          model = controller
                                                              .mainitemModelObj
                                                              .value
                                                              .frame273ItemList[index];
                                                      return Frame273ItemWidget(
                                                          model);
                                                    })),

                                          ]))),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                      height: getSize(56.00),
                                      width: getSize(56.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(18.00),
                                          top: getVerticalSize(20.00),
                                          right: getHorizontalSize(18.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: FloatingActionButton(
                                          backgroundColor:
                                              ColorConstant.whiteA700Bf,
                                          onPressed: () {
                                            onPressFloatingactionbutton();
                                          },
                                          child: Container(
                                              height: getSize(56.00),
                                              width: getSize(56.00),
                                              padding:
                                                  EdgeInsets.all(getSize(10)),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700Bf,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              28.00))),
                                              child: Container(
                                                  height:
                                                      getVerticalSize(28.00),
                                                  width:
                                                      getHorizontalSize(28.00),
                                                  child: SvgPicture.asset(
                                                      ImageConstant
                                                          .imgFrame276))))))
                            ]))))));
  }

  onPressFloatingactionbutton() {
    Get.toNamed(AppRoutes.addEditItemScreen);
  }
}
