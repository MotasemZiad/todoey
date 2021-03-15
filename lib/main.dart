import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/app_provider.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
