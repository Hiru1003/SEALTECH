import 'package:flutter/material.dart';
import 'package:sealtech/components/button.dart';
import 'package:sealtech/components/theme.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Image.asset('lib/images/logo-no-background.png', width: 130,),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sign In and Start Exploring!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'inter',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '   Email',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: '   Password',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {

                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 110, 110, 110),
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
              
              SizedBox(height:20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Button(
                  buttonText: 'Sign In',
                  onPressed: () {
                    
                  },
                  color: 'orange',
                  enableIcon: false,
                  isStroked: false,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to SEALTECH?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // TODO: Implement signup functionality
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
