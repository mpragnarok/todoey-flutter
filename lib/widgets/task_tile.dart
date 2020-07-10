import 'package:flutter/material.dart';

// Global state TODO 1: Convert StatelessWidget to  StatefulWidget
class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          // Global state TODO 5: Use ternary operator to change the text decoration
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked,
          // Global state TODO 4: Make it dynamic by the function callback to change the state and rebuild the StatelessWidget
          toggleCheckboxState: (bool checkboxState) {
            setState(() {
              isChecked = checkboxState;
            });
          }),
    );
  }
}

// Global state TODO 2: Create TaskCheckBox StatelessWidget
class TaskCheckbox extends StatelessWidget {
  // Global state TODO 3: Create input variables
  final bool checkboxState;
  final Function toggleCheckboxState;
  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckboxState,
    );
  }
}
