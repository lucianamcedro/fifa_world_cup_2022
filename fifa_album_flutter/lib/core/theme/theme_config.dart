import 'package:fifa_album_flutter/core/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: ColorsApp.i.greyDart, width: 1));

  static final theme = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyles.i.textPrimaryFontBold
            .copyWith(color: Colors.black, fontSize: 18),
      ),
      primaryColor: ColorsApp.i.primary,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorsApp.i.primary,
        primary: ColorsApp.i.primary,
        secondary: ColorsApp.i.secondary,
      ),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          contentPadding: const EdgeInsets.all(13.0),
          border: _defaultInputBorder,
          enabledBorder: _defaultInputBorder,
          focusedBorder: _defaultInputBorder,
          labelStyle: TextStyles.i.labelTextField));
}
