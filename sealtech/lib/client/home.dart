import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealtech/client/feedback.dart';
import 'package:sealtech/client/product.dart';
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 24,),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16),
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
              SizedBox(height: 5,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Swimming Pool\n(8ft)', subtitle: 'Service', price: '2 million LKR +'),
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Swimming Pool\n(8ft)', subtitle: 'Service', price: '2 million LKR +'),
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Swimming Pool\n(8ft)', subtitle: 'Service', price: '2 million LKR +'),
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Swimming Pool\n(8ft)', subtitle: 'Service', price: '2 million LKR +'),
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Swimming Pool\n(8ft)', subtitle: 'Service', price: '2 million LKR +'),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Category', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.bold, color: primaryColor)),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 112,
                    height: 100,
                    decoration: BoxDecoration(
                      color: primary25,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/catService.png'),
                        SizedBox(height: 5,),
                        Text('Services'),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 112,
                    height: 100,
                    decoration: BoxDecoration(
                      color: primary25,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/catTools.png'),
                        SizedBox(height: 5,),
                        Text('Tools'),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 112,
                    height: 100,
                    decoration: BoxDecoration(
                      color: primary25,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/catChemicals.png'),
                        SizedBox(height: 5,),
                        Text('Chemicals'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Featured', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.bold, color: primaryColor)),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Waterproofing\nSolution', subtitle: 'Product', price: '1 million LKR +'),
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Waterproofing\nSolution', subtitle: 'Product', price: '1 million LKR +'),
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Waterproofing\nSolution', subtitle: 'Product', price: '1 million LKR +'),
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Waterproofing\nSolution', subtitle: 'Product', price: '1 million LKR +'),
                    ProductPage(imagePath: 'lib/images/pro1.png', title: 'Waterproofing\nSolution', subtitle: 'Product', price: '1 million LKR +'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Feedback', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.bold, color: primaryColor)),
              ),
              SizedBox(height: 10),
              FeedbackTemplate(
                title: 'Your title',
                additionalText: 'Your additional text',
                stars: [Icons.star, Icons.star, Icons.star, Icons.star_half,Icons.star_border],
                comment: 'Your comment',
              ),
              SizedBox(height: 16,),
              FeedbackTemplate(
                title: 'Your title',
                additionalText: 'Your additional text',
                stars: [Icons.star, Icons.star, Icons.star, Icons.star_half,Icons.star_border],
                comment: 'Your comment',
              )
            ],
          ),
        ),
      );
}
