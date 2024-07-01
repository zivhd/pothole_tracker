import 'package:flutter/material.dart';
import 'package:pothole_mobile/components/arsenal_button.dart';
import 'package:pothole_mobile/components/arsenal_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Icon(Icons.dangerous, size: 100),
                const SizedBox(height: 30),
                Text(
                  'Welcome back to Pothole Tracker',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                ArsenalTextField(
                  controller: usernameController,
                  hintText: "Username",
                  obscureText: false,
                ),
                const SizedBox(height: 5),
                ArsenalTextField(
                  controller: usernameController,
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ArsenalButton(
                  text: "Sign In",
                  onTap: signUserIn,
                ),

                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ), const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Or continue with.."),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                   
                  ],
                ),
                 Row(children: [
                      Text("Not a contributor?"),
                      Text(" Register now", style: TextStyle(color:Colors.blue),)
                    ],),
              ],
            ),
          ),
        ));
  }

  signUserIn() {}
}
