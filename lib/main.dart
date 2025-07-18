import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import '/Screens/authentication_screen.dart';
import '/Screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: MaterialApp(
        title: 'Chat App',
        theme: ThemeData.dark(), // Dark Theme
        home: AuthenticationScreen(),
        routes: {
          '/chat': (context) => ChatScreen(),
        },
      ),
    );
  }
}
