import 'package:zaiynab_s_application1/presentation/mainitem_screen/models/frame273_item_model.dart';

import '/core/app_export.dart';
import 'package:zaiynab_s_application1/presentation/mainitem_screen/models/mainitem_model.dart';
import 'package:supabase/supabase.dart';
import 'package:zaiynab_s_application1/core/utils/progress_dialog_utils.dart';
import 'package:zaiynab_s_application1/supabase/models/codesheet_model.dart';

class MainitemController extends GetxController with StateMixin<dynamic> {
  Rx<MainitemModel> mainitemModelObj = MainitemModel().obs;

  var codeSheetModel = <CodeSheetModel>[];

  @override
  void onReady() async {
    super.onReady();
    fetchCodeSheetCollection();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchCodeSheetCollection() async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('codeSheet')
          .select()
          .order('created_at', ascending: false)
          .limit(100000)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 200) {
        onFetchCodeSheetCollectionSuccess(response.data);
      } else {
        onFetchCodeSheetCollectionError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onFetchCodeSheetCollectionError(err.toString());
    }
  }

  void onFetchCodeSheetCollectionSuccess(dynamic response) {
    if (response != null) {
      codeSheetModel =
          (response as List).map((e) => CodeSheetModel.fromJson(e)).toList();
      if (codeSheetModel != null) {
        codeSheetModel.forEach((element) {
            Frame273ItemModel frame273itemModel = Frame273ItemModel();
            frame273itemModel.printHelloWorTxt.value = element.short!.toString();
            frame273itemModel.dateTxt.value = element.createdAt!.toString();
            frame273itemModel.desTxt.value = element.descriptions!.toString();
            mainitemModelObj.value.frame273ItemList.add(frame273itemModel);
        });
      }
    }
  }

  void onFetchCodeSheetCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
  }
}
