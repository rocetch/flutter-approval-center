import 'package:approval_center/models/task_category.dart';
import 'package:flutter/material.dart';

class TaskCategoryCard extends StatefulWidget {
  final TaskCategory _taskCategory;

  TaskCategoryCard(this._taskCategory);

  @override
  _TaskCategoryCardState createState() => _TaskCategoryCardState(_taskCategory);
}

class _TaskCategoryCardState extends State<TaskCategoryCard> {
  final TaskCategory _taskCategory;

  _TaskCategoryCardState(this._taskCategory);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${_taskCategory.subject}', 
                  textAlign: TextAlign.left,
                  style: _getSubjectStyle(),
                  // style: TextStyle(
                  //   //color: Theme.of(context).textTheme.display1,
                  //   backgroundColor: Colors.amber,
                  //   fontSize: 20.0,
                  //   fontWeight: (_taskCategory.unread) ? FontWeight.bold : FontWeight.normal)
                  ),
                Text(_taskCategory.description,
                  style: _getDescriptionStyle(),
                ),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 8.0)),
          Icon(Icons.keyboard_arrow_right),
          Padding(padding: const EdgeInsets.only(left: 8.0)),
        ],
      ),
    );
  }

  TextStyle _getSubjectStyle() {
    TextStyle style = Theme.of(context).textTheme.title.apply(fontWeightDelta: -1);
    if (_taskCategory.unread) {
      style = style.apply(fontWeightDelta: 3);
    }
    return style;
  }

  TextStyle _getDescriptionStyle() {
    TextStyle style = Theme.of(context).textTheme.body1.apply(
      color: Theme.of(context).hintColor);
    return style;
  }
}