import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // mengambil value user login saat ini
  final user = FirebaseAuth.instance.currentUser;

  void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: signOutUser, icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text(
          "Berhasil login sebagai " + user!.email.toString(),
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
