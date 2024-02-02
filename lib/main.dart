import 'package:flutter/material.dart';
import 'screens/task_list_screen.dart';
import 'screens/add_edit_task_screen.dart'; // Asegúrate de importar la pantalla adecuada

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskListScreen(),
      routes: {
        'add_edit_task_screen': (context) => AddEditTaskScreen(), // Asegúrate de tener una ruta para AddEditTaskScreen
      },
    );
  }
}
