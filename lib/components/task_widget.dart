import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/task.dart';

class TaskWidget extends StatefulWidget {
  Task task = Task();
  TaskWidget({this.task});
  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          widget.task.taskName,
          style: TextStyle(
              fontSize: 16.0,
              decoration: widget.task.isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        trailing: Checkbox(
          activeColor: kAppColor,
          value: widget.task.isCompleted,
          onChanged: (value) {
            setState(() {
              widget.task.isCompleted = !widget.task.isCompleted;
            });
          },
        ),
      ),
    );
  }
}
