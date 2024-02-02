import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../task_provider.dart';
import '../widgets/task_item.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    final tasks = taskProvider.tasks;

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
          return TaskItem(taskTitle: '', isCompleted: true);
      },
    );
  }
}
