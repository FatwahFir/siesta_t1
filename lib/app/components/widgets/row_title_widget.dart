import 'package:flutter/material.dart';
import 'package:siesta_t1/app/core/extensions/ctx.dart';

class RowTitleWidget extends StatelessWidget {
  const RowTitleWidget({
    super.key,
    required this.text,
    required this.onPress,
  });
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: context.titleLage,
        ),
        TextButton(
          onPressed: onPress,
          child: Text(
            'See all',
            style: context.bodyMedium,
          ),
        )
      ],
    );
  }
}
