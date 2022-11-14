import 'package:flutter/material.dart';

import '../widgets/date_widget.dart';
import '../widgets/widget_body_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          color: Color.fromRGBO(14, 11, 79, 1),
          // decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //         colors: [
          //           Color.fromRGBO(14, 11, 79, 1),
          //           Color.fromRGBO(99, 83, 118, 1)
          //         ],
          //         begin: Alignment.topLeft,
          //         end: Alignment.bottomRight,
          //         stops: [0.4, 1.0]
          //     )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DateAppBar(),
              WidgetBody(),
            ],
          ),
        ),
      ),
    );
  }
}
