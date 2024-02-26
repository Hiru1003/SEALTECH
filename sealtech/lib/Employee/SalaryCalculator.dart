import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealtech/components/button.dart';
import 'package:sealtech/components/theme.dart';

class Salary_Page extends StatefulWidget {
  const Salary_Page({
    Key? key,
  }) : super(key: key);

  @override
  State<Salary_Page> createState() => _Salary_PageState();
}

class _Salary_PageState extends State<Salary_Page> {
  double basicSalary = 0.0;
  double overtimeHours = 0.0;
  double calculatedSalary = 0.0;

  void calculateSalary() {
    if (overtimeHours < 5) {
      calculatedSalary = basicSalary * 1000;
    } else if (overtimeHours < 10) {
      calculatedSalary = basicSalary * 1300;
    } else if (overtimeHours < 15) {
      calculatedSalary = basicSalary * 1600;
    } else {
      calculatedSalary = basicSalary * 2500; // Maximum multiplier
    }
  }

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
                'Salary Calculator',
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
          child: Column(
            children: [
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Image.asset(
                      'lib/images/salaryimage.png',
                      height: 180,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      basicSalary = double.tryParse(value) ?? 0.0;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: ' Enter basic salary',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    border: const UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      overtimeHours = double.tryParse(value) ?? 0.0;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: ' Enter no:of hours of overtime',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    border: const UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Button(
                  buttonText: 'Calculate',
                  onPressed: () {
                    setState(() {
                      calculateSalary();
                    });
                  },
                  color: 'orange',
                  enableIcon: false,
                  isStroked: false,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Calculated Salary: $calculatedSalary',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
