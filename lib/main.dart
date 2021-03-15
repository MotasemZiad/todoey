import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: kAppColor),
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}
