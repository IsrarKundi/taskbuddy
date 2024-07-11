import 'package:flutter/material.dart';
import 'package:taskbuddy/widgets/task_tile.dart';
import 'package:taskbuddy/models/Task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [
    Task(name: 'Do Laundery'),
    Task(name: 'bring the milk'),
    Task(name: 'Complete the pending homework')
  ];

  void toggleTaskState(int index, bool? value) {
    setState(() {
      tasks[index].isDone = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskStatement: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkBoxCallback: (bool? value) {
          toggleTaskState(index, value);
        },
      );
      
    },
      itemCount: tasks.length,
    );
  }
}
