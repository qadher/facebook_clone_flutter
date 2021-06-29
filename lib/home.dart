import 'package:facebook_clone_flutter/assets.dart';
import 'package:facebook_clone_flutter/sections/headerButtonSection.dart';
import 'package:facebook_clone_flutter/sections/roomSection.dart';
import 'package:facebook_clone_flutter/sections/statusSection.dart';
import 'package:facebook_clone_flutter/sections/storySection.dart';
import 'package:facebook_clone_flutter/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_flutter/widgets/circularButton.dart';

class Home extends StatelessWidget {
  Widget thinDivider =Divider(
    thickness: 1,
    color: Colors.grey[300],
  );

  Widget thickDivider =Divider(
    thickness: 10,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          ),
          actions: [
            CircularButton(buttonIcon: Icons.search,
                buttonAction: (){
                   print("Search Screen");
            },
            ),
            CircularButton(buttonIcon: Icons.messenger,
              buttonAction: (){
                print("messanger Screen");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
                avatar: kohli,
                name: "Virat Kohli",
              publishedTime: ("5h"),
              postTitle: "Never Give Up",
              postImage: kohlip,
              showBlueTick: true,
              likeCount: "10k",
              commentCount: "2k",
              shareCount: "1k",
            ),
          ],
        ),
      ),
    );
  }
}
