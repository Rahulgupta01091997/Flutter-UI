import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey[800],
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select contact",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "7 contacts",
                    style: TextStyle(color: Colors.grey[350], fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            size: 25,
          ),
          const SizedBox(
            width: 15.0,
          ),
          Icon(
            Icons.more_vert,
            size: 25,
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.tealAccent[400],
                    ),
                    child: Icon(
                      Icons.group,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                  title: Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "New group",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.tealAccent[400],
                  ),
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                title: Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "New contact",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                trailing: Image.asset(
                  "assets/qr-generator.png",
                  height: 20,
                  width: 20,
                  filterQuality: FilterQuality.high,
                  colorBlendMode: BlendMode.clear,
                ),
              ),
            ),
            ContactItem(
              name: "Suresh Raina",
              image: "assets/SR.jpg",
              status: "Believe",
            ),
            ContactItem(
              name: "Mahi Bhai",
              image: "assets/MS.jpg",
              status: "Process > Results",
            ),
            ContactItem(
              name: "Virat Kohli",
              image: "assets/VK.jpg",
              status: "Go Hard or Go Home",
            ),
            ContactItem(
              name: "Rohit Sharma",
              image: "assets/RS.jpg",
              status: "Aala Re.",
            ),
            ContactItem(
              name: "KL Rahul",
              image: "assets/KL.jpg",
              status: "Shut the White Noise",
            ),
            ContactItem(
              name: "Bhuvaneshwar Kumar",
              image: "assets/BK.jpg",
              status: "Improving",
            ),
            ContactItem(
              name: "Ravindra Jadeja",
              image: "assets/RJ.jpg",
              status: "Sir Jadeja",
            ),
          ],
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final String name;
  final String image;
  final String status;
  const ContactItem(
      {Key? key, required this.name, required this.image, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Container(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Container(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              status,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
