import 'package:flutter/material.dart';
import 'package:sealtech/button.dart';

class CustomPage extends StatelessWidget {
  final String title;
  final String bodyText;
  final Color buttonColor; // Add this line to add a buttonColor parameter

  CustomPage({required this.title, required this.bodyText, this.buttonColor = Colors.blue});

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
            GradientButton(
              buttonText: 'Press Me',
              enableIcon: true,
              onPressed: () {
                print('Button pressed!');
              },
              colors: [const Color.fromARGB(255, 255, 17, 0), const Color.fromARGB(255, 70, 91, 108)], // Set the gradient colors to red and blue
            )
          ],
        ),
      ),
    );
  }
}