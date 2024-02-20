import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final bool enableIcon;
  final VoidCallback onPressed;
  final Color color; // Change this to a single Color

  Button({
    required this.buttonText,
    this.enableIcon = true,
    required this.onPressed,
    this.color = const Color.fromARGB(255, 64, 205, 205), // Set default color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: onPressed,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color, // Use the color parameter here
            borderRadius: BorderRadius.circular(8),
          ),
          child: SizedBox(
            height: 50,
            width: 200,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(buttonText, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                  if (enableIcon) Icon(Icons.arrow_forward, color: Colors.black),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}