import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  CustomButton({required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(buttonText),
      color: Colors.blue,
      textColor: Colors.white,
    );
  }
}