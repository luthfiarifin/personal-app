import 'package:flutter/material.dart';

class ToolbarTextWidget extends StatelessWidget {
  final String text;
  final GestureTapCallback? onTap;

  const ToolbarTextWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Text(text),
    );
  }
}
