import 'package:flutter/material.dart';
import 'package:st_mobile_ui/undefined.dart';
import 'package:st_mobile_ui/routes.dart';

void main() => runApp(
      MaterialApp(
        title: 'ST-Mobile-UI',
        routes: routes,
        initialRoute: AuthView,
        onUnknownRoute: (settings) =>
            MaterialPageRoute(builder: (context) => UndefinedPage()),
      ),
    );
