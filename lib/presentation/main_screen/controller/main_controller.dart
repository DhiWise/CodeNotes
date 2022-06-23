import '/core/app_export.dart';
import 'package:zaiynab_s_application1/presentation/main_screen/models/main_model.dart';

class MainController extends GetxController with StateMixin<dynamic> {
  Rx<MainModel> mainModelObj = MainModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
