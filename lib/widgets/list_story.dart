import 'package:flutter/material.dart';
import 'package:view_team_4/constants/constants.dart';
import 'package:view_team_4/widgets/avatar_story.dart';

class ListStory extends StatelessWidget {
  const ListStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.heightPercentage(context, 0.13),
      width: double.infinity,
      padding: const EdgeInsets.only(left: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          AvatarStory('story'),
          AvatarStory('story'),
          AvatarStory('story'),
          AvatarStory('story'),
          AvatarStory('story'),
          AvatarStory('story'),
          AvatarStory('story'),
          AvatarStory('story'),
        ],
      ),
    );
  }
}