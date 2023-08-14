import 'package:flutter/material.dart';
import 'package:flutter_auth/components/my_button.dart';
import 'package:flutter_auth/components/my_textfield.dart';
import 'package:flutter_auth/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // textediting controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in method
  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                // welcome
                Text(
                  "Welcome back you've been missed",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obsecuretext: false,
                ),
                const SizedBox(height: 10),

                // password texfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obsecuretext: true,
                ),
                const SizedBox(height: 10),

                // forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                // sign in button
                MyButton(
                  onTap: signInUser,
                ),

                const SizedBox(height: 50),
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // google  + apple sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // google button
                    SquareTile(imagePath: 'assets/img/google.png'),
                    SizedBox(
                      width: 25,
                    ),

                    // apple button
                    SquareTile(imagePath: 'assets/img/apple.png'),
                  ],
                ),
                const SizedBox(height: 20),
                // register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member? ",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "Register now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
