import 'package:flutter/material.dart';
import 'product.dart';  // Make sure to import your Product model

class DetailPage extends StatelessWidget {
  final Product description;  // The product passed to the DetailPage

  // Constructor to accept the product object
  DetailPage({required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(description.name),  // Title of the AppBar with the product name
        backgroundColor: Colors.black,  // Set a background color for the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),  // Add padding around the content
        child: SingleChildScrollView(  // To make sure the content is scrollable
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              Center(
                child: Image.asset(description.assetName, fit: BoxFit.cover), 
              ),
              SizedBox(height: 16),  // Space between image and text

              // Product Name
              Text(
                description.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),  // Space after product name

              // Product Price
              Text(
                '\$${description.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),  // Space after price

              // Product Description
              Text(
                description.description,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 16),  // Space after description

              // Available Sizes
              Text(
                'Available Sizes:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: description.sizes.map((size) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Chip(label: Text(size)),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),  // Space after sizes

              // Color Selection
              Text(
                'Choose Color:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: description.colors.map((color) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      backgroundColor: color,
                      radius: 20,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),  // Space after color options

              // Add to Cart Button
              ElevatedButton.icon(
                onPressed: () {
                  // Implement your add-to-cart logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Added to cart!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(double.infinity, 50),  // Full width button
                ),
                icon: Icon(Icons.shopping_cart),
                label: Text('Add to Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
