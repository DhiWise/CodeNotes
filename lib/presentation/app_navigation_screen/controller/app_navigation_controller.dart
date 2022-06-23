import '/core/app_export.dart';
import 'package:zaiynab_s_application1/presentation/app_navigation_screen/models/app_navigation_model.dart';

class AppNavigationController extends GetxController with StateMixin<dynamic> {
  Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
