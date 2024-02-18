import 'package:flutter/material.dart';
import 'package:sealtech/button.dart';

class CustomPage extends StatelessWidget {
  final String title;
  final String bodyText;

  CustomPage({required this.title, required this.bodyText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              bodyText,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CustomButton(
              onPressed: () {
                // Put your code here
              },
              buttonText: 'Click Me',
            ),
          ],
        ),
      ),
    );
  }
}