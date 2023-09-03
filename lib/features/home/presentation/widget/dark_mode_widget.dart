import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class DarkModeWidget extends StatefulWidget {
  const DarkModeWidget({super.key});

  @override
  State<DarkModeWidget> createState() => _DarkModeWidgetState();
}

class _DarkModeWidgetState extends State<DarkModeWidget> {
  @override
  Widget build(BuildContext context) {
    var isLightMode = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.light;

    return InkWell(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        if (isLightMode) {
          AdaptiveTheme.of(context).setDark();
        } else {
          AdaptiveTheme.of(context).setLight();
        }
      },
      child: Icon(
        isLightMode ? Icons.light_mode : Icons.mode_night,
      ),
    );
  }
}
