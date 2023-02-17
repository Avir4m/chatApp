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
      appBar: AppBar(
        title: const Text('Chat App'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black26))),
            child: ListTile(
              title: const Text('Username', textAlign: TextAlign.start),
              leading: const CircleAvatar(backgroundImage: AssetImage("...")),
              onTap: () {
                Navigator.pop(context, const ChatPage());
              },
            ),
          );
        },
      ),
    );
  }
}
