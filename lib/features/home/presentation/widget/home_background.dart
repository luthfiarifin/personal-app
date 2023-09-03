import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';

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

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 320,
        vertical: 90,
      ),
      color: isGrey
          ? (context.isDarkMode ? colorScheme.background : Colors.grey.shade50)
          : colorScheme.background,
      child: child,
    );
  }
}
