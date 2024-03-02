import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';
import 'package:sealtech/loadingPage2.dart';
import 'package:sealtech/loadingpage1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: accent75,
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: accentColor,
          cursorColor: accent75,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return LoadingPage1();
          } else {
            return LoadingPage2();
          }
        },
      ),
    );
  }
}