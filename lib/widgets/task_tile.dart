import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key key,
    this.taskTitle,
    this.isChecked,
    this.checkBoxCallback,
  }) : super(key: key);

  final String taskTitle;
  final bool isChecked;
  final Function checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
