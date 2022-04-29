import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sample_app_getx/controller/main/main_controller.dart';
import 'package:sample_app_getx/core/theme/app_colors.dart';
import 'package:sample_app_getx/ui/main/home/home_page.dart';
import 'package:sample_app_getx/ui/main/profile/profile_page.dart';
import 'package:sample_app_getx/ui/main/orders/basket_page.dart';
import '../favourites/favourites_page.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) => Scaffold(
        body: IndexedStack(
          index: controller.bottomMenu.index,
          children: const [
            HomePage(),
            BasketPage(),
            FavoritePage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: AppColors.unselectedBottomNavItem,
          selectedItemColor: AppColors.assets,
          onTap: (pos) => controller.setMenu(BottomMenu.values[pos]),
          currentIndex: controller.bottomMenu.index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
          elevation: 8,
          items: [
            _bottomNavigationBarItem(
              icon: 'ic_home',
              label: 'Главная'.tr,
              activeIcon: 'ic_home_active',
            ),
            _bottomNavigationBarItem(
              icon: 'ic_basket',
              label: 'Корзина'.tr,
              activeIcon: 'ic_basket_active',
            ),
            _bottomNavigationBarItem(
              icon: 'ic_favourite',
              label: 'Избранные'.tr,
              activeIcon: 'ic_favourite_active',
            ),
            _bottomNavigationBarItem(
              icon: 'ic_profile',
              label: 'Профиль'.tr,
              activeIcon: 'ic_profile_active',
            ),
          ],
        ),
      ),
    );
  }

  _bottomNavigationBarItem({
    required String activeIcon,
    required String icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset('assets/icons/$icon.svg'),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset('assets/icons/$activeIcon.svg'),
      ),
      label: label,
    );
  }
}
