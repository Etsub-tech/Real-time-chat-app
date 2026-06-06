import 'package:flutter/material.dart';
import './auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({
    super.key
  });

  @override
  Widget build (BuildContext context){
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      home: Auth()
    );
  }
}


