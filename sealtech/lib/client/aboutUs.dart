// about_us.dart
import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset('lib/images/logoIconBlack.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16,),
            Text(
              'Waterproof  |  Seal  |  Protection',
              style: TextStyle(color: primaryColor),
              textAlign: TextAlign.left,
            ),
            Text(
              'About Our Company SEALTECH',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
