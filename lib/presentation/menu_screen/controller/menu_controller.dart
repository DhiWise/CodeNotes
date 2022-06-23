import '/core/app_export.dart';
import 'package:zaiynab_s_application1/presentation/menu_screen/models/menu_model.dart';

class MenuController extends GetxController with StateMixin<dynamic> {
  Rx<MenuModel> menuModelObj = MenuModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
