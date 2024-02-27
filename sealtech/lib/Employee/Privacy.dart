import 'package:flutter/material.dart';
import 'package:sealtech/components/button.dart';
import 'package:sealtech/components/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Privacy And Security',
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
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "SEALTECH Waterproofing Company is dedicated to safeguarding the privacy of its users. This Privacy Policy delineates how we gather, employ, and uphold your personal data when you utilize the SEALTECH Waterproofing Company App.\nWe may collect various forms of personal information including your name, email address, phone number, and location to facilitate account registration and enhance user experience. Additionally, non-personal data such as device information, IP address, and usage patterns may be gathered to optimize our services and refine user interaction within the app.\nYour personal data is utilized to furnish and personalize our services, establish communication channels with you, and refine the app's functionality. Non-personal data aids us in analytical endeavors, trend monitoring, and overall app administration.\nWe do not engage in the sale, trade, or rental of your personal information to third parties. However, trusted service providers may be granted access to your data to assist in app operation and service delivery. Your information may also be disclosed in response to legal obligations or to safeguard our rights, property, or the safety of others.\nWe employ robust technical and organizational measures to safeguard your personal data against unauthorized access, alteration, disclosure, or destruction. Despite our stringent security protocols, it is imperative to acknowledge that no internet transmission method or electronic storage system is entirely foolproof.\nThe SEALTECH Waterproofing Company App is not intended for individuals under the age of 13, and we do not knowingly collect personal information from this demographic. If you suspect that we have inadvertently acquired information from a child under 13, please notify us promptly.\nWe reserve the prerogative to amend or update this Privacy Policy at any juncture. Such modifications become effective immediately upon their posting on the app. We encourage regular review of this Privacy Policy for any alterations or updates.\nIf you have queries or concerns regarding this Privacy Policy or our privacy practices, please reach out to us via the provided contact details.\nBy utilizing the SEALTECH Waterproofing Company App, you implicitly agree to the terms and stipulations outlined in this Privacy Policy.",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    activeColor: Colors.orange,
                    checkColor: Colors.white,
                  ),
                  const Text(
                    'I agree to the terms and conditions',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
              Center(
                child: Button(
                  buttonText: 'Continue',
                  enableIcon: false,
                  onPressed: () {
                    // Replace print with a logging framework
                    // logger.info('Button pressed!');
                  },
                  color: 'orange',
                  isStroked: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
