import 'dart:math';

import 'package:approval_center/models/task_category.dart';
import 'package:flutter/material.dart';

import 'widgets/task_category_card/task_category_card.dart';
//import 'widgets/top_bar/top_bar.dart';

class TaskCategoriesPage extends StatefulWidget {
  TaskCategoriesPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _TaskCategoriesPageState createState() => _TaskCategoriesPageState();
}

class _TaskCategoriesPageState extends State<TaskCategoriesPage> {
  //int _counter = 0;
  List<TaskCategory> categories = initData();
  
  void _refresh() {
    setState(() {
      categories = initData();
      //_counter++;
      //categories.clear();
      //categories.addAll(initData());
      // for (var i=0; i<20; i++) {
      //   var totalCnt = Random().nextInt(10);
      //   var unreadCnt = Random().nextInt(totalCnt);
      //   var catg = TaskCategory("Category $i", totalCnt, unreadCnt);
      //   categories[i] = catg;
      // }
    });
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //_counter++;
    });
  }

  static List<TaskCategory> initData() {
    List<TaskCategory> _categories = <TaskCategory>[];
    for (var i=0; i<20; i++) {
      var totalCnt = Random().nextInt(10)+1;
      var unreadCnt = Random().nextInt(totalCnt);
      var catg = TaskCategory("Category $i", totalCnt, unreadCnt);
      //print(i.toString() + catg.unread.toString());
      _categories.add(catg);
    }
    return _categories;
  }

  @override
  Widget build(BuildContext context) {
    //print("build");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(0.0),
        //separatorBuilder: (BuildContext context, int index) =>
        //    const Divider(height: 4.0),
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskCategoryCard(categories[index]);
          //return (index % 1 == 0) ? TaskCategoryCard(context, index, categories[index]).build2()
          //                        : TaskCategoryCard(context, index, categories[index]).build();
          /*
          Card(
            margin: const EdgeInsets.all(2.0),
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('${categories[index].subject}', 
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: (categories[index].unread) ? FontWeight.bold : FontWeight.normal)),
              subtitle: Text(categories[index].description),
              trailing: Icon(Icons.keyboard_arrow_right),
              //contentPadding: EdgeInsets.all(2.0),
            )
          );
          */
        }),
      /*
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      */
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      */
    );
  }

  Widget buildAppBar() {
    return AppBar(
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: _onRefreshPressed,
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: _onMorePressed,
        ),
      ],
      toolbarOpacity: 1,
      bottomOpacity: 0.1,
      //backgroundColor: Color.fromRGBO(0, 0, 255, 0.1),
    );
  }

  void _onMorePressed() {

  }

  void _onRefreshPressed() {
    _refresh();
  }
}
