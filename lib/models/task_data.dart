import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Bread"),
    Task(name: "Buy Rice"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get getNumberOfTasks {
    return _tasks.length;
  }

  void toggleCheck(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void addTask({String name}) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void deleteTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
