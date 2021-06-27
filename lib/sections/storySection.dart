import 'package:facebook_clone_flutter/assets.dart';
import 'package:facebook_clone_flutter/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
    height: 250,
    child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(labelText: "Add to Story",
          avatar: messi,
          story: messi,
          createStoryStatus: true,
          ),
          StoryCard(labelText: "Dhoni",
            avatar: dhoni,
            story: dhonip,
            displayBorder: true,
          ),

          StoryCard(labelText: "Kane",
            avatar: kane,
            story: kanep,
            displayBorder: true,
          ),
          StoryCard(labelText: "Kohli",
            avatar: kohli,
            story: kohlip,
            displayBorder: true,
          ),
          StoryCard(labelText: "Mammoty",
            avatar: mammoty,
            story: mammotyp,
            displayBorder: true,
          ),
          StoryCard(labelText: "Dhoni",
            avatar: dhoni,
            story: dhonip,
            displayBorder: true,
          ),

          StoryCard(labelText: "Kane",
            avatar: kane,
            story: kanep,
            displayBorder: true,
          ),
          StoryCard(labelText: "Kohli",
            avatar: kohli,
            story: kohlip,
            displayBorder: true,
          ),
          StoryCard(labelText: "Mammoty",
            avatar: mammoty,
            story: mammotyp,
            displayBorder: true,
          ),


  ],
  ),
    );
  }
}
