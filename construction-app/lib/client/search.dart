import 'package:flutter/material.dart';
import 'package:sealtech/components/theme.dart';
import 'package:sealtech/client/product.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<ProductPage> products = [
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Pool Waterproofing',
        subtitle: 'Service',
        price: '3 million LKR +'),
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Roof Waterproofing',
        subtitle: 'Service',
        price: '1 million LKR +'),
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Basement Sealing',
        subtitle: 'Service',
        price: '1.5 million LKR +'),
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Side walls Sealing',
        subtitle: 'Service',
        price: '2 million LKR +'),
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Concrete Sealing',
        subtitle: 'Service',
        price: '1 million LKR +'),
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Drill Machine',
        subtitle: 'Service',
        price: '9 500 LKR'),
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Screwdriver Set',
        subtitle: 'Service',
        price: '12 500 LKR'),
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Circular Saw',
        subtitle: 'Service',
        price: '5 000 LKR'),
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Adjustable Wrench',
        subtitle: 'Service',
        price: '7 500 LKR'),
    ProductPage(
        imagePath: 'lib/images/pro1.png',
        title: 'Pipe Wrench',
        subtitle: 'Service',
        price: '3 500 LKR'),
  ];

  List<ProductPage> filteredProducts = [];

  @override
  void initState() {
    filteredProducts = products;
    super.initState();
  }

  void filterProducts(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredProducts = products;
      } else {
        filteredProducts = products
            .where((product) =>
                product.title.toLowerCase().contains(query.toLowerCase()) ||
                product.subtitle.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Center(
          child: Image.asset(
            'lib/images/logo-word-no-background.png',
            width: 160,
          ),
        ),
        backgroundColor: bgColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              cursorColor: accent75,
              onChanged: filterProducts,
              decoration: InputDecoration(
                hintText: 'Search by Names, Categories or Keywords',
                hintStyle: const TextStyle(fontSize: 14),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: secondaryColor,
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return ListTile(
                  title: Text(product.title),
                  subtitle: Text(product.subtitle),
                  trailing: Text(product.price),
                  leading: Image.asset(product.imagePath),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
