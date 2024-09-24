import 'package:flutter/material.dart';
import 'package:flutter_onboarding/core/widget/products_widget.dart';
import 'package:flutter_onboarding/models/products_model.dart';
import 'package:flutter_onboarding/ui/screens/detail_page.dart';
import 'package:page_transition/page_transition.dart';

class NewProductsListView extends StatelessWidget {
  const NewProductsListView({
    super.key,
    required this.size,
    required this.productsList,
  });

  final Size size;
  final List<ProductsModel> productsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: size.height * .5,
      child: ListView.builder(
          itemCount: productsList.length,
          // scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: DetailPage(
                            productsId: productsList[index].productId),
                        type: PageTransitionType.bottomToTop));
              },
              child: ProductsWidget(index: index, productsList: productsList),
            );
          }),
    );
  }
}
