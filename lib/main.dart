import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/di/injection.dart';
import 'config/router/router.dart';
import 'features/home/presentation/page/home_page.dart';
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
      light: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: flexSchemeLight,
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.light(useMaterial3: true).textTheme,
        ),
      ),
      dark: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: flexSchemeDark,
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark(useMaterial3: true).textTheme,
        ),
      ),
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
