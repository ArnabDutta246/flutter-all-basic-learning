import 'package:flutter/material.dart';

class ButtonsStyle {
  // New Version : TextButton  Old version : flat button style
  static final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  // New Version : Elevator  Old version : RaisedButton button
  static final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  // New Version : outline  Old version : RaisedButton button
  static final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  ).copyWith(
    side: MaterialStateProperty.resolveWith<BorderSide>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed))
          return BorderSide(
            color: Colors.blue,
            width: 1,
          );
        return BorderSide(
            width: 16.0,
            color: Colors.lightBlue.shade900); // Defer to the widget's default.
      },
    ),
  );
}
