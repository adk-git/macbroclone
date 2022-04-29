import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_app_getx/controller/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (ctr) => Scaffold(
        body: Column(
          children: [
            //SizedBox(height: 366.h),
            Padding(
              padding: EdgeInsets.only(top: 366.h, left: 73.w),
              child: SvgPicture.asset(
                'assets/icons/splash_text.svg',
                height: 80.h,
                width: 230.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
