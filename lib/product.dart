// product.dart
import 'dart:ui';

class Product {
  final String name;
  final String description;
  final double price;
  final String assetName;  // Asset for the product image
  final List<String> sizes;  // Available sizes for the product
  final List<Color> colors;  // Available colors for the product

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.assetName,
    required this.sizes,
    required this.colors, required String assetPackage,
  });
}
