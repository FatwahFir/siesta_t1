import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siesta_t1/app/core/extensions/ctx.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.text,
    required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 30.h,
          ),
          Text(
            text,
            style: context.titleMedium,
          )
        ],
      ),
    );
  }
}
