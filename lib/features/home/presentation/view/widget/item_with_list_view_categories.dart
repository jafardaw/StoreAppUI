import 'package:flutter/material.dart';
import 'package:flutter_onboarding/core/constants/constants.dart';

class ItemWithListViewCategories extends StatefulWidget {
  const ItemWithListViewCategories({
    super.key,
    required this.productsTypeIndex,
    required this.selectedIndex,
    required this.index,
  });

  final String productsTypeIndex;
  final int selectedIndex;
  final int index;

  @override
  State<ItemWithListViewCategories> createState() =>
      _ItemWithListViewCategoriesState();
}

class _ItemWithListViewCategoriesState
    extends State<ItemWithListViewCategories> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.productsTypeIndex,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: widget.selectedIndex == widget.index
            ? FontWeight.bold
            : FontWeight.w300,
        color: widget.selectedIndex == widget.index
            ? Constants.primaryColor
            : Constants.blackColor,
      ),
    );
  }
}
