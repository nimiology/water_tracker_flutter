import 'package:flutter/material.dart';
import 'package:month_year_picker/month_year_picker.dart';

class MonthPickerWidget extends StatefulWidget {
  const MonthPickerWidget({Key? key}) : super(key: key);

  @override
  State<MonthPickerWidget> createState() => _MonthPickerWidgetState();
}

class _MonthPickerWidgetState extends State<MonthPickerWidget> {
  void Dashsag(BuildContext context) async {
    final kir = await showMonthYearPicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2023),
    );
  }
  @override
  Widget build(BuildContext context) {
    var selected;
    final theme = Theme.of(context);
    final headline2 = theme.textTheme.headline2;
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: 95,
      child: TextButton(
        onPressed: () {
          print('dic');
          this.Dashsag(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'April',
              style: headline2,
            ),
            Icon(
              Icons.expand_more,
              color: headline2!.color,
              size: headline2.fontSize! + 5,
            ),
          ],
        ),
      ),
    );
  }
}
