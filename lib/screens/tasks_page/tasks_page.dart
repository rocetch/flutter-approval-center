import 'dart:math';

import 'package:approval_center/models/task.dart';
import 'package:approval_center/models/task_category.dart';
import 'package:flutter/material.dart';

import 'widgets/task_card/task_card.dart';

class TasksPage extends StatefulWidget {
  TasksPage({Key key}) : super(key: key);
  
  static const String routeName = "/TasksPage";

  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  List<Task> _tasks = initData();

  static List<Task> initData() {
    List<Task> tasks = <Task>[];
    for (var i=0; i<20; i++) {
      var catg = Task("test $i", "descriptiondescription\ntest", Random().nextBool());
      tasks.add(catg);
    }
    return tasks;
  }

  @override
  Widget build(BuildContext context) {
    TaskCategory taskCategory = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: buildAppBar(taskCategory),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(0.0),
        itemCount: _tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskCard(_tasks[index]);
        }),
    );
  }

  Widget buildAppBar(TaskCategory taskCategory) {
    return AppBar(
      title: Text(taskCategory.name),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: null,
        ),
        // IconButton(
        //   icon: Icon(Icons.more_vert),
        //   onPressed: _onMorePressed,
        // ),
      ],
      toolbarOpacity: 1,
      bottomOpacity: 0.1,
      //backgroundColor: Color.fromRGBO(0, 0, 255, 0.1),
    );
  }
}