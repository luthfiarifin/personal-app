import 'package:flutter/material.dart';

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
      color: isGrey ? colorScheme.onInverseSurface : colorScheme.background,
      child: child,
    );
  }
}
