import 'package:flutter/material.dart';

class StoryThumbnail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.lightBlue,
        radius: 35,
      ),
    );
  }
}
