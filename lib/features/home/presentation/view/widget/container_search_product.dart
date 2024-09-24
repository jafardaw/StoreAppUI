import 'package:flutter/material.dart';
import 'package:flutter_onboarding/core/constants/constants.dart';

class ContainerSerarchWidget extends StatelessWidget {
  const ContainerSerarchWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            width: size.width * .9,
            decoration: BoxDecoration(
              color: Constants.primaryColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black54.withOpacity(.6),
                ),
                const Expanded(
                    child: TextField(
                  showCursor: false,
                  decoration: InputDecoration(
                    hintText: 'Search Products',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                )),
                Icon(
                  Icons.mic,
                  color: Colors.black54.withOpacity(.6),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
