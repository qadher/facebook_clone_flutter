import 'package:facebook_clone_flutter/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_flutter/assets.dart';

class StatusSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: messi, displayStatus: false,),
          title: TextField(
        decoration: InputDecoration(
        hintText: "What on Your  mind",
        hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
    ),
    ),
    );
  }
}
