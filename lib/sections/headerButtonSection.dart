import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {

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

  @override
  Widget build(BuildContext context) {

    Widget verticalDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // ignore: deprecated_member_use

          headerButton(
              buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonAction: (){
                print("Go  Live");
              },
              buttonColor: Colors.red,
          ),
          verticalDivider,

          headerButton(
            buttonText: "Photo",
            buttonIcon: Icons.photo_library,
            buttonAction: (){
              print("Click Photo");
            },
            buttonColor: Colors.green,
          ),
          verticalDivider,

          headerButton(
            buttonText: "Room",
            buttonIcon: Icons.video_call,
            buttonAction: (){
              print("Chat Room");
            },
            buttonColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
