import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Services'),
          actions: [
            IconButton(
              icon: Image.asset('lib/images/logoIconBlack.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: Text('This is Service page'),
          ),
        ),
      );
}

class DummyPage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Dummy Page'),
          actions: [
            IconButton(
              icon: Image.asset('assets/logoIconBlack.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: Text('This is a dummy page'),
          ),
        ),
      );
}