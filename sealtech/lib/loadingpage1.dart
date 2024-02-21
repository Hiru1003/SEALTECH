import 'package:flutter/material.dart';

class LoadingPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 142, 33),
      body: Center(
        child: Image.asset('lib/images/logo-no-background.png'),
      ),
    );
  }
}
