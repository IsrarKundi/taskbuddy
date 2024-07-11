import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addSTaskcreenCallback;

  const AddTaskScreen({required this.addSTaskcreenCallback});

  @override
  Widget build(BuildContext context) {

    String newTask = '';
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 30, left: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Add Task', style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 30,
          ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: Colors.lightBlueAccent, // Set the cursor color
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0), // Bottom border color and width when not focused
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent, width: 4.0), // Bottom border color and width when focused
              ),
            ),
            onChanged: (newVAlue){
              newTask = newVAlue;
            },
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: () {
              addSTaskcreenCallback(newTask);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              minimumSize: Size(double.infinity, 50), // Set the height if needed
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text('Add', style: TextStyle(
              color: Colors.white
            ),),
          )
        ],
      ),
    );
  }
}
