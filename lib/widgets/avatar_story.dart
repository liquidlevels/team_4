import 'package:flutter/material.dart';

class AvatarStory extends StatelessWidget {
  final String text;
  const AvatarStory(
    this. text,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
            ),
            const SizedBox(height: 10),
            Text(text),
          ],
        ),
    );
  }
}