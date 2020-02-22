import 'package:flutter/material.dart';
import 'package:dental_clinick/pages/home.dart';
import 'package:dental_clinick/pages/login_screen.dart';
import 'package:dental_clinick/pages/adminPage.dart';

void main() => runApp(MyApp());

String email;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new Home(),
        '/login_screen': (BuildContext context) => new LoginScreen(),
        '/adminPage': (BuildContext context) => new Admin(),
      },
    );
  }
}