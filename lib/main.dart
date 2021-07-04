import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAppStart(),
    );
  }
}

class MyAppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
