import 'package:flutter/material.dart';
import 'package:sealtech/client/cartItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: NavbarC(),
      home: CartItem(),
      //home: NavbarE(),
    );
  }
}
