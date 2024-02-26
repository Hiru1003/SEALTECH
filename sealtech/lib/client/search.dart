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
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: primary25,
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                ),
              ),
            ),
          ],
        ),
      );
}
