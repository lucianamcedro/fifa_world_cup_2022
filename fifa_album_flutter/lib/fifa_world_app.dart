import 'package:fifa_album_flutter/core/rest/custom_dio.dart';
import 'package:fifa_album_flutter/core/ui/global/global_context.dart';
import 'package:fifa_album_flutter/core/ui/global/global_context_impl.dart';
import 'package:fifa_album_flutter/core/ui/theme/theme_config.dart';
import 'package:fifa_album_flutter/pages/auth/login/login_route.dart';
import 'package:fifa_album_flutter/pages/auth/register/register_route.dart';
import 'package:fifa_album_flutter/pages/home/home_route.dart';
import 'package:fifa_album_flutter/pages/splash/splash_route.dart';
import 'package:fifa_album_flutter/repository/auth/auth_repository..dart';
import 'package:fifa_album_flutter/repository/auth/auth_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class FifaWorldApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  FifaWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImp(dio: i())),
        Bind.lazySingleton<GlobalContext>((i) =>
            GlobalContextImpl(authRepository: i(), navigatorKey: navigatorKey))
      ],
      child: MaterialApp(
        title: 'Fifa World Cup Album',
        theme: ThemeConfig.theme,
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginRoute(),
          '/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomeRoute(),
        },
      ),
    );
  }
}
