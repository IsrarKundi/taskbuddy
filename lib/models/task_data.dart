import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'Task.dart';

class Taskdata extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Do Laundery'),
    Task(name: 'bring the milk'),
    Task(name: 'Complete the pending homework')
  ];
  int getCount(){
    return tasks.length;
  }

  void addTask(String newTask){
    final task = Task(name: newTask);
    tasks.add(task);
    notifyListeners();
  }

  void toggleTaskState(int index, bool? value) {
    tasks[index].isDone = value!;
    notifyListeners();
  }

  void deleteTask(int index,) {
    tasks.removeAt(index);
    notifyListeners();
  }

}