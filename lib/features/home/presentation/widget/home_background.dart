import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/extensions/responsive_extension.dart';
import 'package:responsive_framework/max_width_box.dart';

import '../../../../core/presentation/constant/size_constant.dart';

class HomeBackground extends StatelessWidget {
  final bool isGrey;
  final Widget child;

  const HomeBackground({
    super.key,
    required this.child,
    this.isGrey = false,
  });

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    var color = isGrey
        ? colorScheme.surfaceTint.withOpacity(0.04)
        : colorScheme.background;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: context.isDisplayLargeThanTablet ? 90 : 32,
        horizontal: 32,
      ),
      color: color,
      child: MaxWidthBox(
        maxWidth: MaxSizeConstant.maxWidth,
        child: child,
      ),
    );
  }
}
