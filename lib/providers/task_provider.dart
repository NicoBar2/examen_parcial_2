import 'package:flutter/material.dart';
import '../task_provider.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final int index;

  TaskItem({required this.task, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text(task.description),
      trailing: Checkbox(
        value: task.isCompleted,
        onChanged: (value) {
          // Implementa la lógica para completar la tarea aquí
        },
      ),
      onTap: () {
        // Implementa la lógica para editar la tarea aquí
      },
      onLongPress: () {
        // Implementa la lógica para eliminar la tarea aquí
      },
    );
  }
}
