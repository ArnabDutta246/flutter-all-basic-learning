import 'package:flutter/material.dart';
import 'package:flutter_basic/app/pages/buttonsWidgets/buttonsWidgets.main.dart';
import 'package:flutter_basic/app/pages/inputWidgets/inputsWidgets.main.dart';
import 'package:flutter_basic/main.dart';

// routes generator class
class RouteGenerator {
  // static function
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // settings.name will return route name as string
    // settings.arguments will return the arguments
    final args = settings.arguments;
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => MainPage());
      case '/inputWidgets':
        return MaterialPageRoute(builder: (_) => InputWidgetsPage());
      case '/buttonWidgets':
        return MaterialPageRoute(builder: (_) => ButtonsWidgetsPage());
      default:
        return _errorRoute();
    }
  }

  // 404 routes
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}























// var customRoutes = <String, WidgetBuilder>{
//   '/home': (context) => MainPage()(),
//   '/inputsWidgets': (context) => InputWidgetsPage(),
// };
