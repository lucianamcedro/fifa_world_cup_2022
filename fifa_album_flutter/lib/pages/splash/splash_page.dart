import 'package:fifa_album_flutter/core/ui/helpers/loader.dart';
import 'package:fifa_album_flutter/core/ui/helpers/messages.dart';
import 'package:fifa_album_flutter/core/ui/styles/button_styles.dart';
import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';
import 'package:fifa_album_flutter/core/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with Loader<SplashPage>, Messages<SplashPage> {
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
                  onPressed: () {},
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
