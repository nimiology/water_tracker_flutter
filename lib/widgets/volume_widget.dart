import 'package:flutter/material.dart';

class Volume extends StatelessWidget {
  const Volume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top:20),
      child: Text(
        '150/3000 ml',
          style:theme.textTheme.headline2
      ),
    );
  }
}
