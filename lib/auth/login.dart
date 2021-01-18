import 'package:flutter/material.dart';
import 'package:st_mobile_ui/routes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username;
  String password;
  String error;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Card(
          elevation: 20,
          child: Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.67,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text(
                    'SISCHAT - B',
                    style: (TextStyle(fontSize: 20, letterSpacing: 2)),
                  ),
                ),
                Divider(
                  height: 30,
                  color: Colors.blue,
                  indent: 5,
                  endIndent: 5,
                  thickness: 2.5,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 30),
                          child: Text('Login')),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Username'),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (val) => val.isEmpty
                                  ? 'Input username'
                                  : val.length < 3
                                      ? 'Username must not less than 3 characters'
                                      : null,
                              onChanged: (val) {
                                setState(() {
                                  username = val;
                                });
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 0),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 0.1)),
                                focusedBorder: OutlineInputBorder(),
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Password'),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (val) => val.isEmpty
                                  ? 'Input Password'
                                  : val.length < 6
                                      ? 'Password must contain at least 6 characters'
                                      : null,
                              obscureText: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 0),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 0.1)),
                                focusedBorder: OutlineInputBorder(),
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: FlatButton(
                                minWidth: MediaQuery.of(context).size.width * 1,
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                                color: Colors.blue,
                                onPressed: () {
                                  if (_formkey.currentState.validate()) {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        DashboardView,
                                        ModalRoute.withName(DashboardView));
                                  } else {
                                    setState(() {
                                      error =
                                          'please insert your credential information';
                                    });
                                  }
                                },
                              ),
                            ),
                            Divider(
                              height: 40,
                              thickness: 2,
                            ),
                            Center(
                              child: Text('Belum punya akun ?'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            OutlinedButton(
                              child: Center(
                                child: Text(
                                  'Daftar Sekarang',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
