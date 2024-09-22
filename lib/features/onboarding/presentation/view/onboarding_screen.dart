import 'package:flutter/material.dart';
import 'package:flutter_onboarding/core/constants/constants.dart';
import 'package:flutter_onboarding/core/util/images_gen.dart';
import 'package:flutter_onboarding/features/onboarding/presentation/view/widget/create_page.dart';
import 'package:flutter_onboarding/features/onboarding/presentation/view/widget/skip_on_boarding_widget.dart';

import '../../../../ui/screens/signin_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: const [
          SkipOnBoardingWidget(),
        ],
      ),
      body: buildOnboardingBody(context),
    );
  }

////////////////
//////////////

  Stack buildOnboardingBody(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          onPageChanged: (int page) {
            setState(() {
              currentIndex = page;
            });
          },
          controller: _pageController,
          children: [
            CreatePage(
              image: Assets.imagesDelevery,
              title: Constants.titleOne,
              description: Constants.descriptionOne,
            ),
            CreatePage(
              image: Assets.imagesReward,
              title: Constants.titleTwo,
              description: Constants.descriptionTwo,
            ),
            CreatePage(
              image: Assets.imagesDelevery,
              title: Constants.titleThree,
              description: Constants.descriptionThree,
            ),
          ],
        ),
        Positioned(
          bottom: 80,
          left: 30,
          child: Row(
            children: _buildIndicator(),
          ),
        ),
        Positioned(
          bottom: 60,
          right: 30,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Constants.primaryColor,
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    if (currentIndex < 2) {
                      currentIndex++;
                      if (currentIndex < 3) {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      }
                    } else {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => const SignIn()));
                    }
                  });
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }

  //Extra Widgets

  //Create the indicator decorations widget
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10.0,
      width: isActive ? 20 : 8,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

//Create the indicator list
  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
