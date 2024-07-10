import 'package:flutter/material.dart';
import 'package:taskbuddy/widgets/task_list.dart';
import 'package:taskbuddy/screens/add_task_screen.dart';

class TasksScreens extends StatelessWidget {
  TasksScreens({super.key});

  Widget buildBottomSheet(BuildContext context){
    return AddTaskScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildBottomSheet);
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 60, left: 0, bottom: 30, right: 30),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list, size: 30, color: Colors.lightBlueAccent,),
                  ),
                  SizedBox(height: 10,),
                  Text('Task Buddy', style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                  ),
                  Text('12 tasks', style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),
                  )
                ],
              )
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))
                ),
                child: TaskList()
            ),
          ),

        ],
      ),
    );
  }

}

