// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:fifa_album_flutter/core/ui/styles/button_styles.dart';
import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';
import 'package:fifa_album_flutter/core/ui/widgets/button.dart';
import 'package:fifa_album_flutter/pages/splash/presenter/splash_presenter.dart';
import 'package:fifa_album_flutter/pages/splash/view/splash_view_impl.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;
  const SplashPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: DecoratedBox(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_splash.png'),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: size * .08),
                child: Image.asset(
                  'assets/images/fifa_logo.png',
                  height: size * .25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: size * .19),
                child: Button(
                  width: width * .9,
                  onPressed: () {
                    widget.presenter.checkLogin();
                  },
                  style: context.buttonStyle.yellowButton,
                  label: 'Acessar',
                  labelStyle:
                      context.textstyles.textSecondaryFontExtraBoldPrimaryColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset('assets/images/bandeiras.png')),
            ),
          ],
        ),
      ),
    );
  }
}
