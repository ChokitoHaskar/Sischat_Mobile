import 'package:flutter/material.dart';
import 'package:st_mobile_ui/routes.dart';

class ListMessages extends StatelessWidget {
  const ListMessages({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ChatView);
        },
        child: Card(
          elevation: 30,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Person Name',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Message',
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text('10:45 PM'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
