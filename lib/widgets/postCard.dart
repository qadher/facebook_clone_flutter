import 'package:facebook_clone_flutter/widgets/avatar.dart';
import 'package:facebook_clone_flutter/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedTime;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedTime,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5,),
      child:
      Text(
      postTitle == null ? "" : postTitle,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10,),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedTime),
          SizedBox(width: 10,),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("Open more menu");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
