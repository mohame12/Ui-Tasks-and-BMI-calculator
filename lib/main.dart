import 'package:abdallamassenger/screens/bmi_screen.dart';
import 'package:abdallamassenger/screens/counter.dart';
import 'package:abdallamassenger/screens/login_screen.dart';
import 'package:abdallamassenger/screens/massenger.dart';
import 'package:abdallamassenger/screens/result.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: LoginScreen(),
  );
  }
}
