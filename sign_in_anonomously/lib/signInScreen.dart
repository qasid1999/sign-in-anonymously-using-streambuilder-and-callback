import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key, @required this.onSignIn}) : super(key: key);
  final void Function(User) onSignIn;

  /*Future<void> _SignInAnonymously() async {
    final usercredential = await FirebaseAuth.instance.signInAnonymously();
    print('User UID : ${usercredential.user.uid}');
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Anonymously'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final usercredential =
                await FirebaseAuth.instance.signInAnonymously();
            onSignIn(usercredential.user);
            print('User UID : ${usercredential.user.uid}');
          },
          child: Text("Click Here"),
        ),
      ),
    );
  }
}
