import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String buttonText;
  final bool enableIcon;
  final VoidCallback onPressed;
  final List<Color> colors; // Add this line to add a colors parameter

  GradientButton({
    required this.buttonText,
    this.enableIcon = true,
    required this.onPressed,
    this.colors = const [Color.fromARGB(255, 64, 205, 205), Color.fromARGB(255, 134, 208, 203)], // Set default gradient colors
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: onPressed,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors, // Use the colors parameter here
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
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