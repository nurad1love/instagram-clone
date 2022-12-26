import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {

  final bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Notifications',
          style: GoogleFonts.josefinSans(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 15, bottom: 20.0),
              child: Text('Today',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15),
                CircleAvatar(
                  radius: 30,
                    backgroundImage: AssetImage('assets/nature_example_image.jpg'),),
                Expanded(child: SizedBox()),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Subscribe'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
