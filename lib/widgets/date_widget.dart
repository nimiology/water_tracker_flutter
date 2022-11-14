import 'package:flutter/material.dart';

class DateAppBar extends StatelessWidget {
  const DateAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final font = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chevron_left,
              color: font.textTheme.headline1!.color,
              size: font.textTheme.headline1!.fontSize),
          Text(
            '13 April',
            style: font.textTheme.headline1,
          ),
          Icon(Icons.chevron_right,
              color: font.textTheme.headline1!.color,
              size: font.textTheme.headline1!.fontSize),
        ],
      ),
    );
  }
}
