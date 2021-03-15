import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

List<Task> tasks = [
  Task(taskName: 'Buy Milk', isCompleted: false),
  Task(taskName: 'Buy eggs', isCompleted: false),
  Task(taskName: 'Buy bread', isCompleted: true),
  Task(taskName: 'Coding', isCompleted: true),
  Task(taskName: 'checking emails', isCompleted: true),
];

const kAppColor = Colors.cyan;

const kBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);
