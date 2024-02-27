import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset('lib/images/logoIconBlack.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16,),
              Text(
                'Waterproof  |  Seal  |  Protection',
                style: TextStyle(color: primaryColor),
                textAlign: TextAlign.left,
              ),
              Text(
                'About Our Company SEALTECH',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(height: 20,),
              Image.asset('lib/images/aboutus1.png'),
              SizedBox(height: 20,),
              Text(
                "At SEALTECH, we pride ourselves on being a pioneering force in the waterproofing industry, dedicated to delivering top-notch solutions that exceed our clients' expectations. Established in 1995, SEALTECH emerged from humble beginnings with a vision to revolutionize waterproofing practices across residential, commercial, and industrial sectors.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('lib/images/aboutus2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
