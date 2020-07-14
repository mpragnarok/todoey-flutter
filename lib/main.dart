import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/screens/task_screen.dart';
import 'package:todoeyflutter/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // implement Provider TODO 3: Wrap in the ChangeNotifierProvider
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
