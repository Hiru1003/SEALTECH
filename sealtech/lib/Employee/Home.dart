import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({
    super.key,
  });

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
        ),
        elevation: 0.00,
        backgroundColor: Color.fromRGBO(251, 147, 0, 1),
      ),
    );
  }
}
