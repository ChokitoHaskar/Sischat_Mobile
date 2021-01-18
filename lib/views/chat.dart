import 'package:flutter/material.dart';
import 'package:st_mobile_ui/custom/chatsView.dart';
import 'package:st_mobile_ui/custom/customwidget.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String message = '';
  final _chatKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff6777ef),
        title: Text(
          'Person Name',
          style: TextStyle(
              fontSize: 20, letterSpacing: 2, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: CustomDrawer(),
      body: Stack(
        children: <Widget>[
          BgChat(),
          Container(
            color: Colors.transparent,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  padding: EdgeInsets.only(bottom: 70),
                  children: <Widget>[
                    ChatsFromOthers(),
                    ChatsFromOthers(),
                    ChatsFromOthers(),
                    ChatsFromOthers(),
                    ChatsFromOthers(),
                    ChatsFromUser(),
                    ChatsFromUser(),
                    ChatsFromUser(),
                    ChatsFromUser(),
                    ChatsFromUser(),
                    ChatsFromUser(),
                    ChatsFromOthers(),
                    ChatsFromOthers(),
                    ChatsFromUser(),
                    ChatsFromUser(),
                    ChatsFromOthers(),
                    ChatsFromOthers(),
                    ChatsFromUser(),
                    ChatsFromUser(),
                    ChatsFromOthers(),
                    ChatsFromOthers(),
                    ChatsFromUser(),
                    ChatsFromUser(),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Color(0xff6777ef),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Form(
                        key: _chatKey,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: TextFormField(
                            validator: (val) =>
                                val.isEmpty ? 'Tidak ada pesan' : null,
                            onChanged: (val) {
                              setState(() {
                                message = val;
                              });
                            },
                            style: TextStyle(fontSize: 17.5),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              hintText: 'Ketikkan pesan',
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.75,
                                    color: Color(0xff6777ef),
                                  ),
                                  borderRadius: BorderRadius.circular(25)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color(0xff6777ef),
                                  ),
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (message.isEmpty) {
                            print('empty');
                          } else {
                            print(message);
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(Icons.send, color: Color(0xff6777ef)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
