import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy and Security', style: TextStyle(fontWeight: FontWeight.w600),),
        centerTitle: true,
        toolbarHeight: kToolbarHeight + MediaQuery.of(context).padding.top,
      ),
      body: Center(
        child: Text('Privacy Policy content goes here'),
      ),
    );
  }
}
