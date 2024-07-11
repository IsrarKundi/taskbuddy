import 'package:flutter/material.dart';
import 'package:taskbuddy/widgets/task_tile.dart';
import 'package:taskbuddy/models/Task.dart';

class TaskList extends StatefulWidget {

  TaskList({required this.tasks});

  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {



  void toggleTaskState(int index, bool? value) {
    setState(() {
      widget.tasks[index].isDone = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskStatement: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkBoxCallback: (bool? value) {
          toggleTaskState(index, value);
        },
      );
      
    },
      itemCount: widget.tasks.length,
    );
  }
}
