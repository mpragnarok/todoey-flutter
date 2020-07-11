import 'package:flutter/material.dart';

// ListView builder Todo 2: Change TaskTile back to StatelessWidget and move Checkbox Stateless widget here together
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        // ListView builder Todo 8: use the checkboxCallback directly cause it doesn't return a value
        onChanged: checkboxCallback,
      ),
    );
  }
}
