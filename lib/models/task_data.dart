import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return _tasks.length;
  }

// Add task with Provider TODO 4: Use UnmodifiableListView List to make sure you can't modify tasks from outside
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

// Add task with Provider TODO 1: Create addNewTask method
  void addNewTask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }
}
