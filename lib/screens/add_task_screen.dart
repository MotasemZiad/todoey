import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/app_provider.dart';

class AddTaskScreen extends StatelessWidget {
  String taskName;

  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
        decoration: kBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kAppColor,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              cursorHeight: 22.0,
              enableSuggestions: true,
              autofocus: true,
              onChanged: (value) {
                taskName = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              onPressed: () {
                Provider.of<AppProvider>(context, listen: false)
                    .addNewTask(taskName);
                Navigator.pop(context);
              },
              height: 48.0,
              color: kAppColor,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
