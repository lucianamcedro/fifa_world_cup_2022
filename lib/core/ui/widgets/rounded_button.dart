// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  IconData icon;
  VoidCallback onPressed;
  RoundedButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 3,
        shadowColor: Colors.grey.withOpacity(0.2),
        shape: const CircleBorder(),
        child: DecoratedBox(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  color: context.colors.greyDart,
                ))));
  }
}
