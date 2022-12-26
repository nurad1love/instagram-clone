import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/widgets/users_posts.dart';

import '../widgets/buble_story.dart';

class HomePage extends StatelessWidget {
  final List people = [
    'nuradilov_ ',
    'alatoshniki ',
    'm5poweer ',
    'use4k ',
    'adil ',
    'kassellove ',
    'nametov04 ',
    'a1ibek ',
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Text(
              'Instagram',
              style: GoogleFonts.galada(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('Message page');
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 30,
              height: 30,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset('assets/instagram_massage_icon.png'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 8),
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) => CircleStories(
                userName: people[index],
                avatarImage: Image.asset('assets/new_user_image_pr2.png'),
              ),
            ),
          ),
          const Divider(
            color: Colors.black54,
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: people.length,
              itemBuilder: (context, index) => UsersPost(
                name: people[index],
                avatarImage: Image.asset('assets/new_user_image_pr2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
