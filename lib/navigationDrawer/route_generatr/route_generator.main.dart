import 'package:flutter/material.dart';
import 'package:flutter_basic/inputFiled/inputFields.main.dart';
import 'package:flutter_basic/main.dart';

class RouteGenerator {
  static Route<dynamic>? generatorRoute(RouteSettings settings) {
    /**
     * Getting argument passed in while calling 
     * Navigator.pushNamed
     */
    final args = settings.arguments;
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => MainPage());
      case '/inputFieldWidget':
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => InputFieldWidget(data: args));
        }
        break;
      //return _errorRoute()
      default:
        return _errorRoute();
    }
  }

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
