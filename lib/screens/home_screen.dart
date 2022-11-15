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
