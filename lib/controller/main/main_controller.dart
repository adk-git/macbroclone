import 'package:sample_app_getx/base/base_controller.dart';

class MainController extends BaseController {
  BottomMenu _bottomMenu = BottomMenu.home;

  void setMenu(BottomMenu menu) {
    _bottomMenu = menu;
    update();
  }

  BottomMenu get bottomMenu => _bottomMenu;
}

enum BottomMenu { home, basket, favorite, profile }
