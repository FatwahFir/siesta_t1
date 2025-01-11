import 'package:flutter/material.dart';
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
            height: 97,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: context.titleMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 5,
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
                size: 5,
                color: context.outline,
              ),
              const Icon(
                Icons.star,
                size: 18,
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
