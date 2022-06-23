import '../controller/add_edit_item_controller.dart';
import 'package:get/get.dart';

class AddEditItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddEditItemController());
  }
}
