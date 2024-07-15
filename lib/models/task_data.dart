import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'Task.dart';

class Taskdata extends ChangeNotifier {
  List<Task> tasks = [];

  Taskdata() {
    loadTasks();
  }

  int getCount() {
    return tasks.length;
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    tasks.add(task);
    saveTasks();
    notifyListeners();
  }

  void toggleTaskState(int index, bool? value) {
    tasks[index].isDone = value!;
    saveTasks();
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    saveTasks();
    notifyListeners();
  }

  Future<void> saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> taskList = tasks.map((task) => jsonEncode(task.toMap())).toList();
    prefs.setStringList('tasks', taskList);
  }

  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? taskList = prefs.getStringList('tasks');
    if (taskList != null) {
      tasks = taskList.map((task) => Task.fromMap(jsonDecode(task))).toList();
    }
    notifyListeners();
  }
}
