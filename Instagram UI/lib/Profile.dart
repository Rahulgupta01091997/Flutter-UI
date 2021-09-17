import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/utils.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "rahulraina426",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, top: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        const SizedBox(width: 20.0),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color: Colors.grey[300], width: 1)),
                          padding: const EdgeInsets.all(3.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/users/rahul.jpg"))),
                              )),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "120",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("Posts",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1,640",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              const SizedBox(
                                height: 5,
                              ),
                              Text("Followers",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white))
                            ],
                          )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("744",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              const SizedBox(
                                height: 5,
                              ),
                              Text("Following",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white))
                            ],
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
