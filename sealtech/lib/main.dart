import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';
import 'package:sealtech/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
      //home: NavbarC(),
      //home: NavbarE(),
      home: SignInPage(),
    );
  }
}