import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
          primarySwatch: Colors.red,
          brightness: Brightness.dark,
          accentColor: Colors.blue),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello World";

  void _changeText() {
    setState(() {
      if (myText.startsWith("H")) {
        myText = "YOLO";
      } else {
        myText = "Hello World";
      }
    });
  }

  Widget _bodyWidget() {
    return new Container(
      padding: EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              myText,
              style: new TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Basic App"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}
