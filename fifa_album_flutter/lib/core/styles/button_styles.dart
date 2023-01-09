import 'package:fifa_album_flutter/core/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyles? _instance;
  // Avoid self isntance
  ButtonStyles._();
  static ButtonStyles get i {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.i.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ));

  ButtonStyle get yellowOutlinedButton => OutlinedButton.styleFrom(
      backgroundColor: ColorsApp.i.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(color: ColorsApp.i.yellow),
      textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ));

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.i.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(color: ColorsApp.i.yellow),
      textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ));

  ButtonStyle get primaryOutlinedButton => OutlinedButton.styleFrom(
      backgroundColor: ColorsApp.i.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(color: ColorsApp.i.primary),
      textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ));
}

extension ButtonStylesExtensions on BuildContext {
  ButtonStyles get buttonStyle => ButtonStyles.i;
}
