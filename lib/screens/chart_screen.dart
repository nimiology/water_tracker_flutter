import 'package:flutter/material.dart';

import '../widgets/chart_screen_widget_body_widget.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          color: const Color.fromRGBO(14, 11, 79, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              ChartScreenWidgetBody(),
            ],
          ),
        ),
      ),
    );
  }
}
