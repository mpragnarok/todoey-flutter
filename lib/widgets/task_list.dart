import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
// ListView builder Todo 3: import task model
import 'package:todoeyflutter/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  // ListView builder Todo 4: Create tasks List
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    // ListView builder Todo 5: user ListView Builder
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            // ListView builder Todo 6: use the checkboxCallback to toggleDone
            checkboxCallback: (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      // ListView builder Todo 7: use the itemCount to make the builder dynamic
      itemCount: tasks.length,
    );
  }
}
