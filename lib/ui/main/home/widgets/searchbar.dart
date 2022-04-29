import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_app_getx/core/custom_widgets/appbars/sample_app_bar.dart';

class SearchBarItem extends StatelessWidget {
  const SearchBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color(0xFFF9F9FD),
          height: 44.h,
          width: 308.w,
          child: TextFormField(

          )
        ),
      ],
    );
  }
}
