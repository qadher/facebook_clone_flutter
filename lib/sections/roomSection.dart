import 'package:facebook_clone_flutter/widgets/avatar.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
         createRoomButtom(),
          Avatar(displayImage: messi, displayStatus: true),
          Avatar(displayImage: dhoni, displayStatus: true),
          Avatar(displayImage: kohli, displayStatus: true),
          Avatar(displayImage: mammoty, displayStatus: true),
          Avatar(displayImage: prithi, displayStatus: true),
          Avatar(displayImage: messi, displayStatus: true),
          Avatar(displayImage: dhoni, displayStatus: true),
          Avatar(displayImage: kohli, displayStatus: true),
          Avatar(displayImage: mammoty, displayStatus: true),
          Avatar(displayImage: prithi, displayStatus: true),

          ],
      ),
    );
  }

  Widget createRoomButtom(){
    return  Container(
      padding: EdgeInsets.only(right: 5, left: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(
            width: 1,
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          print("Create a chat room");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
