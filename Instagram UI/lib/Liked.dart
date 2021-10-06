import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/utils.dart';

class Liked extends StatefulWidget {
  const Liked({Key key}) : super(key: key);
  @override
  _Liked createState() => _Liked();
}

class _Liked extends State<Liked> {
  List<String> Images = [
    "assets/posts/raina1.png",
    "assets/posts/1.png",
    "assets/posts/wallpaper.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Builder(
      builder: (context) => SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  "Activity",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                height: 65,
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey[700], width: 0.3))),
                // padding: EdgeInsets.only(top: 15, bottom: 25),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        border:
                            Border.all(width: 0.4, color: Colors.grey[700])),
                    child: Icon(
                      Icons.monetization_on,
                      color: Colors.white,
                      size: 46,
                    ),
                  ),
                  title: Text(
                    "Monetisation & shops",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    "Branded content and shopping.",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.bottomLeft,
                height: 30,
                width: double.infinity,
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  "Today",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image.asset(
                          Images[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  title: RichText(
                    text: new TextSpan(
                      style: new TextStyle(
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        new TextSpan(
                            text: 'sureshraina3, mahi7781 ',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            )),
                        new TextSpan(
                            text: 'liked your photo.',
                            style: TextStyle(fontSize: 15)),
                        new TextSpan(
                            text: ' 22 h',
                            style: TextStyle(fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                  trailing: Container(
                    width: 50.0,
                    height: 50.0,
                    child: ClipRRect(
                      child: Image.asset(
                        Images[2],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                    leading: Container(
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60.0),
                          child: Image.asset(
                            Images[0],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: RichText(
                      text: new TextSpan(
                        style: new TextStyle(
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                              text: 'sureshraina3 ',
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              )),
                          new TextSpan(
                              text: 'started following you.',
                              style: TextStyle(fontSize: 15)),
                          new TextSpan(
                              text: ' 22 h',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                        ],
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Following",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                          side: BorderSide(color: Colors.grey[350], width: 1)),
                    )),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                    leading: Container(
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60.0),
                          child: Image.asset(
                            Images[1],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: RichText(
                      text: new TextSpan(
                        style: new TextStyle(
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                              text: 'domore_ ',
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              )),
                          new TextSpan(
                              text: 'started following you.',
                              style: TextStyle(fontSize: 15)),
                          new TextSpan(
                              text: ' 23 h',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                        ],
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
