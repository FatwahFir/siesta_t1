import 'package:flutter/material.dart';
import 'package:siesta_t1/app/core/extensions/ctx.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: context.width,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: context.height,
            width: context.width,
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
              borderRadius: BorderRadius.circular(12),
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
                            const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                          ),
                          minimumSize: WidgetStateProperty.all<Size>(
                            const Size(50, 20),
                          ),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                50,
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
                    ..scale(-1.8, 1.8), // Membalik secara horizontal
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, left: 20),
                    child: Image.asset(
                      'assets/images/banner.png',
                    ),
                  ),
                )),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 12,
            child: Container(
              height: 23,
              width: context.width * 0.24,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    3,
                    (index) => Container(
                      height: 4,
                      width: 15,
                      decoration: BoxDecoration(
                        color: index == 0 ? context.primary : context.outline,
                        borderRadius: BorderRadius.circular(10),
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
