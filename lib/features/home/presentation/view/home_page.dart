import 'package:flutter/material.dart';
import 'package:flutter_onboarding/features/home/presentation/view/widget/container_search_product.dart';
import 'package:flutter_onboarding/features/home/presentation/view/widget/list_view_categories.dart';
import 'package:flutter_onboarding/features/home/presentation/view/widget/list_view_horizental.dart';
import 'package:flutter_onboarding/features/home/presentation/view/widget/new_products_list_view.dart';
import 'package:flutter_onboarding/models/products_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<ProductsModel> productsList = ProductsModel.productsList;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerSerarchWidget(size: size),
          const ListViewCategories(),
          const ListViewHorizental(),
          Container(
            padding: const EdgeInsets.only(left: 16, bottom: 20, top: 20),
            child: const Text(
              'New Products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          NewProductsListView(
            size: size,
            productsList: productsList,
          ),
        ],
      ),
    ));
  }
}
