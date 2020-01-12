import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../models/task_model.dart';

class AddNewItemScreen extends StatelessWidget {
  /*final void Function(String) onAddClicked;

  const AddNewItemScreen({
    Key key,
    this.onAddClicked,
  }) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    String taskName;

    return Consumer<TaskModel>(
      builder: (BuildContext context, TaskModel taskModel, Widget child) =>
          Container(
        color: Color(0xff757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.lightBlueAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                        width: 4.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  onChanged: (String name) {
                    taskName = name;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: FlatButton(
                  onPressed: () {
                    print(this);
                    print(Task(name: taskName));
                    taskModel.addTask(Task(name: taskName));
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.symmetric(vertical: 16),
                  color: Colors.lightBlueAccent,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
