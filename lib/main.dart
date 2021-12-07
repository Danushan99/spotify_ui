import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Color(0xFF191919),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      appBar: AppBar(
        backgroundColor: Color(0xFF191919),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.access_time_sharp),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.settings_outlined),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.8),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: "Library",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.shop),
          //   label: "Premium",
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
              ),
              child: Text(
                "Good Evening",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AlbumMini(
                    image: 'assets/arr.jpeg',
                    text: "A.R.Rahman",
                  ),
                  AlbumMini(
                    image: 'assets/u1.jpeg',
                    text: "Yuvan\nShankar Raja",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AlbumMini(
                    image: 'assets/ani.jpeg',
                    text: "Anirudh\nRavichander",
                  ),
                  AlbumMini(
                    image: 'assets/gvp.jpeg',
                    text: "G. V. Prakash\nKumar",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Recently Played",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: Image.asset(
                            'assets/govith.jpeg',
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Govind Vasanthaa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 25.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/new.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Nan Oru Alian",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/sor.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Soorarai Pottru",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 23.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/kala.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Kaala",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Recommended For You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset(
                          'assets/90s.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "90's Sad Tamil",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/u12.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Romantic Yuvan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/albmq.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Indie Hip Hop Tamil",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/prb.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Party Time",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/new2.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Always Raja",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Favorite Albums",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset(
                          'assets/pradep.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "I Love PradeepKumar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/rmc.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Tamil Romance",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/u12.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Romantic Yuvan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/prb.jpeg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Party Time",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlbumMini extends StatelessWidget {
  final String image;
  final String text;

  const AlbumMini({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFF313132),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              child: Image.asset(
                image,
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
