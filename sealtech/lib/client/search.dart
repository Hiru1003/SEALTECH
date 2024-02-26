import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Center(
            child: Image.asset('lib/images/logo-word-no-background.png', width: 160,),
          ),
          backgroundColor: bgColor,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search by Names, Categories or Keywords',
                  hintStyle: TextStyle(fontSize: 14),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: secondaryColor,
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Popular Searches',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Text(
                    'Clear All',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
