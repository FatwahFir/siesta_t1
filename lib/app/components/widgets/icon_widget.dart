import 'package:flutter/material.dart';
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
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Stack(
          children: [
            Icon(
              icon,
              color: color,
              size: 20,
            ),
            Visibility(
              visible: isShowBadge,
              child: const Positioned(
                right: 2,
                child: Icon(
                  Icons.circle,
                  color: red,
                  size: 8,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
