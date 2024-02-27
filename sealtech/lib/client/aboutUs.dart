import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Image.asset('lib/images/logoIconBlack.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0,),
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
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "At SEALTECH, ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "we pride ourselves on being a pioneering force in the waterproofing industry, dedicated to delivering top-notch solutions that exceed our clients' expectations. Established in 1995, SEALTECH emerged from humble beginnings with a vision to revolutionize waterproofing practices across residential, commercial, and industrial sectors.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20,),
              Image.asset('lib/images/aboutus2.png'),
              SizedBox(height: 20,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Our journey ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "began when our founder, John Smith, recognized a critical need for durable, long-lasting waterproofing solutions amidst the burgeoning construction industry. With a relentless pursuit of excellence and a commitment to innovation, SEALTECH quickly gained traction as a trusted name synonymous with quality and reliability.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Over the years, ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "SEALTECH has evolved into a dynamic team of industry experts, equipped with cutting-edge technology and unmatched expertise to tackle even the most challenging waterproofing projects. Our unwavering dedication to research and development ensures that we stay ahead of the curve, continuously refining our techniques and embracing emerging trends to deliver unparalleled results.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}