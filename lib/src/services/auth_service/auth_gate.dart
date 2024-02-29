import 'package:c/src/feautures/screens/home/home_page.dart';
import 'package:c/src/services/auth_service/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
            //return const NavigationMenu();
          } else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
