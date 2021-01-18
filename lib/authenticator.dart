import 'package:flutter/material.dart';
import 'package:st_mobile_ui/auth/login.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xff6777ef),
          ),
          Login()
        ],
      ),
    );
  }
}
