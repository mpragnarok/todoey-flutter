// ListView builder Todo 1: Create task model
class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }
}
