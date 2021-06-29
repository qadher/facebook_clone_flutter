import 'package:flutter/material.dart';

Widget headerButton({
  required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonAction,
  required Color buttonColor,
}) {
  // ignore: deprecated_member_use
  return  FlatButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonColor,
    ),
    label: Text(buttonText),
  );
}