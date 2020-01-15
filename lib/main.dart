import 'package:flutter/material.dart';
import 'package:dental_clinick/screens/login_screen.dart';
import 'package:dental_clinick/screens/adminPage.dart';

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
        '/login_screen': (BuildContext context) => new LoginScreen(),
        '/adminPage': (BuildContext context) => new Admin(),
      },
    );
  }
}