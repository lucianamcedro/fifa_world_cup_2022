import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';

import 'package:flutter/material.dart';

class StatusTile extends StatelessWidget {
  final Image icon;
  final String label;
  final int value;
  const StatusTile({
    Key? key,
    required this.label,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      child: ListTile(
        leading: SizedBox(
          width: 46,
          child: CircleAvatar(
            radius: 46,
            backgroundColor: context.colors.grey,
            child: icon,
          ),
        ),
        contentPadding: EdgeInsets.zero,
        title: Text(
          label,
          style: context.textstyles.textPrimaryFontRegular
              .copyWith(color: Colors.white),
        ),
        trailing: Text(
          '$value',
          style: context.textstyles.textPrimaryFontMedium
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
