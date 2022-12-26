import 'package:flutter/material.dart';

class CircleStories extends StatefulWidget {
  final String userName;

  final Image avatarImage;

  const CircleStories(
      {super.key, required this.userName, required this.avatarImage});

  @override
  State<CircleStories> createState() => _CircleStoriesState();
}

class _CircleStoriesState extends State<CircleStories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 5.0, left: 8.0, right: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.2),
            radius: 35,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: widget.avatarImage,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(widget.userName),
        ],
      ),
    );
  }
}
