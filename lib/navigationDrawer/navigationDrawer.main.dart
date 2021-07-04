import 'package:flutter/material.dart';
import 'package:flutter_basic/inputFiled/inputFields.main.dart';
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
            Text(
              'Normal Material routing',
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
                onClicked: () => selectedRoutes(context, 0)),
            const SizedBox(
              height: 8,
            ),
            singleMenuItem(
                text: 'Inputs',
                icon: Icons.inbox,
                onClicked: () => selectedRoutes(context, 1)),
            const SizedBox(
              height: 8,
            ),

            Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: 10,
            ),
            //======================
            // name Routing
            Text(
              'Named routing',
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
                onClicked: () => selectedNamedRoutes(context, 0)),
            const SizedBox(
              height: 8,
            ),
            singleMenuItem(
                text: 'Inputs',
                icon: Icons.inbox,
                onClicked: () => selectedNamedRoutes(context, 1)),
            const SizedBox(
              height: 8,
            ),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: 10,
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

void selectedRoutes(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              InputFieldWidget(data: "Passing Data Input field widget"),
        ),
      );
      break;
    default:
  }
}

void selectedNamedRoutes(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).pushNamed('/home');
      break;
    case 1:
      Navigator.of(context).pushNamed('/inputFieldWidget');
      break;
    default:
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
