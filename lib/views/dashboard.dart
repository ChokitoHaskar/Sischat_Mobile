import 'package:flutter/material.dart';
import 'package:st_mobile_ui/custom/customwidget.dart';
import 'package:st_mobile_ui/custom/listmessages.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff6777ef),
        title: Text(
          'SISCHAT',
          style: TextStyle(
              fontSize: 30, letterSpacing: 3, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff6777ef),
                  Color(0xff408cdc),
                  Color(0xff408cdc),
                  Color(0xff6777ef),
                ],
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              ListMessages(),
            ],
          )
        ],
      ),
    );
  }
}
