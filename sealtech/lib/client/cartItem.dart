import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealtech/components/theme.dart';

class CartItem extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 208), child: Image.asset('lib/images/pro1.png')),
              Padding(
                padding: EdgeInsets.only(top: 178.0, left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Swimming Pool (8ft)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text('Lorem ipsum dolor sit\namet consectetur...'),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: 'Price:',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '6,200 LKR',
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 24,),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Additional Text',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
