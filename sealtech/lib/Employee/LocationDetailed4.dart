import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealtech/components/theme.dart';

class LocationDetailed4_Page extends StatefulWidget {
  const LocationDetailed4_Page({
    super.key,
  });

  @override
  State<LocationDetailed4_Page> createState() => _LocationDetailed4_PageState();
}

class _LocationDetailed4_PageState extends State<LocationDetailed4_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Ongoing Locations',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
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
          backgroundColor: const Color.fromRGBO(251, 147, 0, 1),
        ),
        backgroundColor: const Color.fromRGBO(255, 252, 245, 1),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          'Chemical adding to Swimming Pool',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 70, 66, 68),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Image.asset(
                            'lib/images/filtering.png',
                            height: 200,
                          )),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 300,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 247, 219, 180),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Color.fromARGB(255, 59, 57, 57),
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(width: 35),
                              Expanded(
                                child: Text(
                                  'Deadline : 30th of April 2024',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 96, 94, 94),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_city,
                                    color: Color.fromARGB(255, 59, 57, 57),
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(width: 35),
                              Expanded(
                                child: Text(
                                  'No 230/A, Park Road, Colombo',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 96, 94, 94),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.construction,
                                    color: Color.fromARGB(255, 59, 57, 57),
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(width: 35),
                              Expanded(
                                child: Text(
                                  'Chemical adding to Swimming Pool',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 96, 94, 94),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.wallet,
                                    color: Color.fromARGB(255, 59, 57, 57),
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(width: 35),
                              Expanded(
                                child: Text(
                                  'Due Payment',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 96, 94, 94),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ]))));
  }
}
