import '../controller/mainitem_controller.dart';
import 'package:get/get.dart';

class MainitemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainitemController());
  }
}
