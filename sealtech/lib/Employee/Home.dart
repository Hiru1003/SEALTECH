import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealtech/components/button.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({
    super.key,
  });

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'lib/images/logo-word-no-background.png',
                  height: 20,
                )
              ],
            ),
          ),
          titleSpacing: 4.0,
          toolbarHeight: 65,
          toolbarOpacity: 0.9,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18)),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          elevation: 0.00,
          backgroundColor: Color.fromRGBO(251, 147, 0, 1),
        ),
        backgroundColor: const Color.fromRGBO(255, 252, 245, 1),
        body: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 219, 180),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7),
                      Text(
                        'Ongoing Locations',
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyText1,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 9),
                      Text(
                        'View more site locations \nand get to know the site \nthat completed and \nongoing\n',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: const Color.fromARGB(255, 70, 66, 68),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 23, 22, 22),
                          side: const BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: const Text('View More Details'),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'lib/images/home_emp.png',
                          height: 190,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text('Catergory',
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 70, 66, 68),
              )),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 241, 192),
                  border: Border.all(
                    color: Color.fromARGB(255, 248, 241, 192),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_month),
                      SizedBox(height: 5),
                      Text('Holidays'),
                    ])),
            SizedBox(width: 20),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 241, 192),
                border: Border.all(
                  color: Color.fromARGB(255, 248, 241, 192),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat_bubble_rounded),
                  SizedBox(height: 5),
                  Text('Appointment'),
                ],
              ),
            ),
            SizedBox(width: 20), // Add space between containers
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 241, 192),
                border: Border.all(
                  color: Color.fromARGB(255, 248, 241, 192),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_view_week),
                  SizedBox(height: 5),
                  Text('Attendance'),
                ],
              ),
            ),
          ])
        ])));
  }
}
