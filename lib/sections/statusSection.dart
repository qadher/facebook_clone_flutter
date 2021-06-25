import 'package:flutter/material.dart';
import 'package:facebook_clone_flutter/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          messi,
          width: 50,
          height: 50,
        ),
      ),
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
