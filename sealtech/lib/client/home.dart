import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Center(
            child: Image.asset('lib/images/logo-word-no-background.png', width: 160,),
          ),
          backgroundColor: primary75,
        ),
        body: Center(
          child: Container(
            child: Text('This is homepage'),
          ),
        ),
      );
}