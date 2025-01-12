import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siesta_t1/app/core/themes/theme.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.color,
    required this.icon,
    this.isShowBadge = false,
  });

  final Color color;
  final IconData icon;
  final bool isShowBadge;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.w,
      height: 35.h,
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Center(
        child: Stack(
          children: [
            Icon(
              icon,
              color: color,
              size: 20.h,
            ),
            Visibility(
              visible: isShowBadge,
              child: Positioned(
                right: 2.w,
                child: Icon(
                  Icons.circle,
                  color: red,
                  size: 8.h,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
