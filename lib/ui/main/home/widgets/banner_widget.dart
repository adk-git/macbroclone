import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sample_app_getx/controller/main/home/home_controller.dart';
import 'banner_item.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (Get.width - 44) / 3;
    return GetBuilder<HomeController>(
      builder: (controller) => Visibility(
        visible: controller.banners.isNotEmpty,
        child: Container(
          height: 180.h,
          // width * 88 / 112,
          margin:  EdgeInsets.only(left: 16.w, top: 16.h),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: controller.banners.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var banner = controller.banners[index];
              return BannerItem(
                banner: banner,
                onTap: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}
