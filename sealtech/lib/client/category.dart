import 'package:flutter/material.dart';
import 'package:sealtech/components/button.dart';

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
                  Stack(
                    children: [
                      Image.asset(
                        'lib/images/catServiceImage.png',
                        height: 287,
                        width: 180,
                      ),
                      Positioned(
                        bottom: 16,
                        left: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Service',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24, // Increase the font size
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Contact SEALTECH\nfor unbeatable\nwaterproofing solutions',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                            Button(buttonText: 'Contact Us', onPressed: (){}, width: 150, isStroked: true, color: 'white'),
                            SizedBox(height: 16,)
                          ],
                        ),
                      ),
                    ],
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
                    child: Stack(
                      children: [
                        Image.asset(
                          'lib/images/catToolsImage.png',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 16,
                          left: 16,
                          child: Text(
                            'Tools',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24, // Increase the font size
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Stack(
                    children: [
                      Image.asset(
                        'lib/images/catChemicalsImage.png',
                        height: 130,
                        width: 180,
                      ),
                      Positioned(
                        bottom: 16,
                        left: 16,
                        child: Text(
                          'Chemicals',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}