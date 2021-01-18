import 'dart:ffi';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profiles',
          style: TextStyle(letterSpacing: 1, fontSize: 22.5),
        ),
        backgroundColor: Color(0xff4d5394),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xff6ca8e2), Color(0xff6777ef), Color(0xff6ca8e2)],
          )),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.5),
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.only(bottom: 50),
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 50),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(Icons.person, size: 30),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Username',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 22.5,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'user Username',
                                style: TextStyle(
                                  fontSize: 17.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xff4d5394),
                        thickness: 1.5,
                        indent: 45,
                        height: 30,
                      ),
                      Row(
                        children: [
                          Icon(Icons.email, size: 30),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'E-mail',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 22.5,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'user E-mail',
                                style: TextStyle(
                                  fontSize: 17.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xff4d5394),
                        indent: 45,
                        thickness: 1.5,
                        height: 30,
                      ),
                      Row(
                        children: [
                          Icon(Icons.map, size: 30),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Alamat',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 22.5,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'user Alamat',
                                style: TextStyle(
                                  fontSize: 17.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
