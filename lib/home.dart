import 'package:facebook_clone_flutter/assets.dart';
import 'package:facebook_clone_flutter/sections/headerButtonSection.dart';
import 'package:facebook_clone_flutter/sections/roomSection.dart';
import 'package:facebook_clone_flutter/sections/statusSection.dart';
import 'package:facebook_clone_flutter/sections/storySection.dart';
import 'package:facebook_clone_flutter/sections/suggestionSection.dart';
import 'package:facebook_clone_flutter/widgets/headerButton.dart';
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
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                print("Go Live");
                  }, buttonColor: Colors.red
              ),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {
                    print("Take Photo");
                  }, buttonColor: Colors.green
              ),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Create Room");
                  }, buttonColor: Colors.purple
              ),
            ),

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
            thickDivider,
            PostCard(
              avatar: tovino,
              name: "Tovino THomas",
              publishedTime: ("Yesterday"),
              postTitle: "",
              postImage: tovinop,
              showBlueTick: true,
              likeCount: "6.8",
              commentCount: "1k",
              shareCount: "1.5k",
            ),
            thickDivider,
            PostCard(
              avatar: prithi,
              name: "Prithviraj Sukumaran",
              publishedTime: ("Yesterday"),
              postTitle: coldCaseTitle,
              postImage: coldcasepost,
              showBlueTick: true,
              likeCount: "19k",
              commentCount: "4.6k",
              shareCount: "2k",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: dhoni,
              name: "MS Dhoni",
              publishedTime: ("1week"),
              postTitle: "Cricket is Royal",
              postImage: dhonip,
              showBlueTick: true,
              likeCount: "11k",
              commentCount: "5k",
              shareCount: "2.2k",
            ),
            thickDivider,
            PostCard(
              avatar: mammoty,
              name: "Mammoty",
              publishedTime: ("1week"),
              postTitle: "Planning Next Movie",
              postImage: mammotyp,
              showBlueTick: true,
              likeCount: "19k",
              commentCount: "4.9k",
              shareCount: "3k",
            ),
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
            thickDivider,
            PostCard(
              avatar: tovino,
              name: "Tovino THomas",
              publishedTime: ("Yesterday"),
              postTitle: "",
              postImage: tovinop,
              showBlueTick: true,
              likeCount: "6.8",
              commentCount: "1k",
              shareCount: "1.5k",
            ),
            thickDivider,
            PostCard(
              avatar: prithi,
              name: "Prithviraj Sukumaran",
              publishedTime: ("Yesterday"),
              postTitle: coldCaseTitle,
              postImage: coldcasepost,
              showBlueTick: true,
              likeCount: "19k",
              commentCount: "4.6k",
              shareCount: "2k",
            ),
            thickDivider,
            PostCard(
              avatar: dhoni,
              name: "MS Dhoni",
              publishedTime: ("1week"),
              postTitle: "Cricket is Royal",
              postImage: dhonip,
              showBlueTick: true,
              likeCount: "11k",
              commentCount: "5k",
              shareCount: "2.2k",
            ),
            thickDivider,
            PostCard(
              avatar: mammoty,
              name: "Mammoty",
              publishedTime: ("1week"),
              postTitle: "Planning Next Movie",
              postImage: mammotyp,
              showBlueTick: true,
              likeCount: "19k",
              commentCount: "4.9k",
              shareCount: "3k",
            ),
          ],
        ),
      ),
    );
  }
}
