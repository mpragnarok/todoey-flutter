// implement Provider TODO 1: create TaskData ChangeNotifier
import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier {
  // implement Provider TODO 2: Add tasks property
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

//      // implement Provider TODO 8: Create method to get taskCount
  int get taskCount {
    return tasks.length;
  }
}
