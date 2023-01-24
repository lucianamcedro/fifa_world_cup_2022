import 'dart:math';
import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class StickerPercent extends StatelessWidget {
  final int percent;

  const StickerPercent({
    Key? key,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: context.colors.grey,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text('$percent%', style: context.textstyles.titleWhite),
          ),
        ),
        SizedBox(
          width: 110,
          height: 110,
          child: Transform.rotate(
            angle: -pi / 2.5,
            child: CircularProgressIndicator(
              value: percent / 100,
              color: Colors.white,
              strokeWidth: 5,
              backgroundColor: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}
