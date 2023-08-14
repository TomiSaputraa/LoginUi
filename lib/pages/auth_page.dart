import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/pages/home_page.dart';
import 'package:flutter_auth/pages/login_register.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // auth page ini sama dengan business logic ataupun middleware
          // yang akan mengarahkan user
          // auth ini akan di panggil ketika aplikasi pertama kali di jalankan sesuai dengan main

          // user is login
          if (snapshot.hasData) {
            return HomePage();
          }
          // user is not login
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
