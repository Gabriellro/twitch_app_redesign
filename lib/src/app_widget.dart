import 'package:flutter/material.dart';

import 'modules/_export_modules.dart';
import 'shared/themes/_export_themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      initialRoute: "/home",
      routes: {
        // "/": (_) => const SplashPage(),
        "/home": (_) => const HomePage(),
      },
    );
  }
}
