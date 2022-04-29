import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:sample_app_getx/bindings/splash_bindings.dart';
import 'package:sample_app_getx/core/constants/constants.dart';
import 'package:sample_app_getx/data/hive/hive_database.dart';
import 'package:sample_app_getx/data/hive/products.dart';
import 'package:sample_app_getx/data/source/local_source.dart';
import 'package:sample_app_getx/routes/app_pages.dart';
import 'package:sample_app_getx/routes/app_routes.dart';
import 'package:sample_app_getx/translations/app_translations.dart';
import 'core/theme/app_theme.dart';

// flutter pub run flutter_launcher_icons:main
// flutter run -d windows --no-sound-null-safety
// flutter build apk --release --no-sound-null-safety
// flutter build apk --split-per-abi --no-sound-null-safety
// flutter build appbundle --release --no-sound-null-safety
// flutter pub run build_runner watch --delete-conflicting-outputs

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initial db
  await Hive.initFlutter();
  Hive.registerAdapter(ProductAdapter());
  await HiveDatabase.getInstance();

  /// local source
  await LocalSource.getInstance();

  runApp(MyApp(currentLocale: LocalSource.instance.getLocale()));
}

class MyApp extends StatelessWidget {
  final String currentLocale;

  const MyApp({
    Key? key,
    required this.currentLocale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: const [GestureType.onTap],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_) => GetMaterialApp(
          title: "Sample",
          navigatorKey: AppConstants.navigatorKey,
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          debugShowCheckedModeBanner: false,
          initialBinding: SplashBindings(),
          initialRoute: AppRoutes.initial,
          getPages: AppPages.pages,
          locale: Locale(currentLocale),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate
          ],
          translationsKeys: AppTranslations.translations,
          defaultTransition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 100),
        ),
      ),
    );
  }
}
