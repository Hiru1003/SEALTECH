import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Product Info'),
          actions: [
            IconButton(
              icon: Image.asset('lib/images/logoIconBlack.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  children: [
                    Image.asset('lib/images/proInfo.png'),
                    Image.asset('lib/images/proInfo.png'),
                    Image.asset('lib/images/proInfo.png'),
                  ],
                ),
              ),
              Container(
                child: Text('This is ServiceCards page'),
              ),
            ],
          ),
        ),
      );
}