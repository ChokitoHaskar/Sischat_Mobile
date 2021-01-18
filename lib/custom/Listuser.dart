import 'package:flutter/material.dart';

class ListUsers extends StatelessWidget {
  const ListUsers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              size: 50,
            ),
            Text(
              'Person Name',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
