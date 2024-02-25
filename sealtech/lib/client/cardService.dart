import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';

class ServiceCard extends StatefulWidget {
  ServiceCard({Key? key}) : super(key: key);

  @override
  ServiceCardState createState() => ServiceCardState();
}

class ServiceCardState extends State<ServiceCard> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Product Info'),
          actions: [
            IconButton(
              icon: Image.asset('lib/images/logoIconBlack.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  Image.asset('lib/images/proInfo.png'),
                  Image.asset('lib/images/proInfo.png'),
                  Image.asset('lib/images/proInfo.png'),
                  Image.asset('lib/images/proInfo.png'),
                ],
              ),
            ),
            DotsIndicator(
              dotsCount: 4,
              position: _currentPage,
              decorator: DotsDecorator(
                activeColor: accent75,
                activeSize: const Size(48, 12),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                spacing: const EdgeInsets.all(4),
              ),
            ),
            SizedBox(height:32),
             Text('First line of text'),
             Text('Third line of text'),
             Text('Third line of text'),
          ],
        ),
      );
}
