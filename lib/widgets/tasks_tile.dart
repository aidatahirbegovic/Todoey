import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String text;
  final Function(bool?) checkboxCallback;
  final Function()? longPressCallback;

  TasksTile(
      {required this.text,
      required this.isChecked,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
            fontSize: 20.0,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback),
      onLongPress: longPressCallback,
    );
  }
}
