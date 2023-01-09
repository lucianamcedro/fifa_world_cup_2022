import 'package:fifa_album_flutter/core/ui/theme/theme_config.dart';
import 'package:fifa_album_flutter/pages/auth/auth/login/login_page.dart';
import 'package:fifa_album_flutter/pages/home/home_page.dart';
import 'package:fifa_album_flutter/pages/pages.dart';
import 'package:fifa_album_flutter/pages/splash/splash_route.dart';
import 'package:flutter/material.dart';

class FifaWorldApp extends StatelessWidget {
  const FifaWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa World Cup Album',
      theme: ThemeConfig.theme,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => const SplashRoute(),
        '/auth/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
