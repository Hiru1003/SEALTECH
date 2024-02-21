import 'package:flutter/material.dart';

//Use the given below code segment to import a button in any file.

    // Button(
      //   buttonText: 'Press Me', //Add a text as you want
      //   enableIcon: true, //Set true if you want to show icon
      //   onPressed: () {
      //     print('Button pressed!'); //Add a function to perform on button press
      //   },
      //   color: 'black', //Set black or orange as you want
      //   isStroked: false, //Set true if you want to show stroked button and false for filled button
    // )

class Button extends StatelessWidget {
  final String buttonText;
  final bool enableIcon;
  final VoidCallback onPressed;
  final String color;
  final bool isStroked; // Add this parameter

  Button({
    required this.buttonText,
    this.enableIcon = true,
    required this.onPressed,
    this.color = 'orange',
    this.isStroked = false, // Set default value to false
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    Color borderColor;
    if (color == 'black') {
      buttonColor = Colors.black;
      borderColor = Colors.black;
    } else {
      buttonColor = Color(0xFFFF8400);
      borderColor = Color(0xFFFF8400);
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: onPressed,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isStroked ? Colors.transparent : buttonColor, // Set color to transparent if isStroked is true
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isStroked ? buttonColor : borderColor, // Set border color to buttonColor if isStroked is true
              width: 2,
            ),
          ),
          child: SizedBox(
            height: 50,
            width: 200,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(buttonText, style: TextStyle(color: isStroked ? buttonColor : Colors.white, fontSize: 16, fontWeight: FontWeight.w500)), // Set text color to buttonColor if isStroked is true
                  if (enableIcon) SizedBox(width: 10),
                  if (enableIcon) Icon(Icons.arrow_forward, color: isStroked ? buttonColor : Colors.white), // Set icon color to buttonColor if isStroked is true
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}