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
}