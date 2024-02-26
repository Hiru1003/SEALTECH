import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 208), child: Image.asset('lib/images/pro1.png')),
              Padding(
                padding: EdgeInsets.only(top: 208.0, left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Text 1'),
                    Text('Text 2'),
                    Text('Text 3'),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
