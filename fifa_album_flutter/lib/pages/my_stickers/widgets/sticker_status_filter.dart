import 'package:fifa_album_flutter/core/ui/styles/button_styles.dart';
import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';
import 'package:fifa_album_flutter/core/ui/widgets/button.dart';
import 'package:fifa_album_flutter/pages/my_stickers/presenter/my_stickers_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class StickerStatusFilter extends StatelessWidget {
  final String filterSelected;

  const StickerStatusFilter({super.key, required this.filterSelected});

  @override
  Widget build(BuildContext context) {
    final presenter = context.get<MyStickersPresenter>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 5,
        children: [
          Button(
            width: MediaQuery.of(context).size.width * .3,
            onPressed: () {
              presenter.statusFilter('all');
            },
            style: filterSelected == 'all'
                ? context.buttonStyle.yellowButton
                : context.buttonStyle.primaryButton,
            labelStyle: filterSelected == 'all'
                ? context.textstyles.textSecondaryFontMedium
                    .copyWith(color: context.colors.primary)
                : context.textstyles.textSecondaryFontMedium,
            label: 'Todas',
          ),
          Button(
            width: MediaQuery.of(context).size.width * .3,
            onPressed: () {
              presenter.statusFilter('missing');
            },
            style: filterSelected == 'missing'
                ? context.buttonStyle.yellowButton
                : context.buttonStyle.primaryButton,
            labelStyle: filterSelected == 'missing'
                ? context.textstyles.textSecondaryFontMedium
                    .copyWith(color: context.colors.primary)
                : context.textstyles.textSecondaryFontMedium,
            label: 'Faltando',
          ),
          Button(
            width: MediaQuery.of(context).size.width * .3,
            onPressed: () {
              presenter.statusFilter('repeated');
            },
            style: filterSelected == 'repeated'
                ? context.buttonStyle.yellowButton
                : context.buttonStyle.primaryButton,
            labelStyle: filterSelected == 'repeated'
                ? context.textstyles.textSecondaryFontMedium
                    .copyWith(color: context.colors.primary)
                : context.textstyles.textSecondaryFontMedium,
            label: 'Repetidas',
          ),
        ],
      ),
    );
  }
}
