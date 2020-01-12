import 'package:flutter/widgets.dart';

import 'task.dart';

class TaskModel extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    if (tasks.isNotEmpty) {
      tasks.remove(task);
    }
    notifyListeners();
  }
}
