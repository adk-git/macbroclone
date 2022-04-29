import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sample_app_getx/controller/main/home/home_controller.dart';
import 'package:sample_app_getx/core/custom_widgets/appbars/sample_app_bar.dart';
import 'package:sample_app_getx/core/custom_widgets/flappy_searchbar/flappy_search_bar.dart';
import 'package:sample_app_getx/core/custom_widgets/loading_widgets/modal_progress_hud.dart';
import 'package:sample_app_getx/core/theme/app_colors.dart';
import 'package:sample_app_getx/core/theme/app_text_style.dart';
import 'package:sample_app_getx/core/theme/app_utils.dart';
import 'package:sample_app_getx/data/models/categories/category_response.dart';
import 'package:sample_app_getx/ui/main/home/widgets/banner_widget.dart';
import 'package:sample_app_getx/ui/main/home/widgets/searchbar.dart';

// import 'package:sample_app_getx/ui/main/home/widgets/banner_widget.dart';
// import 'package:sample_app_getx/ui/main/home/widgets/basket_button_widget.dart';
// import 'package:sample_app_getx/ui/main/home/widgets/product_list_widget.dart';
// import 'package:sample_app_getx/ui/main/home/widgets/search_item.dart';
// import 'package:sample_app_getx/ui/main/home/widgets/tab_list_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SearchBarItem(),
        toolbarHeight: 56.h,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: BannerWidget(),
            )
          ],
        ),
        // child: SearchBar<Products>(
        //   title: 'search'.tr,
        //   titleStyle: AppTextStyles.appTitleSearch,
        //   onError: (error) => Center(
        //     child: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         SvgPicture.asset('assets/svg/ic_empty.svg'),
        //         Text('not_found'.tr, style: AppTextStyles.searchNotFound)
        //       ],
        //     ),
        //   ),
        //   hintText: 'search'.tr,
        //   hintStyle: AppTextStyles.searchItem.copyWith(
        //     color: AppColors.baseText50,
        //   ),
        //   textStyle: AppTextStyles.searchItem,
        //   searchBarPadding: AppUtils.kAllPadding12,
        //   cancellationWidget: Text(
        //     'cancel'.tr,
        //     maxLines: 1,
        //     style: AppTextStyles.searchItem,
        //     textAlign: TextAlign.center,
        //   ),
        //   icon: Padding(
        //     padding: AppUtils.kLeftPadding8,
        //     child: SvgPicture.asset('assets/svg/ic_search.svg'),
        //   ),
        //   placeHolder: GetBuilder<HomeController>(
        //     builder: (ctr) {
        //       return ModalProgressHUD(
        //         inAsyncCall: controller.isLoading,
        //         child: Material(
        //           color: AppColors.background,
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: [
        //               Expanded(
        //                 child: CustomScrollView(
        //                   slivers: [
        //                     SliverList(
        //                       delegate: SliverChildBuilderDelegate(
        //                         (_, index) => const BannerWidget(),
        //                         childCount: 1,
        //                       ),
        //                     ),
        //                     SliverAppBar(
        //                       expandedHeight: 0,
        //                       floating: true,
        //                       backgroundColor: AppColors.background,
        //                       toolbarHeight: 0,
        //                       elevation: 0,
        //                       titleSpacing: 0,
        //                       bottom: PreferredSize(
        //                         preferredSize: const Size.fromHeight(60),
        //                         child: Column(
        //                           mainAxisSize: MainAxisSize.min,
        //                           children: const [
        //                             AppUtils.kBoxHeight12,
        //                             TabListWidget(),
        //                             AppUtils.kBoxHeight12,
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                     const ProductListWidget(),
        //                   ],
        //                   physics: const BouncingScrollPhysics(),
        //                 ),
        //               ),
        //               const BasketButtonWidget()
        //             ],
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        //   onItemFound: (product, index) => SearchItem(
        //     product: product,
        //     onTap: () async {
        //       // Get.toNamed(Routes.PRODUCT_DETAIL, arguments: product);
        //     },
        //   ),
        //   onSearch: controller.searchProduct,
        //   listPadding: AppUtils.kAllPadding12,
        //   loader: Platform.isIOS
        //       ? const Center(child: CupertinoActivityIndicator(radius: 20))
        //       : const Center(child: CircularProgressIndicator()),
        // ),
      ),
    );
  }
}
