import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskStatement;
  final Function(bool?) checkBoxCallback;

  TaskTile({required this.taskStatement, required this.isChecked, required this.checkBoxCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskStatement, style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}

// (bool checkBoxState){
//   setState
// }