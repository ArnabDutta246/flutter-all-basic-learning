import 'package:flutter/material.dart';
import 'package:flutter_basic/navigationDrawer/navigationDrawer.main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  static String title = 'Flutter Navigation Drawer';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basic',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(MyApp.title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("Page is running"),
        ),
      ),
    );
  }
}

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         drawer: NavigationDrawer(),
//         appBar: AppBar(
//           title: Text(MyApp.title),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Container(
//             child: Text("Page is running"),
//           ),
//         ),
//       );
// }
