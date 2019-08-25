import 'package:approval_center/models/task.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Task _task;

  TaskCard(this._task);

  @override
  Widget build(BuildContext context) {
    //print("build card");
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
                Text('${_task.subject}', 
                  textAlign: TextAlign.left,
                  style: _getSubjectStyle(context),
                  ),
                Text(_task.description,
                  style: _getDescriptionStyle(context),
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

  TextStyle _getSubjectStyle(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.title.apply(fontWeightDelta: -1);
    if (_task.unread) {
      style = style.apply(fontWeightDelta: 3);
    }
    return style;
  }

  TextStyle _getDescriptionStyle(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.body1.apply(
      color: Theme.of(context).hintColor);
    return style;
  }
}
