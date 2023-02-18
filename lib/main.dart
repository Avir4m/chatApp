import 'package:chat_app/chat_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Chat App'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              textColor: Colors.white,
              title: const Text('Username', textAlign: TextAlign.start),
              subtitle: const Text('Last Message',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white60)),
              leading: const CircleAvatar(
                  backgroundImage:
                      AssetImage("images/default_profile_pic.jpg")),
              trailing:
                  const Text('13:32', style: TextStyle(color: Colors.white60)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatPage(userId: 1)));
              },
            ),
          );
        },
      ),
    );
  }
}
