import 'package:get/get.dart';
import 'package:sample_app_getx/bindings/main_bindings.dart';
import 'package:sample_app_getx/bindings/splash_bindings.dart';
import 'package:sample_app_getx/routes/app_routes.dart';
import 'package:sample_app_getx/ui/internet_connection/internet_connection_page.dart';
import 'package:sample_app_getx/ui/main/main/main_page.dart';
import 'package:sample_app_getx/ui/splash/splash_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => const MainPage(),
      binding: MainBindings(),
    ),
    GetPage(
      name: AppRoutes.internetConnection,
      page: () => const InternetConnectionPage(),
    ),
  ];
}
