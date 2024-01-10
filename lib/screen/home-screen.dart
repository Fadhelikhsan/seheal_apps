import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seheal_apps/services/auth/auth_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void SignOut() {
    final authService = Provider.of<AuthService>(context, listen: false);

    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
            onPressed: SignOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
