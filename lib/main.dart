import 'package:flutter/material.dart';
import 'package:infinite_task_list/widgets/infinite_sublist.dart';
import 'package:infinite_task_list/widgets/toolbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          InfiniteSublist(),
          Align(alignment: Alignment.bottomCenter, child: ToolBar()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(""),
          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.menu),
//            title: Text(""),
//          ),
        ],
        currentIndex: 0,
        onTap: (x) {
          // TODO: why max BottomNavigationBarItem size is 3?
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
