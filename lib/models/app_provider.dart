import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class AppProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'Buy Milk'),
    Task(taskName: 'Buy eggs'),
    Task(taskName: 'Buy bread', isCompleted: true),
    Task(taskName: 'Coding', isCompleted: true),
    Task(taskName: 'checking emails', isCompleted: true),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get tasksLength => _tasks.length;

  void addNewTask(String taskName) {
    _tasks.add(Task(taskName: taskName));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.isCompleted = !task.isCompleted;
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
