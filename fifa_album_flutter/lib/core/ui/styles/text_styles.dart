import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self isntance
  TextStyles._();
  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Poppins';
  String get secondaryFont => 'MPlus1P';

  //primary font
  TextStyle get textPrimaryFontRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: primaryFont);

  TextStyle get textPrimaryFontMedium =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: primaryFont);

  TextStyle get textPrimaryFontSemiBold =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: primaryFont);

  TextStyle get textPrimaryFontBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: primaryFont);

  TextStyle get textPrimaryFontExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: primaryFont);

  //secondary font
  TextStyle get textSecondaryFontRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: secondaryFont);

  TextStyle get textSecondaryFontMedium =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: secondaryFont);

  TextStyle get textSecondaryFontBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: secondaryFont);

  TextStyle get textSecondaryFontExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: secondaryFont);

  TextStyle get labelTextField =>
      textSecondaryFontRegular.copyWith(color: ColorsApp.i.greyDart);

  TextStyle get textSecondaryFontExtraBoldPrimaryColor =>
      textSecondaryFontExtraBold.copyWith(color: ColorsApp.i.primary);

  TextStyle get titleWhite =>
      textPrimaryFontBold.copyWith(color: Colors.white, fontSize: 22);
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textstyles => TextStyles.i;
}
