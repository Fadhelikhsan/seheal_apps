import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/services/auth/login_or_reg.dart';
import 'package:fitness/view/main_tab/main_tab_view.dart';
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
            return const MainTabView();
          } else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
