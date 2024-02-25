import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';

class FeedbackTemplate extends StatelessWidget {
  final String title;
  final String additionalText;

  FeedbackTemplate({required this.title, required this.additionalText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 380,
        height: 100,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.star, color: primaryColor),
                    Icon(Icons.star, color: primaryColor),
                    Icon(Icons.star_half, color: primaryColor),
                    Icon(Icons.star_border, color: primaryColor),
                    Icon(Icons.star_border, color: primaryColor),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 16),
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontSize: 16)),
                    SizedBox(height: 4),
                    Text(additionalText, style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
