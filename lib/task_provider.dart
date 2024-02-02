import 'package:flutter/foundation.dart';

class Task {
  String title;
  String description;
  bool isCompleted;

  Task({required this.title, required this.description, this.isCompleted = false});
}

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void editTask(int index, Task editedTask) {
    _tasks[index] = editedTask;
    notifyListeners();
  }

  void completeTask(int index) {
    _tasks[index].isCompleted = true;
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
