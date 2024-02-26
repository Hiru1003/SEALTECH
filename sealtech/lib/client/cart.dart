import 'package:flutter/material.dart';
import 'package:sealtech/client/cartItem.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key); // Added named 'key' parameter

  @override
  CartState createState() => CartState(); // Made the class public
}

class CartState extends State<Cart> { // Made the class public
  double subtotal = 0;

  void updateSubtotal(double price) {
    setState(() {
      subtotal += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Text('Cart'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset('lib/images/logoIconBlack.png'),
          ),
        ],
      ),
      body: SingleChildScrollView( // Removed unnecessary Container
        child: Column(
          children: [
            CartItem(
              imageAsset: 'lib/images/pro1.png',
              productName: 'Swimming Pool (8ft)',
              productDescription: 'Service',
              productPrice: 2000000.0, // Changed to double
              onQuantityChanged: (quantity) => updateSubtotal(2000000.0 * quantity),
            ),
            CartItem(
              imageAsset: 'lib/images/pro1.png',
              productName: 'Garden Landscaping',
              productDescription: 'Service',
              productPrice: 1500000.0, // Changed to double
              onQuantityChanged: (quantity) => updateSubtotal(1500000.0 * quantity),
            ),
            CartItem(
              imageAsset: 'lib/images/pro1.png',
              productName: 'Home Renovation',
              productDescription: 'Service',
              productPrice: 3000000.0, // Changed to double
              onQuantityChanged: (quantity) => updateSubtotal(3000000.0 * quantity),
            ),
            const SizedBox(height: 20,), // Added 'const'
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text( // Added 'const'
                        'Sub Total',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text('${subtotal.toStringAsFixed(2)} LKR'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
