import 'package:facebook_clone_flutter/assets.dart';
import 'package:facebook_clone_flutter/widgets/suggestionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You may known"),
            trailing: IconButton(
              onPressed: () {
                print("More clicked");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: rcb,
                  name: "Royal",
                  mutualFriends: "1 mutual Friend",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: () {
                    print("Remove this person");
                  },
                ),
                SuggestionCard(
                  avatar: son,
                  name: "Son",
                  mutualFriends: "4 mutual Friend",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: () {
                    print("Remove this person");
                  },
                ),
                SuggestionCard(
                  avatar: fcb,
                  name: "FC Barcelona",
                  mutualFriends: "5 mutual Friend",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: () {
                    print("Remove this person");
                  },
                ),
                SuggestionCard(
                  avatar: kane,
                  name: "Kane Williamson",
                  mutualFriends: "2 mutual Friend",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: () {
                    print("Remove this person");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
