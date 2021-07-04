import 'package:flutter/material.dart';
import 'package:flutter_basic/navigationDrawer/navigationDrawer.main.dart';

class InputFieldWidget extends StatelessWidget {
  // receive data from route
  final String data;
  // constructor
  const InputFieldWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Input Field Widgets"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          child: Text(this.data),
        ),
      ),
    );
  }
}
