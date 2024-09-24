import 'package:flutter/material.dart';
import 'package:flutter_onboarding/core/constants/constants.dart';
import 'package:flutter_onboarding/models/products_model.dart';

class ItemWithListHorizntal extends StatefulWidget {
  const ItemWithListHorizntal({super.key, required this.index});
  final int index;

  @override
  State<ItemWithListHorizntal> createState() => _ItemWithListHorizntalState();
}

class _ItemWithListHorizntalState extends State<ItemWithListHorizntal> {
  @override
  Widget build(BuildContext context) {
    List<ProductsModel> productsList = ProductsModel.productsList;
    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }

    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Constants.primaryColor.withOpacity(.8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    bool isFavorited = toggleIsFavorated(
                        productsList[widget.index].isFavorated);
                    productsList[widget.index].isFavorated = isFavorited;
                  });
                },
                icon: Icon(
                  productsList[widget.index].isFavorated == true
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Constants.primaryColor,
                ),
                iconSize: 30,
              ),
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            top: 50,
            bottom: 50,
            child: Image.asset(productsList[widget.index].imageURL),
          ),
          Positioned(
            bottom: 15,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productsList[widget.index].category,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                Text(
                  productsList[widget.index].productName,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                r'$' + productsList[widget.index].price.toString(),
                style: TextStyle(color: Constants.primaryColor, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
