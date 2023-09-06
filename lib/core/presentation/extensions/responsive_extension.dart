import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension XResponsiveBuildContext on BuildContext {
  bool get isDisplayLargeThanTablet =>
      ResponsiveBreakpoints.of(this).largerThan(TABLET);
}
