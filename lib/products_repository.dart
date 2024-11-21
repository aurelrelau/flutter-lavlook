import 'package:flutter/material.dart';  // To use Color
import 'product.dart';  // Import your Product model

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    // You can filter products based on category if needed
    // For now, we'll just return all products for simplicity

    return [
      Product(
        name: 'Product 1',
        assetName: 'assets/images/padded.jpg',
        assetPackage: 'shrine',
        price: 29.99,
        description: 'A stylish padded jacket perfect for winter.',
        sizes: ['S', 'M', 'L'],
        colors: [Colors.red, Colors.blue, Colors.green],
      ),
      Product(
        name: 'Product 2',
        assetName: 'assets/images/green.jpg',
        assetPackage: 'shrine',
        price: 49.99,
        description: 'A sleek green T-shirt for casual outings.',
        sizes: ['M', 'L', 'XL'],
        colors: [Colors.green, Colors.black],
      ),
      Product(
        name: 'Product 3',
        assetName: 'assets/images/black.jpg',
        assetPackage: 'shrine',
        price: 19.99,
        description: 'Classic black sneakers for everyday wear.',
        sizes: ['L', 'XL'],
        colors: [Colors.black, Colors.white],
      ),
      Product(
        name: 'Product 4',
        assetName: 'assets/images/5.png',
        assetPackage: 'shrine',
        price: 89.99,
        description: 'Premium leather bag with plenty of storage.',
        sizes: ['One Size'],
        colors: [Colors.brown, Colors.black],
      ),
      Product(
        name: 'Product 5',
        assetName: 'assets/images/white.jpg',
        assetPackage: 'shrine',
        price: 19.99,
        description: 'White hoodie with comfortable fit.',
        sizes: ['M', 'L', 'XL'],
        colors: [Colors.white, Colors.grey],
      ),
      Product(
        name: 'Product 6',
        assetName: 'assets/images/6.jpg',
        assetPackage: 'shrine',
        price: 89.99,
        description: 'Stylish watch with modern design.',
        sizes: ['One Size'],
        colors: [Colors.black, Colors.white],
      ),
    ];
  }
}

enum Category { all, clothing, accessories, footwear }
