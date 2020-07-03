import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String titlename = "Appbar";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.perm_identity),
          elevation: 5.0,
          title: Center(
            child: Text(
              titlename,
              style:
                  TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.purple,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  titlename = "Home";
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                setState(() {
                  titlename = "Notification";
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
