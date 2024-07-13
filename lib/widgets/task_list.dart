import 'package:flutter/material.dart';
import 'package:taskbuddy/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:taskbuddy/models/task_data.dart';
class TaskList extends StatelessWidget {

  void toggleTaskState(int index, bool? value) {
    // setState(() {
    //   widget.tasks[index].isDone = value!;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context, index){
          return TaskTile(
            taskStatement: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkBoxCallback: (bool? value) {
              toggleTaskState(index, value);
            },
          );

        },
          itemCount: taskData.getCount(),
        );
      },
    );
  }
}
