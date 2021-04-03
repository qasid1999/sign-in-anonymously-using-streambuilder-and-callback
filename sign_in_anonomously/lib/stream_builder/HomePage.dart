import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Logout'),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
          },
        ),
      ),
    );
  }
}
