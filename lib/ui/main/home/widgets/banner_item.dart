import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_app_getx/core/theme/app_colors.dart';
import 'package:sample_app_getx/core/theme/app_utils.dart';
import 'package:sample_app_getx/data/models/banners/banners_response.dart';

class BannerItem extends StatelessWidget {
  final Banners? banner;
  final Function()? onTap;

  const BannerItem({Key? key, this.banner, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 340.w,
      height: 180,
      decoration: const BoxDecoration(
        borderRadius: AppUtils.kBorderRadius12,
        color: AppColors.white,
      ),
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          ///banner image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: AppUtils.kBorderRadius12,
              child: Hero(
                tag: banner?.id ?? '',
                child: CachedNetworkImage(
                  imageUrl: banner?.image ?? '',
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      const Center(child: CupertinoActivityIndicator()),
                  errorWidget: (context, url, error) =>
                      Image.asset("assets/png/logo.png"),
                ),
              ),
            ),
          ),

          /// onPressed banner
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: AppUtils.kBorderRadius12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
