import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String taskTitle;
  final bool isCompleted;

  TaskItem({required this.taskTitle, required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle),
      // Puedes personalizar más tu ListTile según tus necesidades
      // Por ejemplo, agregar un icono para representar la tarea completada o no
      trailing: isCompleted ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank),
      // Aquí puedes agregar más funcionalidad según sea necesario
      // Puedes agregar un GestureDetector para manejar eventos de toque, etc.
      onTap: () {
        // Lógica para manejar el toque en la tarea
      },
    );
  }
}
