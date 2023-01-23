import 'package:fifa_album_flutter/core/ui/styles/button_styles.dart';
import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';
import 'package:fifa_album_flutter/core/ui/widgets/button.dart';
import 'package:fifa_album_flutter/core/ui/widgets/rounded_button.dart';
import 'package:fifa_album_flutter/pages/sticker_detail/presenter/sticker_detail_presenter.dart';
import 'package:fifa_album_flutter/pages/sticker_detail/view/sticker_detail_view_impl.dart';
import 'package:flutter/material.dart';

class StickerDetailPage extends StatefulWidget {
  final StickerDetailPresenter presenter;

  const StickerDetailPage({super.key, required this.presenter});

  @override
  State<StickerDetailPage> createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends StickerDetailViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe figurinha'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(hasSticker
                  ? 'assets/images/sticker.png'
                  : 'assets/images/sticker_pb.png'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '$countryCode $stickerNumber',
                      style: context.textstyles.textPrimaryFontBold
                          .copyWith(fontSize: 22),
                    ),
                  ),
                  const Spacer(),
                  RoundedButton(
                    icon: Icons.remove,
                    onPressed: widget.presenter.decrementAmount,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      '$amount',
                      style: context.textstyles.textSecondaryFontMedium,
                    ),
                  ),
                  RoundedButton(
                    icon: Icons.add,
                    onPressed: widget.presenter.incrementAmount,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  countryName,
                  style: context.textstyles.textPrimaryFontRegular,
                ),
              ),
              Button.primary(
                width: MediaQuery.of(context).size.width * .9,
                onPressed: widget.presenter.saveSticker,
                label:
                    hasSticker ? 'Atualizar figurinha' : 'Adicionar figurinha',
              ),
              Button(
                onPressed: () {},
                style: context.buttonStyle.primaryOutlinedButton,
                labelStyle:
                    context.textstyles.textSecondaryFontExtraBoldPrimaryColor,
                label: 'Excluir figurinha',
                outline: true,
                width: MediaQuery.of(context).size.width * .9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
