import 'package:approval_center/models/task_category.dart';
import 'package:flutter/material.dart';

class TaskCategoryCard2 {
  /*
  TaskCategoryCard(this.context, this.index, this._taskCategory);

  final TaskCategory _taskCategory;
  final BuildContext context;
  final int index;

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

  Card build() => Card(
    //margin: const EdgeInsets.all(2.0),
    child: ListTile(
      leading: Icon(Icons.star),
      title: Text('${_taskCategory.subject}', 
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: (_taskCategory.unread) ? FontWeight.bold : FontWeight.normal)),
      subtitle: Text(_taskCategory.description),
      trailing: Icon(Icons.keyboard_arrow_right),
    )
  );

  Container build2() => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.0),
      //border: Border.all(color: Colors.black),
    ),
    child: Row(
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(left: 8.0)),
        Icon(Icons.star),
        Padding(padding: const EdgeInsets.only(left: 8.0)),
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
  */
}