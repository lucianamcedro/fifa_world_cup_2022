import 'package:fifa_album_flutter/core/rest/custom_dio.dart';
import 'package:fifa_album_flutter/core/ui/theme/theme_config.dart';
import 'package:fifa_album_flutter/pages/auth/auth/login/login_page.dart';
import 'package:fifa_album_flutter/pages/home/home_page.dart';
import 'package:fifa_album_flutter/pages/splash/splash_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class FifaWorldApp extends StatelessWidget {
  const FifaWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () =>
          [Bind.lazySingleton<CustomDio>((i) => CustomDio())],
      child: MaterialApp(
        title: 'Fifa World Cup Album',
        theme: ThemeConfig.theme,
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
