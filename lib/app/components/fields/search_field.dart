import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:siesta_t1/app/core/extensions/ctx.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIconColor: context.inversPrimary,
        suffixIconColor: context.inversPrimary,
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Icon(
            Iconsax.search_normal,
            size: 20.h,
          ),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: Icon(
            Iconsax.sort,
            size: 20.h,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 5.h,
        ),
        hintText: 'Search menu, restaurant or etc',
        hintStyle: context.bodySmall,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide(
            color: context.outline,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide(
            color: context.primary,
          ),
        ),
      ),
    );
  }
}
