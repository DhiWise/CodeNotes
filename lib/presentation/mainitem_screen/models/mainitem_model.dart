import 'package:get/get.dart';
import 'frame273_item_model.dart';
import 'main_screen_item_list_view_item_model.dart';

class MainitemModel {
  RxList<Frame273ItemModel> frame273ItemList =
      RxList.filled(0, Frame273ItemModel());

  RxList<MainScreenItemListViewItemModel> mainScreenItemListViewItemList =
      RxList.filled(2, MainScreenItemListViewItemModel());
}
