import 'package:flutter/material.dart';

void main(){
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({
    super.key
  });

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: LogChat()
    );
  }
}

class LogChat extends StatelessWidget{
  const LogChat({
    super.key
  });

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('This is the top app bar!'))
    );
  }
}


