import 'package:zaiynab_s_application1/presentation/main_screen/main_screen.dart';
import 'package:zaiynab_s_application1/presentation/main_screen/binding/main_binding.dart';
import 'package:zaiynab_s_application1/presentation/mainitem_screen/mainitem_screen.dart';
import 'package:zaiynab_s_application1/presentation/mainitem_screen/binding/mainitem_binding.dart';
import 'package:zaiynab_s_application1/presentation/add_edit_item_screen/add_edit_item_screen.dart';
import 'package:zaiynab_s_application1/presentation/add_edit_item_screen/binding/add_edit_item_binding.dart';
import 'package:zaiynab_s_application1/presentation/menu_screen/menu_screen.dart';
import 'package:zaiynab_s_application1/presentation/menu_screen/binding/menu_binding.dart';
import 'package:zaiynab_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:zaiynab_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String mainScreen = '/main_screen';

  static String mainitemScreen = '/mainitem_screen';

  static String addEditItemScreen = '/add_edit_item_screen';

  static String menuScreen = '/menu_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: mainScreen,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
      ],
    ),
    GetPage(
      name: mainitemScreen,
      page: () => MainitemScreen(),
      bindings: [
        MainitemBinding(),
      ],
    ),
    GetPage(
      name: addEditItemScreen,
      page: () => AddEditItemScreen(),
      bindings: [
        AddEditItemBinding(),
      ],
    ),
    GetPage(
      name: menuScreen,
      page: () => MenuScreen(),
      bindings: [
        MenuBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => MainitemScreen(),
      bindings: [
        MainitemBinding(),
      ],
    )
  ];
}
