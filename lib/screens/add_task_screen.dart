import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
// Add task with Provider TODO 2: Import Provider and TaskData
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
//  final Function addTaskCallback;
//  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(
          top: 20.0,
          left: 40.0,
          right: 40.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                newTaskTitle = newTask;
              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                hintText: 'Add your task here...',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 5.0,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: FlatButton(
                color: Colors.lightBlueAccent,
                child: Text('Add',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                onPressed: () {
                  // Add Task
                  // Add task with Provider TODO 3: Call addNewTask method and move pop screen here
                  Provider.of<TaskData>(context, listen: false)
                      .addNewTask(newTaskTitle);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
