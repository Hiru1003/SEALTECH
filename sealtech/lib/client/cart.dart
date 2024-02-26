import 'package:flutter/material.dart';
import 'package:sealtech/client/cartItem.dart';

class Cart extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
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
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CartItem(
                  imageAsset: 'lib/images/pro1.png',
                  productName: 'Swimming Pool (8ft)',
                  productDescription: 'Service',
                  productPrice: '2 million LKR +',
                ),
                CartItem(
                  imageAsset: 'lib/images/pro1.png',
                  productName: 'Garden Landscaping',
                  productDescription: 'Service',
                  productPrice: '1.5 million LKR +',
                ),
                CartItem(
                  imageAsset: 'lib/images/pro1.png',
                  productName: 'Home Renovation',
                  productDescription: 'Service',
                  productPrice: '3 million LKR +',
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
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
                          child: Text('Text 2'),
                        ),
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      );
}
