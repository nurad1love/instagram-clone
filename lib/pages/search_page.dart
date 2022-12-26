import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/widgets/grid.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Container(
          margin: const EdgeInsets.only(top: 5, left: 5, bottom: 5),
          width: 700,
          height: 40,
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search',
              hintStyle: GoogleFonts.montserrat(),
            ),
          ),
        ),
        actions: [
          Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset('assets/instagram_location_icon2.png'),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: GridViewBuilder(),
      ),
    );
  }
}
