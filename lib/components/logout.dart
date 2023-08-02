import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: ElevatedButton(
          onPressed: logOutFunc,
          child: Text("Logout"),
        ));
  }
}

void logOutFunc() {
  FirebaseAuth.instance.signOut();
}
