import 'package:fifa_album_flutter/core/ui/styles/button_styles.dart';
import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';
import 'package:fifa_album_flutter/core/ui/widgets/button.dart';
import 'package:fifa_album_flutter/pages/home/widgets/status_tile.dart';
import 'package:fifa_album_flutter/pages/home/widgets/sticker_percent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colors.primary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          )),
          child: LayoutBuilder(
            builder: (_, constrains) {
              return ConstrainedBox(
                constraints: BoxConstraints(minHeight: constrains.maxHeight),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 35),
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/images/bola.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const StickerPercent(
                          percent: 45,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '45 Figurinhas',
                          style: context.textstyles.titleWhite,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        StatusTile(
                          icon: Image.asset('assets/images/all_icon.png'),
                          value: 34,
                          label: 'Todas',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        StatusTile(
                          icon: Image.asset('assets/images/missing_icon.png'),
                          value: 500,
                          label: 'Faltando',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        StatusTile(
                          icon: Image.asset('assets/images/repeated_icon.png'),
                          value: 30,
                          label: 'Repetidas',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Button(
                          outline: true,
                          onPressed: () {},
                          width: MediaQuery.of(context).size.width * .9,
                          style: context.buttonStyle.yellowOutlinedButton,
                          labelStyle: context
                              .textstyles.textSecondaryFontExtraBold
                              .copyWith(color: context.colors.yellow),
                          label: 'Minhas Figuirinhas',
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
