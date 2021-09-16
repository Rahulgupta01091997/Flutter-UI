import 'package:flutter/material.dart';
import 'package:insta/utils/chatMessages.dart';
import 'Contacts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.blueGrey[900]),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("pressed");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contacts()),
              );
            },
            backgroundColor: Colors.tealAccent[400],
            child: Icon(Icons.chat_bubble),
          ),
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.blueGrey[800],
            title: Text(
              "Whatsapp",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              Icon(Icons.search),
              const SizedBox(
                width: 15.0,
              ),
              Icon(Icons.more_vert),
              const SizedBox(
                width: 10.0,
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.tealAccent[400],
              indicatorWeight: 3.0,
              labelColor: Colors.tealAccent[400],
              unselectedLabelColor: Colors.grey[350],
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                )
              ],
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 5),
            child: ListView(
              itemExtent: 80.0,
              children: chatItems,
            ),
          )),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String name;
  final String image;
  final String text;
  final DateTime time;
  const ChatItem(
      {Key? key,
      required this.name,
      required this.image,
      required this.text,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: SizedBox(
            height: 80.0,
            width: 60.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          trailing: Container(
            // margin: EdgeInsets.only(top: 15),
            child: Text(
              '${time.hour}: ${time.minute}',
              style: TextStyle(color: Colors.grey[350]),
            ),
          ),
          title: Text(
            name,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          subtitle: Text(
            text,
            style: TextStyle(fontSize: 14, color: Colors.grey[350]),
          ),
        )
      ],
    );
  }
}
