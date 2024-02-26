import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Center(
            child: Image.asset('lib/images/logo-word-no-background.png', width: 160,),
          ),
          backgroundColor: bgColor,
        ),
  );
}
