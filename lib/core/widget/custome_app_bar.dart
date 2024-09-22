import 'package:flutter/material.dart';
import 'package:flutter_onboarding/core/constants/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final List<Widget>? leadingWidgets;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leadingWidgets,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0.0,
      leading: (leadingWidgets != null && leadingWidgets!.isNotEmpty)
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: leadingWidgets!,
            )
          : null,
      title: CircleAvatar(
        backgroundColor: Constants.primaryColor,
        radius: 160,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
