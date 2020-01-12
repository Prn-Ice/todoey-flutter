import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey_flutter/screens/task_screen.dart';

import 'models/task_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<TaskModel>(
        create: (BuildContext context) => TaskModel(),
        child: TaskScreen(),
      ),
    );
  }
}
