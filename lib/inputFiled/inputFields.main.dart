import 'package:flutter/material.dart';
import 'package:flutter_basic/navigationDrawer/navigationDrawer.main.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Input Field Widgets"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
