import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/app_provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskName: task.taskName,
              isCompleted: task.isCompleted,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Caution'),
                    content: Text('Are you sure you want to delete this task?'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            taskData.deleteTask(task);
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Task deleted successfully'),
                            ));
                          },
                          child: Text('Yes')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('No')),
                    ],
                  ),
                );
              },
            );
          },
          itemCount: taskData.tasksLength,
        );
      },
    );
  }
}
