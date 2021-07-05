import 'dart:html';

import 'package:flutter/material.dart';

class InputWidgetsPage extends StatelessWidget {
  const InputWidgetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Widgets'),
        centerTitle: true,
      ),
      body: Container(
        child: Text('Cinput widget'),
      ),
    );
  }
}
