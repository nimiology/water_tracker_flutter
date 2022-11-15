import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  int volume;
  ProgressBar({Key? key, required this.volume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      margin: const EdgeInsets.only(top: 50),
      child: Stack(children: [
        Container(
          width: 225,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(25, 40, 70, 1),
              borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          width: 225 * volume / 100,
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color.fromRGBO(94, 68, 187, 1),
                Color.fromRGBO(210, 187, 244, 1),
              ]),
              borderRadius: BorderRadius.circular(100)),
        ),
      ]),
    );
  }
}
