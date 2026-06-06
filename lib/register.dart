import 'package:flutter/material.dart';          // ✅ fixed
import 'package:firebase_auth/firebase_auth.dart';
import './auth.dart';
import './chatpage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _auth = FirebaseAuth.instance;

  String email = '';
  String password = '';
  String confirmPassword = '';  // ✅ added missing variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // ✅ Field 1: Email (not username)
            SizedBox(
              width: 400,
              child: TextField(
                keyboardType: TextInputType.emailAddress, // ✅ correct keyboard
                decoration: InputDecoration(
                  labelText: 'Enter your email', // ✅ fixed label
                ),
                onChanged: (value) {
                  email = value; // ✅ = not :
                },
              ),
            ),

            SizedBox(height: 10),

            // ✅ Field 2: Password
            SizedBox(
              width: 400,
              child: TextField(
                obscureText: true, // ✅ hides text
                decoration: InputDecoration(
                  labelText: 'Create Password',
                ),
                onChanged: (value) {
                  password = value; // ✅ = not :
                },
              ),
            ),

            SizedBox(height: 10),

            // ✅ Field 3: Confirm Password
            SizedBox(
              width: 400,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                ),
                onChanged: (value) {
                  confirmPassword = value; // ✅ = not :
                },
              ),
            ),

            SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 178, 19, 72),
                fixedSize: Size(280, 50),
              ),
              onPressed: () async {
                try { // ✅ try/catch wraps the await
                  UserCredential user = await _auth
                    .createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                  if (user.user != null) {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()),
                    );
                  }
                } catch (e) {
                  print(e);
                }
              },
              child: Text('Sign up',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),

            SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Auth()),
                );
              },
              child: Text(
                'Already have an account? Sign In',
                style: TextStyle(
                  color: const Color.fromARGB(255, 105, 122, 178),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}