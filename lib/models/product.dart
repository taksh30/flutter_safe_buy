import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.id,
      required this.color,
      required this.description,
      required this.image,
      required this.price,
      required this.size,
      required this.title});
}

List<Product> products = [
  Product(
    id: 1,
    title: "Smart Watch",
    price: 150,
    size: 44,
    description: "A Smart Watch with advanced features",
    image: "assets/smart_watch.jpg",
    color: Colors.brown,
  ),
  Product(
    id: 2,
    title: "Sports Shoes",
    price: 120,
    size: 10,
    description: "Comfortable sports shoes for everyday use.",
    image: "assets/sport_shoes.jpg",
    color: Colors.blue,
  ),
  Product(
    id: 3,
    title: "Leather Wallet",
    price: 80,
    size: 15,
    description: "Genuine leather wallet with multiple card slots.",
    image: "assets/leather_wallet.jpg",
    color: Colors.black,
  ),
  Product(
    id: 4,
    title: "Sunglasses",
    price: 60,
    size: 7,
    description: "Stylish sunglasses with UV protection.",
    image: "assets/sunglasses.jpg",
    color: Colors.grey,
  ),
  Product(
    id: 5,
    title: "Backpack",
    price: 100,
    size: 30,
    description: "Durable backpack with multiple compartments.",
    image: "assets/backpack.jpg",
    color: Colors.green,
  ),
  Product(
    id: 6,
    title: "Headphones",
    price: 130,
    size: 20,
    description: "Wireless headphones with noise cancellation.",
    image: "assets/headphones.jpg",
    color: Colors.red,
  ),
];
