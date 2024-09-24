import 'package:flutter/material.dart';
import 'package:flutter_onboarding/features/home/presentation/view/widget/item_with_list_horizntal.dart';
import 'package:flutter_onboarding/models/products_model.dart';
import 'package:flutter_onboarding/ui/screens/detail_page.dart';
import 'package:page_transition/page_transition.dart';

class ListViewHorizental extends StatefulWidget {
  const ListViewHorizental({
    super.key,
  });
  // final List<ProductsModel> productsList;

  @override
  State<ListViewHorizental> createState() => _ListViewCategoriesState();
}

class _ListViewCategoriesState extends State<ListViewHorizental> {
  @override
  Widget build(BuildContext context) {
    List<ProductsModel> productsList = ProductsModel.productsList;

    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .3,
      child: ListView.builder(
          itemCount: productsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: DetailPage(
                            productsId: productsList[index].productId,
                          ),
                          type: PageTransitionType.bottomToTop));
                },
                child: ItemWithListHorizntal(
                  index: index,
                ));
          }),
    );
  }
}
