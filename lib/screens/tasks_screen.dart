import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskbuddy/widgets/task_tile.dart';
import 'package:taskbuddy/widgets/task_list.dart';

class TasksScreens extends StatelessWidget {
  TasksScreens({super.key});

  final List tasks = ['do homework', 'do laundry', 'watch youtube'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add, color: Colors.white,),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 60, left: 0, bottom: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list, size: 30, color: Colors.lightBlueAccent,),
                    radius: 30,
                    backgroundColor: Colors.white,
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
              padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
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

