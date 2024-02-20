import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final bool enableIcon;
  final VoidCallback onPressed;
  final String color;

  Button({
    required this.buttonText,
    this.enableIcon = true,
    required this.onPressed,
    this.color = 'orange',
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    if (color == 'black') {
      buttonColor = Colors.black;
    } else {
      buttonColor = Color(0xFFFF8400);
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: onPressed,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: SizedBox(
            height: 50,
            width: 200,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(buttonText, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)),
                  if (enableIcon) SizedBox(width: 10), // Add space
                  if (enableIcon) Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}