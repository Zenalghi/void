import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'void',
          style: TextStyle(
            fontFamily: 'Consola',
            color: Colors.white,
          ),
          textScaleFactor: 1.3,
        ),
        // centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 38, 5, 39),


      ),
      body: Center(
        child: Text(
          'Welcome to the Chats Screen',
        ),
      ),
    );
  }
}