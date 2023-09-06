import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'config/di/injection.dart';
import 'config/router/router.dart';
import 'config/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: buildThemeData(context: context),
      dark: buildThemeData(context: context, isDarkTheme: true),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
