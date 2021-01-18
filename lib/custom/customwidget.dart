import 'package:flutter/material.dart';
import 'package:st_mobile_ui/routes.dart';

class BgChat extends StatelessWidget {
  const BgChat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff6777ef),
            Color(0xff9cbcde),
            Color(0xfff4f5f9),
          ],
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'SISCHAT',
                  style: TextStyle(
                      color: Colors.white, letterSpacing: 2, fontSize: 40),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Chat Yuk, Choki !',
                  style: TextStyle(
                      color: Colors.white, letterSpacing: 1, fontSize: 25),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.device_hub),
            title: Text('Online Users'),
            onTap: () {
              Navigator.pushNamed(context, OnlineUsersView);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, ProfilesView);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, AuthView, ModalRoute.withName(AuthView));
            },
          ),
        ],
      ),
    );
  }
}
