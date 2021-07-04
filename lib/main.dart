import 'package:flutter/material.dart';
import 'package:flutter_basic/inputFiled/inputFields.main.dart';
import 'package:flutter_basic/navigationDrawer/navigationDrawer.main.dart';
import 'package:flutter_basic/navigationDrawer/route_generatr/route_generator.main.dart';

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

      /**
       * if we want to use name routes
       * `@route` property are available in
       * `MaterialApp()` widgets
       * --------------
       * ## Pros: 
       *  1) easily call and pass static data
       * ------------------------------
       * ## Corns:
       * 1) can't pass dynamic data
       */
      // code
      routes: {
        '/home': (_) => MainPage(),
        '/inputFieldWidget': (_) => InputFieldWidget(
              data: 'abc',
            ),
      },
      /**
       * if we want to use name routes
       * `@onGenetateRoute` property are available in
       * `MaterialApp()` widgets
       * --------------
       * ## Pros: 
       *  1) we can pass and validate data
       *    using route
       *  2) can work as auth guard
       * ------------------------------
       * ## Corns:
       * 1) 
       */
      initialRoute: '/home',
      onGenerateRoute: RouteGenerator.generatorRoute,
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
