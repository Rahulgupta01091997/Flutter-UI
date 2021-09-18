import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        canvasColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[350],
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library,
            ),
            label: 'Coming soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.download_for_offline_outlined,
            ),
            label: 'Downloads',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              height: 600.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/pb.jpg'),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black,
                    ],
                    stops: [0.0, 0.3, 0.8, 1.0],
                  ),
                ),
                child: SafeArea(
                  child: Stack(
                    children: [
                      NetflixAppBar(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: BottomBar(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.fromLTRB(8, 15, 8, 7),
              child: Text(
                'Continue Watching for Raina',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      const SizedBox(width: 8.0),
                      Movie(image: 'assets/himym.jpg'),
                      const SizedBox(width: 8.0),
                      Movie(image: 'assets/bb.jpg'),
                      const SizedBox(width: 8.0),
                      Movie(image: 'assets/rm.jpg'),
                      const SizedBox(width: 8.0),
                      Movie(image: 'assets/himym.jpg'),
                      const SizedBox(width: 8.0),
                      Movie(image: 'assets/bb.jpg'),
                      const SizedBox(width: 8.0),
                      Movie(image: 'assets/rm.jpg'),
                      const SizedBox(width: 8.0),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class NetflixAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: [
              const SizedBox(width: 15.0),
              Image.asset(
                'assets/netflix.png',
                height: 40.0,
              ),
              const Spacer(),
              Icon(
                Icons.search,
                size: 25.0,
                color: Colors.white,
              ),
              const SizedBox(width: 24.0),
              Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"))),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ),
        Container(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TV Shows',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 24.0),
              Text(
                'Movies',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 24.0),
              Text(
                'Categories',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add, color: Colors.white, size: 30.0),
              const SizedBox(height: 8.0),
              Text(
                'My list',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            height: 40.0,
            width: 100.0,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.play_arrow, color: Colors.black, size: 30.0),
                const SizedBox(width: 8.0),
                Text(
                  'Play',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.info_outline, color: Colors.white, size: 30.0),
              const SizedBox(height: 8.0),
              Text(
                'Info',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Movie extends StatelessWidget {
  final String image;

  const Movie({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverAnimatedContainer(
      height: 200.0,
      width: 130.0,
      hoverHeight: 250,
      hoverWidth: 150,
      child: Image.asset(image, fit: BoxFit.cover),
    );
  }
}
