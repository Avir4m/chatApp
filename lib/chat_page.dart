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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          leadingWidth: 30,
          title: Row(
            children: const [
              CircleAvatar(
                  backgroundImage:
                      AssetImage("images/default_profile_pic.jpg")),
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
          )),
    );
  }
}
