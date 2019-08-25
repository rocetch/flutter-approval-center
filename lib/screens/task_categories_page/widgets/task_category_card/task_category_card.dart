import 'package:approval_center/models/task_category.dart';
import 'package:approval_center/screens/tasks_page/tasks_page.dart';
import 'package:flutter/material.dart';

class TaskCategoryCard extends StatelessWidget {
  final TaskCategory _taskCategory;

  TaskCategoryCard(this._taskCategory);

  @override
  Widget build(BuildContext context) {
    //print("build card");
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        //decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(6.0),
          //border: Border.all(color: Colors.black),
        //),
        child: Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(left: 8.0)),
            //Icon(Icons.star),
            //Padding(padding: const EdgeInsets.only(left: 8.0)),
            Expanded(
              child: Text(_taskCategory.displayName, 
                    textAlign: TextAlign.left,
                    style: _getNameStyle(context),
                    ),
            ),
            Padding(padding: const EdgeInsets.only(left: 8.0)),
            //Icon(Icons.keyboard_arrow_right),
            //Padding(padding: const EdgeInsets.only(left: 8.0)),
          ],
        ),
      ),
      onTap: () => _onTap(context),
      //onTap: () => print(_taskCategory.name),
    );
  }

  TextStyle _getNameStyle(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.title.apply(fontWeightDelta: -1);
    //if (_taskCategory.unread) {
      style = style.apply(fontWeightDelta: 3);
    //}
    return style;
  }

  void _onTap(BuildContext context) {
    Navigator.pushNamed(context, TasksPage.routeName, arguments: _taskCategory);
    //print(_taskCategory.name);
  }
}
