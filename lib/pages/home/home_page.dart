import 'package:fifa_album_flutter/core/ui/styles/button_styles.dart';
import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';
import 'package:fifa_album_flutter/core/ui/widgets/button.dart';
import 'package:fifa_album_flutter/pages/home/presenter/home_presenter.dart';
import 'package:fifa_album_flutter/pages/home/view/home_view_impl.dart';
import 'package:fifa_album_flutter/pages/home/widgets/status_tile.dart';
import 'package:fifa_album_flutter/pages/home/widgets/sticker_percent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final HomePresenter presenter;
  const HomePage({super.key, required this.presenter});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends HomeViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colors.primary,
        actions: [
          IconButton(
            onPressed: () => widget.presenter.logout(),
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
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
                        width: MediaQuery.of(context).size.height,
                        child: Image.asset(
                          'assets/images/bola.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      StickerPercent(percent: user?.totalCompletePercent ?? 0),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${user?.totalStickers ?? 0} figurinhas',
                        style: context.textstyles.titleWhite,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      StatusTile(
                        icon: Image.asset('assets/images/all_icon.png'),
                        label: 'Todas',
                        value: user?.totalAlbum ?? 0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      StatusTile(
                        icon: Image.asset('assets/images/missing_icon.png'),
                        label: 'Faltando',
                        value: user?.totalComplete ?? 0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      StatusTile(
                        icon: Image.asset('assets/images/repeated_icon.png'),
                        label: 'Repetidas',
                        value: user?.totalDuplicates ?? 0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Button(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/my-stickers');
                        },
                        width: MediaQuery.of(context).size.width * .9,
                        style: context.buttonStyle.yellowOutlinedButton,
                        labelStyle: context
                            .textstyles.textSecondaryFontExtraBold
                            .copyWith(color: context.colors.yellow),
                        label: 'Minhas Figurinhas',
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
