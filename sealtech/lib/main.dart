import 'package:flutter/material.dart';
import 'package:sealtech/Employee/Home.dart';
import 'package:sealtech/loadingPage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Home_Page()
        //LoadingPage2(),
        );
  }
}
