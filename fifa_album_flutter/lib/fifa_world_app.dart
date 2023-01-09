import 'package:fifa_album_flutter/core/theme/theme_config.dart';
import 'package:fifa_album_flutter/pages/pages.dart';
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
        '/': (_) => const SplashPage(),
      },
    );
  }
}
