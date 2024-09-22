import 'package:flutter/material.dart';
import 'package:flutter_onboarding/core/constants/constants.dart';
import 'package:flutter_onboarding/ui/screens/signin_page.dart';
import 'package:flutter_onboarding/ui/screens/widgets/profile_widget.dart';
import 'package:page_transition/page_transition.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Constants.primaryColor.withOpacity(.5),
                  width: 5.0,
                ),
              ),
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: ExactAssetImage('assets/images/profile.jpg'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width * .27,
              child: Row(
                children: [
                  Text(
                    'JaffarDaw',
                    style: TextStyle(
                      color: Constants.blackColor,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.done_outline),
                ],
              ),
            ),
            Text(
              'jafardaw0022@gmail.com',
              style: TextStyle(
                color: Constants.blackColor.withOpacity(.3),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SizedBox(
                // height: size.height * .7,
                // width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ProfileWidget(
                      icon: Icons.person,
                      title: 'My Profile',
                    ),
                    const ProfileWidget(
                      icon: Icons.settings,
                      title: 'Settings',
                    ),
                    const ProfileWidget(
                      icon: Icons.notifications,
                      title: 'Notifications',
                    ),
                    const ProfileWidget(
                      icon: Icons.chat,
                      title: 'FAQs',
                    ),
                    const ProfileWidget(
                      icon: Icons.share,
                      title: 'Share',
                    ),
                    ProfileWidget(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const SignIn(),
                                type: PageTransitionType.fade));
                      },
                      icon: Icons.logout,
                      title: 'Log Out',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
