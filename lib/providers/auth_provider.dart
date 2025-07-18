import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  User? user;

  AuthProvider() {
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      this.user = user;
      notifyListeners();
    });
  }

  Future<void> signUp(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print("Error signing up: $e");
    }
  }

  Future<void> signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print("Error signing in: $e");
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
