import 'package:flutter/material.dart';           
import 'package:firebase_auth/firebase_auth.dart'; 
import './chatpage.dart';
import './register.dart';


class Auth extends StatefulWidget{
  const Auth({
    super.key
  });

  @override

  State <Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth>{
  final _auth = FirebaseAuth.instance; //FirebaseAuth.instance gives you a singleton object that lets you interact with Firebase’s authentication system.
  String email = '';
  String password = '';

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 350,
          child: TextField(
            style: TextStyle(color:Colors.white),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Enter your email',
            ),
            onChanged: (value) {
              email = value;
            }
          ),),

          SizedBox(
            width: 350,
            child: TextField(
              style: TextStyle(color: Colors.white),
              obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password'
            ),
            onChanged: (value){
              password = value;
            }
          )),

          SizedBox(height: 40),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 178, 19, 72),
            fixedSize: const Size(280, 50)
            ),
            onPressed: () async{
              try{
              UserCredential user = await _auth.signInWithEmailAndPassword(
                email : email,
                password : password);
                if (user.user != null){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()) );
                }
              }
              catch (e){
                print(e);
              }
            },
            child: Text('Log in', style: TextStyle(color: Colors.white, fontSize: 15),)
          ),

          SizedBox(height: 10),

          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
            },
            child: Text('No account? Register',  style: TextStyle(color: const Color.fromARGB(255, 105, 122, 178)))
          )
        ]
      ))
    );
  }
}

