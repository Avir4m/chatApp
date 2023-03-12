import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    super.key,
    required int userId,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leadingWidth: 30,
        title: Row(
          children: const [
            CircleAvatar(
                backgroundImage: AssetImage("images/default_profile_pic.jpg")),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Username"),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const ListTile(
                    trailing: Text("{time}",
                        style: TextStyle(fontSize: 10, color: Colors.white70)),
                    subtitle: Text("{message}",
                        style: TextStyle(fontSize: 12.5, color: Colors.white)),
                    title: Text("{Username}",
                        style: TextStyle(fontSize: 10, color: Colors.white60)),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 75.0,
              padding: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.bottomCenter,
              child: const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(),
                      hintText: "Enter message",
                      hintStyle: TextStyle(fontSize: 12.5, color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
