import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_anonomously/signInScreen.dart';

import 'Home_Page.dart';

// ignore: camel_case_types
class Landing_Page extends StatefulWidget {
  @override
  _Landing_PageState createState() => _Landing_PageState();
}

// ignore: camel_case_types
class _Landing_PageState extends State<Landing_Page> {
  User _user;

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(onSignIn: (User user) {
        setState(() {
          _user = user;
        });
      });
    }
    return HomePage(
      onsignOut: () {
        setState(() {
          _user = null;
        });
      },
    );
  }
}
