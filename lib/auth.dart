import 'Package:flutter/material.dart';

class Auth extends StatelessWidget{
  const Auth({
    super.key
  });

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Chat App', style: TextStyle(color: Colors.white,fontSize: 40)),

          SizedBox(height: 25),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 178, 19, 72),
            fixedSize: const Size(280, 50)
            ),
            onPressed: (){},
            child: Text('Log in', style: TextStyle(color: Colors.white, fontSize: 15),)
          ),

          SizedBox(height: 10),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 178, 19, 72),
              minimumSize: Size(280, 57)
            ),
            onPressed: (){},
            child: Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 15)),)
        ]
      ))
    );
  }
}