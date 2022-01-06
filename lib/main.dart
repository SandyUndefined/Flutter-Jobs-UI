import 'package:flutter/material.dart';
import 'package:jobs_ui/screens/employee.dart';
import 'package:jobs_ui/screens/language.dart';
import 'package:jobs_ui/screens/login.dart';
import 'package:jobs_ui/screens/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/images/launch.png"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
    );
  }
}
