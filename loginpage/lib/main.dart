import 'package:flutter/material.dart';
import 'package:loginpage/pages/loginpage.dart';
import 'package:loginpage/pages/themepage.dart';


 void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: ("Login Page"),
    home: Loginpage(),
    theme: ThemeData(primarySwatch: Colors.blue),
    routes: {
      "/loginpage":(context) => Loginpage(),
      "/themepage":(context) => Homepage(),
    },
    

  ));
}