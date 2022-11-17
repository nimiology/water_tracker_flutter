import 'package:flutter/material.dart';

class AddWaterTracker extends StatelessWidget {
  const AddWaterTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(130, 128, 242, 1),
          borderRadius: BorderRadius.circular(25),
        ),
        child: IconButton(
            onPressed: () {
              print('asdf');
            },
            icon: const Icon(
              Icons.add,
              color: Color.fromRGBO(56, 52, 87, 1),
            )));
  }
}
