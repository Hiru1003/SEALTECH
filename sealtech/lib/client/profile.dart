import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';

class Profile extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text('Profile'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset('lib/images/logoIconBlack.png'),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 100, color: primaryColor,),
              SizedBox(height: 8.0),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'aarruwanthie@gmail.com',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      );
}