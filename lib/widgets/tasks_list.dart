import 'package:flutter/material.dart';

import '../models/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key key,
    @required this.tasks,
  }) : super(key: key);

  final List<Task> tasks;

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallback: (bool checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
