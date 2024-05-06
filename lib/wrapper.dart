import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:frigomagic/screens/Home_page.dart';
import 'package:frigomagic/screens/login_screen.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Or any loading indicator
          } else if (snapshot.hasData) {
            // User is authenticated, navigate to HomeScreen

            return HomeScreen();

          } else {
            // User is not authenticated, show login page
            return LoginPage();
          }
        },
      ),
    );
  }
}
