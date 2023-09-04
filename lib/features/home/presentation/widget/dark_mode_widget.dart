import 'package:adaptive_theme/adaptive_theme.dart';
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
    var isLightMode = !context.isDarkMode;

    return IconButton(
      onPressed: () {
        if (isLightMode) {
          AdaptiveTheme.of(context).setDark();
        } else {
          AdaptiveTheme.of(context).setLight();
        }
      },
      icon: Icon(
        isLightMode ? Icons.light_mode : Icons.mode_night,
      ),
    );
  }
}
