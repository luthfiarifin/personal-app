import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';

class DarkModeWidget extends StatefulWidget {
  const DarkModeWidget({super.key});

  @override
  State<DarkModeWidget> createState() => _DarkModeWidgetState();
}

class _DarkModeWidgetState extends State<DarkModeWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.setDarkOrLight();
      },
      icon: Icon(
        !context.isDarkMode ? Icons.light_mode : Icons.mode_night,
      ),
    );
  }
}
