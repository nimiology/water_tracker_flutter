import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'add_water_tracker_widget.dart';
import 'bottom_navigate_widget.dart';
import 'progress_bar_widget.dart';
import 'volume_widget.dart';
import 'water_history_list_widget.dart';


class WidgetBody extends StatelessWidget {
  const WidgetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const circularRadius =  Radius.circular(40);
    return  Container(
        width: screenSize.width,
        height: screenSize.height * 0.825,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(14, 11, 79, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                blurRadius: 12.0,
                spreadRadius: 3.0,
                offset: const Offset(
                  0.0,-4.0),
              ),
            ],
          // border: Border.all(color: Colors.red),
            borderRadius: const BorderRadius.only(topLeft: circularRadius, topRight: circularRadius)
        ),
        child: Column(
          children: [
            ProgressBar(volume: 50),
            const Volume(),
            const WaterHistoryList(),
            const AddWaterTracker(),
            MyContainer()
          ],
        ),
    );
  }
}
