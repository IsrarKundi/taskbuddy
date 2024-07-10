import 'package:flutter/material.dart';

class TasksScreens extends StatelessWidget {
  const TasksScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 30, bottom: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Icon(Icons.list, size: 30,),
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
            ),)
          ],
        )
      ),
    );
  }
}
