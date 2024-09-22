import 'package:flutter/material.dart';

abstract class Constants {
  //Primary color
  static var blackColor = const Color.fromARGB(255, 13, 31, 62);
  static var primaryColor = Colors.orange;

  //Onboarding texts
  static var titleOne = "Shop Easily and Quickly";
  static var descriptionOne =
      "Discover the best products and explore their details effortlessly.";
  static var titleTwo = "Exclusive Deals and Discounts";
  static var descriptionTwo =
      "Get the best offers and exclusive discounts on your favorite products.";
  static var titleThree = "Fast and Secure Delivery";
  static var descriptionThree =
      "We deliver your products safely and quickly to your doorstep.";
  //Products category
  static const List<String> productsTypes = [
    'Shoes',
    'Watches',
    'Jewelry',
    'Hats',
    'Glasses',
  ];
}
