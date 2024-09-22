import 'package:flutter_onboarding/core/util/images_gen.dart';

class ProductsModel {
  final int productId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String measuerement;
  final String category;
  final String productName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  ProductsModel(
      {required this.productId,
      required this.price,
      required this.category,
      required this.productName,
      required this.size,
      required this.rating,
      required this.humidity,
      required this.measuerement,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of Products
  static List<ProductsModel> productsList = [
    ProductsModel(
        productId: 0,
        price: 22,
        category: 'Shoes',
        productName: 'Scins',
        size: 'Small',
        rating: 4.5,
        humidity: 34,
        measuerement: '23 - 34',
        imageURL: Assets.images1,
        isFavorated: false,
        decription:
            'This product is our best product and we offer products at the best prices with appropriate quality',
        isSelected: false),
    ProductsModel(
        productId: 1,
        price: 11,
        category: 'Watche',
        productName: 'rolex',
        size: 'Medium',
        rating: 4.8,
        humidity: 56,
        measuerement: '19 - 22',
        imageURL: Assets.images2,
        isFavorated: false,
        decription:
            'This product is our best product and we offer products at the best prices with appropriate quality',
        isSelected: false),
    ProductsModel(
        productId: 2,
        price: 18,
        category: 'Bags',
        productName: 'Guuses',
        size: 'Large',
        rating: 4.7,
        humidity: 34,
        measuerement: '22 - 25',
        imageURL: Assets.images3,
        isFavorated: false,
        decription:
            'This product is our best product and we offer products at the best prices with appropriate quality',
        isSelected: false),
    ProductsModel(
        productId: 3,
        price: 30,
        category: 'Bags',
        productName: 'NareBane',
        size: 'Small',
        rating: 4.5,
        humidity: 35,
        measuerement: '23 - 28',
        imageURL: Assets.images5,
        isFavorated: false,
        decription:
            'This product is our best product and we offer products at the best prices with appropriate quality',
        isSelected: false),
    ProductsModel(
        productId: 4,
        price: 24,
        category: 'Bags',
        productName: 'Big bag',
        size: 'Large',
        rating: 4.1,
        humidity: 66,
        measuerement: '12 - 16',
        imageURL: Assets.images4,
        isFavorated: true,
        decription:
            'This product is our best product and we offer products at the best prices with appropriate quality',
        isSelected: false),
    ProductsModel(
        productId: 5,
        price: 24,
        category: 'Shoes',
        productName: 'MetaHane',
        size: 'Medium',
        rating: 4.4,
        humidity: 36,
        measuerement: '15 - 18',
        imageURL: Assets.images6,
        isFavorated: false,
        decription:
            'This product is our best product and we offer products at the best prices with appropriate quality',
        isSelected: false),
    ProductsModel(
        productId: 6,
        price: 19,
        category: 'Nike',
        productName: 'Spore',
        size: 'Small',
        rating: 4.2,
        humidity: 46,
        measuerement: '23 - 26',
        imageURL: Assets.imagesShoz1,
        isFavorated: false,
        decription:
            'This product is our best product and we offer products at the best prices with appropriate quality',
        isSelected: false),
    ProductsModel(
        productId: 7,
        price: 23,
        category: 'Nike',
        productName: 'SporeShek',
        size: 'Medium',
        rating: 4.5,
        humidity: 34,
        measuerement: '21 - 24',
        imageURL: Assets.imagesShoze2,
        isFavorated: false,
        decription:
            'This product is our best product and we offer products at the best prices with appropriate quality',
        isSelected: false),
    ProductsModel(
        productId: 8,
        price: 46,
        category: 'Nike',
        productName: 'T_Shoes',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        measuerement: '21 - 25',
        imageURL: Assets.imagesShoze3,
        isFavorated: false,
        decription:
            'This product is our best product and we offer products at the best prices with appropriate quality',
        isSelected: false),
  ];

  //Get the favorated items
  static List<ProductsModel> getFavoritedProducts() {
    List<ProductsModel> travelList = ProductsModel.productsList;
    return travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<ProductsModel> addedToCartProducts() {
    List<ProductsModel> selectedProduct = ProductsModel.productsList;
    return selectedProduct
        .where((element) => element.isSelected == true)
        .toList();
  }
}
