import 'package:flutter/material.dart';
import 'package:x_void/Screens/chat.dart';

void main() {
  runApp(const VOID_APP());
}

// ignore: camel_case_types
class VOID_APP extends StatelessWidget {
  const VOID_APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const Chats(),
    );
  }
}