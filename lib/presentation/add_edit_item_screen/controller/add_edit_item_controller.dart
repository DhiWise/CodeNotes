import '/core/app_export.dart';
import 'package:zaiynab_s_application1/presentation/add_edit_item_screen/models/add_edit_item_model.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:zaiynab_s_application1/core/utils/progress_dialog_utils.dart';
import 'package:zaiynab_s_application1/supabase/models/codesheet_model.dart';

class AddEditItemController extends GetxController with StateMixin<dynamic> {
  TextEditingController codeTitleController = TextEditingController();

  TextEditingController writeHereController = TextEditingController();

  Rx<AddEditItemModel> addEditItemModelObj = AddEditItemModel().obs;

  var codeSheetModel = CodeSheetModel();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    codeTitleController.dispose();
    writeHereController.dispose();
  }

  Future<void> createCodeSheetDocument({dynamic reqParams}) async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('codeSheet')
          .insert(reqParams)
          // .single()
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 201) {
        onCreateCodeSheetDocumentSuccess(response.data);
      } else {
        onCreateCodeSheetDocumentError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onCreateCodeSheetDocumentError(err.toString());
    }
  }

  void onCreateCodeSheetDocumentSuccess(dynamic response) {
    if (response != null) {
      codeSheetModel = CodeSheetModel.fromJson(response);
    }
    Get.toNamed(AppRoutes.mainitemScreen);
  }

  void onCreateCodeSheetDocumentError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
  }
}
