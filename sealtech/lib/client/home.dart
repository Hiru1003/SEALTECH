import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealtech/components/button.dart';
import 'package:sealtech/components/theme.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Center(
            child: Image.asset('lib/images/logo-word-no-background.png', width: 160,),
          ),
          backgroundColor: primary75,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/home_client.png',),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 8,),
                        Text(
                          'Discover Unrivaled\nWaterproofing Services\nwith SealTech!',
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        Button(
                          buttonText: 'More',
                          onPressed: (){},
                          enableIcon: true,
                          color: 'black',
                          isStroked: true,
                          width: 150,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16), // Add padding for left
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'Popular',
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: ' Services and Essentials',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
