import 'package:flutter/material.dart';
import 'package:flutter_basic/inputFiled/inputFields.main.dart';

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
            singleMenuItem(
                text: 'Inputs',
                icon: Icons.inbox,
                onClicked: () => selectedRoutes(context, 1)),
            const SizedBox(
              height: 8,
            ),
            singleMenuItem(
                text: 'ListView',
                icon: Icons.list,
                onClicked: () => selectedRoutes(context, 2)),
            const SizedBox(
              height: 8,
            ),
            singleMenuItem(
              text: 'Slivers',
              icon: Icons.add_box_outlined,
              onClicked: () => selectedRoutes(context, 3),
            ),
            const SizedBox(
              height: 8,
            ),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: 20,
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
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => InputFieldWidget(),
        ),
      );
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
