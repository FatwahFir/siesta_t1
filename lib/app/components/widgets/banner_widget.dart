import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siesta_t1/app/core/extensions/ctx.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      width: context.width.w,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height: context.height.h,
            width: context.width.w,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/texture.png',
                ),
                fit: BoxFit.cover,
                opacity: 0.08,
              ),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF5DCB6A),
                  Color(0xFF4FAF5A),
                ],
                stops: [0.5, 1.0],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Claim your discount 30% daily now!',
                        style: context.titleLage.copyWith(color: Colors.white),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(context.tertiary),
                          padding: WidgetStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 8.h),
                          ),
                          minimumSize: WidgetStateProperty.all<Size>(
                            Size(50.w, 20.h),
                          ),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                50.r,
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          'Order now',
                          style:
                              context.bodySmall.copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..scale(-1.75.w, 1.75.h), // Membalik secara horizontal
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.h, left: 20.w),
                    child: Image.asset(
                      'assets/images/banner.png',
                    ),
                  ),
                )),
              ],
            ),
          ),
          Positioned(
            bottom: 10.h,
            right: 12.w,
            child: Container(
              height: 23,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    3,
                    (index) => Container(
                      height: 4,
                      width: 15,
                      decoration: BoxDecoration(
                        color: index == 0 ? context.primary : context.outline,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
