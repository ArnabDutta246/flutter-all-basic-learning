import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.green.shade600,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 17),
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            //======================
            // name Routing
            Text(
              'Route Generator',
              style: TextStyle(
                fontSize: 10.00,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            singleMenuItem(
                text: 'Home',
                icon: Icons.home,
                onClicked: () => selectedGeneratedRoutes(context, 0)),
            const SizedBox(
              height: 8,
            ),
            singleMenuItem(
                text: 'Inputs',
                icon: Icons.inbox,
                onClicked: () => selectedGeneratedRoutes(context, 1)),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}

void selectedGeneratedRoutes(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).pushNamed('/home');
      break;
    case 1:
      Navigator.of(context)
          .pushNamed('/inputFieldWidget', arguments: 'Hellow there');
      break;
    default:
  }
}

Widget singleMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final fontColors = Colors.white;
  final hoverColor = Colors.green.shade200;
  return ListTile(
    leading: Icon(icon, color: fontColors),
    title: Text(
      text,
      style: TextStyle(color: fontColors),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
