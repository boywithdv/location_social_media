import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:location_social_media/auth/login_or_register.dart';
import 'package:location_social_media/pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            //ここが本来はTimeLineウィジェットを使用
            return const HomePage();
          }
          // user is not login
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
