import 'package:awesome_project/Home%20Page%20Widgets/StoryView.dart';
import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  final String profileImgUrl;
  final String storyImgUrl;
  const Story({super.key, required this.profileImgUrl, required this.storyImgUrl});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StoryView(storyImgUrl: widget.storyImgUrl, profileImgUrl: widget.profileImgUrl,)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child:
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage(widget.profileImgUrl),
        )
      ),
    );
  }
}
