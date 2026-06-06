import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 93, 80, 80),
      
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello!",
              style: TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 233, 233)
              ),
            ),
            SizedBox(height: 10),
            Text(
              "You have successfully logged in :)",
              style: TextStyle(
                fontSize: 20, 
                color: Color.fromARGB(221, 231, 231, 231),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
