import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCompleted;
  final String taskName;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.isCompleted,
      this.taskName,
      this.checkboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskName,
        style: TextStyle(
            decoration:
                isCompleted ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isCompleted,
        onChanged: checkboxCallback,
      ),
    );
  }
}
