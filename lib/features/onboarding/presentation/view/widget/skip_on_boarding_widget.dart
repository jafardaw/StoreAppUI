import 'package:flutter/material.dart';
import 'package:flutter_onboarding/ui/screens/signin_page.dart';

class SkipOnBoardingWidget extends StatelessWidget {
  const SkipOnBoardingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 20),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const SignIn()));
        }, //to login screen. We will update later
        child: const Text(
          'Skip',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
