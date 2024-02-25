import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Category'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset('lib/images/logoIconBlack.png'),
            ),
          ],
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 280,
                    width: 180,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    width: 180,
                    color: Colors.red,
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 130,
                    width: 180,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}