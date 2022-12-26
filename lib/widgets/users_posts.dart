import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:like_button/like_button.dart';

class UsersPost extends StatefulWidget {
  final String name;
  final Image avatarImage;

  const UsersPost({super.key, required this.name, required this.avatarImage});

  @override
  State<UsersPost> createState() => _UsersPostState();
}

class _UsersPostState extends State<UsersPost> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  radius: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: widget.avatarImage,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/instagram_ellipsis_icon.png'),
                ),
              ],
            ),
          ),
          Container(
            height: 350,
            color: Colors.grey.withOpacity(0.3),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 10),
            child: Row(
              children: [
                const LikeButton(
                  size: 27,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 8),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/instagram_comment_icon.png'),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/instagram_share_icon2.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 8.0),
            child: Row(
              children: [
                const Text('Liked by '),
                Text(
                  widget.name,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Text(' and '),
                const Text(
                  'others',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: widget.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  TextSpan(
                    text: lorem(paragraphs: 1, words: 10),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
