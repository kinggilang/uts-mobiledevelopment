import 'package:flutter/material.dart';
import 'package:uts/login_page.dart';
import 'package:uts/login_sukses.dart';
import 'package:uts/profile_page.dart';
import 'package:uts/register_page.dart';
import 'package:uts/register_sukses.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/profile' : (context)=> ProfilePage(),
        '/registersukses' : (context)=> RegisterSukses(),
        '/loginsukses' : (context)=> LoginSukses(),

      },
    );
  }
}