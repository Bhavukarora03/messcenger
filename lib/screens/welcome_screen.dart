import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:messcenger/screens/login_screen.dart';
import 'package:messcenger/screens/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'Welcome_Screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();

}

class _WelcomeScreenState extends  State<WelcomeScreen> with SingleTickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {

    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Center(
                    widthFactor: 1.9,
                    child: Container(
                      child: Image.asset('images/chat.png'),
                      height: 200.0,
                      width: 200.0,
                      alignment: Alignment.center,

                    ),
                  ),
                ),
                // const Text(
                //   'CHAT',
                //   style:   TextStyle(
                //     color: Colors.black54,
                //     fontSize: 20.0,
                //     fontWeight: FontWeight.w900,
                //   ),
                // ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 20.0,
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20.0),
                child: MaterialButton(

                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 60.0,


                  child: const Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Material(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20.0),
                elevation: 20.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: 100.0,
                  height: 60.0,
                  child: const Text(
                    'Register',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  }

