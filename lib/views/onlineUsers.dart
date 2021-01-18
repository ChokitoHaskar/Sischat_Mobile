import 'package:flutter/material.dart';
import 'package:st_mobile_ui/custom/Listuser.dart';

class ListUsersOnline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6777ef),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Online Users',
          style: TextStyle(letterSpacing: 2, fontSize: 22.5),
        ),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff6777ef),
                Color(0xff6ca8e2),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            child: Wrap(
              children: <Widget>[
                ListUsers(),
                ListUsers(),
                ListUsers(),
                ListUsers(),
                ListUsers(),
                ListUsers(),
                ListUsers(),
                ListUsers(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
