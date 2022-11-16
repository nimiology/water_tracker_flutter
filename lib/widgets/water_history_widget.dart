import 'package:flutter/material.dart';

class WaterHistory extends StatelessWidget {
  const WaterHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 20, right: 10, left: 10),
      padding: EdgeInsets.symmetric(vertical: 2.5),
      height: 75,
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(44, 34, 115, 1),
            Color.fromRGBO(65, 36, 171, 1),
          ]),
          borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        title: Text('300 ml', style: theme.textTheme.headline5),
        subtitle: Text(
          '10:50 AM',
          style: theme.textTheme.headline6,
        ),
        trailing: const Icon(Icons.delete, size: 30,),
      ),
    );
  }
}
