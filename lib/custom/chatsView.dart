import 'package:flutter/material.dart';

class ChatsFromOthers extends StatelessWidget {
  const ChatsFromOthers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Hi world',
                overflow: TextOverflow.visible,
                style: TextStyle(
                  wordSpacing: 2,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ChatsFromUser extends StatelessWidget {
  const ChatsFromUser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Hello world',
                overflow: TextOverflow.visible,
                style: TextStyle(
                  wordSpacing: 2,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
