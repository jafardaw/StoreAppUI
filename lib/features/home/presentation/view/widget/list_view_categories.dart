import 'package:flutter/material.dart';
import 'package:flutter_onboarding/core/constants/constants.dart';
import 'package:flutter_onboarding/features/home/presentation/view/widget/item_with_list_view_categories.dart';

class ListViewCategories extends StatefulWidget {
  const ListViewCategories({
    super.key,
  });
  // final List<ProductsModel> productsList;

  @override
  State<ListViewCategories> createState() => _ListViewCategoriesState();
}

class _ListViewCategoriesState extends State<ListViewCategories> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 50.0,
      width: size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Constants.productsTypes.length,
          itemBuilder: (BuildContext context, int index) {
            var productsTypeIndex = Constants.productsTypes[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  selectedIndex = selectIndexMethod(selectedIndex, index);
                },
                child: ItemWithListViewCategories(
                  productsTypeIndex: productsTypeIndex,
                  selectedIndex: selectedIndex,
                  index: index,
                ),
              ),
            );
          }),
    );
  }

  int selectIndexMethod(int selectedIndex, int index) {
    setState(() {
      selectedIndex = index;
      print('selectedIndex: $selectedIndex');
    });
    return selectedIndex;
  }
}
