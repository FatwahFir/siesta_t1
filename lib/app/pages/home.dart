import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:siesta_t1/app/components/fields/search_field.dart';
import 'package:siesta_t1/app/components/widgets/banner_widget.dart';
import 'package:siesta_t1/app/components/widgets/category_widget.dart';
import 'package:siesta_t1/app/components/widgets/icon_widget.dart';
import 'package:siesta_t1/app/components/widgets/product_widget.dart';
import 'package:siesta_t1/app/components/widgets/row_title_widget.dart';
import 'package:siesta_t1/app/core/dummys/content.dart';
import 'package:siesta_t1/app/core/extensions/ctx.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconWidget(
                      icon: Iconsax.location,
                      color: context.primary,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Current location',
                              style: context.bodySmall,
                            ),
                            Icon(
                              Icons.arrow_drop_down_rounded,
                              color: context.inversPrimary,
                            )
                          ],
                        ),
                        Text(
                          'Jl. Soekarno Hatta 15A Malang',
                          style: context.titleMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    IconWidget(
                      icon: Iconsax.notification,
                      color: context.tertiary,
                      isShowBadge: true,
                    )
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                const SearchField(),
                SizedBox(
                  height: 20.h,
                ),
                const BannerWidget(),
                SizedBox(
                  height: 10.h,
                ),
                RowTitleWidget(
                  text: 'Top Categories',
                  onPress: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    categories.length,
                    (index) => CategoryWidget(
                      text: categories[index]['title'] ?? 'n/a',
                      image: categories[index]['image'] ?? 'n/a',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                RowTitleWidget(
                  text: 'Top Discount',
                  onPress: () {},
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 150.h),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 14.w,
                      mainAxisSpacing: 10.h,
                      childAspectRatio: 137 / 142,
                    ),
                    itemBuilder: (context, index) => ProductWidget(
                      title: products[index]['title'] ?? 'n/a',
                      distance: products[index]['distance'] ?? 0.0,
                      review: products[index]['review'] ?? 0.0,
                      image: products[index]['image'] ?? '',
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
