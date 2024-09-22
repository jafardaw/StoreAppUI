import 'package:flutter/material.dart';
import 'package:flutter_onboarding/core/constants/constants.dart';
import 'package:flutter_onboarding/models/products_model.dart';
import 'package:flutter_onboarding/ui/screens/widgets/products_widget.dart';

class FavoritePage extends StatefulWidget {
  final List<ProductsModel> favoritedProducts;
  const FavoritePage({super.key, required this.favoritedProducts});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.favoritedProducts.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 100,
                      child: FittedBox(
                        child: Icon(
                          size: 130,
                          Icons.favorite_border_outlined,
                          color: Constants.primaryColor,
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your favorited Products',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              // height: size.height * .5,
              child: ListView.builder(
                  itemCount: widget.favoritedProducts.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductsWidget(
                        index: index, productsList: widget.favoritedProducts);
                  }),
            ),
    );
  }
}
