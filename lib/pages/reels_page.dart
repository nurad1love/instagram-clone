import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        title: Text(
          'New publication',
          style: GoogleFonts.josefinSans(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
        ),
        actions: [
          //TODO: confirm page

          TextButton(
            onPressed: () {},
            child: const Text(
              'Next',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 370,
              width: 300,
              color: Colors.orange[100],
            ),
            Container(
              height: 75,
              color: Colors.black,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(23)),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 10.0),
                            child: Icon(Icons.copy, color: Colors.white),
                          ),
                          Text(
                            'Pick a few',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white24),
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt_rounded,
                          color: Colors.white),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: GridView.builder(
                itemCount: 25,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(5.0),
                  color: const Color(0xFFFFE082),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
