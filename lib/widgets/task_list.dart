import 'package:flutter/material.dart';
import 'package:taskbuddy/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:taskbuddy/models/task_data.dart';

class TaskList extends StatelessWidget {

  void showDeleteConfirmationDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Task"),
          content: Text("Are you sure you want to delete this task?"),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Delete"),
              onPressed: () {
                Provider.of<Taskdata>(context, listen: false).deleteTask(index);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                showDeleteConfirmationDialog(context, index);
              },
              child: TaskTile(
                taskStatement: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkBoxCallback: (bool? value) {
                  taskData.toggleTaskState(index, value);
                },
              ),
            );
          },
          itemCount: taskData.getCount(),
        );
      },
    );
  }
}
