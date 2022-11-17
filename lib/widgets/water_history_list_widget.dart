import 'package:flutter/material.dart';

import 'water_history_widget.dart';

class WaterHistoryList extends StatelessWidget {
  const WaterHistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: const EdgeInsets.only( top: 30, bottom:25),
          child: ListView(
            padding: const EdgeInsets.only(top: 20,right: 20, left:20,),
          children: const [
            WaterHistory(),
            WaterHistory(),
            WaterHistory(),
            WaterHistory(),
            WaterHistory(),
          ],
        )
      ),
    );
  }
}
