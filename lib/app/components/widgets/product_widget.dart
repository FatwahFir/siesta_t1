import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siesta_t1/app/core/extensions/ctx.dart';
import 'package:siesta_t1/app/core/themes/theme.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.title,
    required this.distance,
    required this.review,
    required this.image,
  });

  final String title;
  final String image;
  final double distance;
  final double review;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.width,
            height: 97.h,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
            style: context.titleMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$distance Km',
                style: context.bodySmall,
              ),
              Icon(
                Icons.circle,
                size: 5.h,
                color: context.outline,
              ),
              Icon(
                Icons.star,
                size: 18.h,
                color: yellow,
              ),
              Text(
                '$review reviews',
                style: context.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
