import 'package:flutter/material.dart';
import 'package:flutter_basic/app/pages/buttonsWidgets/butoonsStyles.dart';

class ButtonsWidgetsPage extends StatelessWidget {
  const ButtonsWidgetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Widgets'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          children: <Widget>[
            TextButton(
              style: ButtonsStyle.flatButtonStyle,
              onPressed: () {},
              child: Text('Flat button'),
            ),
            const SizedBox(height: 10),
            TextButton(
              style: ButtonsStyle.flatButtonStyle,
              onPressed: () {},
              child: Text('Flat button'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
