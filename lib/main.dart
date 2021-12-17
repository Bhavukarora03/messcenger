import 'package:flutter/material.dart';
import 'package:messcenger/screens/welcome_screen.dart';
import 'package:messcenger/screens/login_screen.dart';
import 'package:messcenger/screens/registration_screen.dart';
import 'package:messcenger/screens/chat_screen.dart';

void main() => runApp(Messcenger());

class Messcenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        canvasColor: Colors.black54,
        scaffoldBackgroundColor: Colors.blueGrey,


      ),
      home: WelcomeScreen(),

      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id : (context) => ChatScreen()
      },
    );
  }
}
