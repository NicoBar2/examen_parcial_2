import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../task_provider.dart';

class AddEditTaskScreen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add/Edit Task'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text;
                final description = descriptionController.text;
                final task = Task(title: title, description: description);

                Provider.of<TaskProvider>(context, listen: false).addTask(task);

                Navigator.pop(context); // Close the Add/Edit Task screen
              },
              child: Text('Save Task'),
            ),
          ],
        ),
      ),
    );
  }
}
