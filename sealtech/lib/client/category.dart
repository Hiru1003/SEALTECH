import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealtech/components/button.dart';
import 'package:sealtech/components/theme.dart';

class Category extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text('Category'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset('lib/images/logoIconBlack.png'),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
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
                                  const Text(
                                    'Service',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Contact SEALTECH\nfor unbeatable\nwaterproofing solutions',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                  ),
                                  Button(buttonText: 'Contact Us', onPressed: (){}, width: 150, isStroked: true, color: 'white'),
                                  const SizedBox(height: 16,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
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
                              const Positioned(
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
                        const SizedBox(height: 16),
                        Stack(
                          children: [
                            Image.asset(
                              'lib/images/catChemicalsImage.png',
                              height: 130,
                              width: 180,
                            ),
                            const Positioned(
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
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 304),
                  child: Text('Service', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.bold, color: primaryColor)),
                ),
              ],
            ),
          ),
        ),
      );
}