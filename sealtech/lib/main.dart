import 'package:flutter/material.dart';
import 'package:sealtech/Employee/Home.dart';
import 'package:sealtech/Employee/LocationDetailed1.dart';
import 'package:sealtech/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SignUpPage(),
      home: LocationDetailed1_Page(),
    );
  }
}
