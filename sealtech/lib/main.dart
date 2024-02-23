import 'package:flutter/material.dart';
import 'package:sealtech/client/product.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SignUpPage(),
      home: ProductPage(imagePath: 'lib/images/pro1.png', subtitle: 'Service', title: 'Swimming Pool\n(8ft)', price: '2 million LKR +',),
    );
  }
}
