import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:matchday_app/main.dart';
import 'package:matchday_app/pages/home_page.dart';
import 'package:matchday_app/pages/onboarding_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color(0xFFFAFAFA),
      duration: 1000,
      splashIconSize: double.infinity,
      splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset(
                'assets/icon.png',
                scale: 5,
              ),
            ),
          ],
        ),
      ),
      nextScreen: initScreen == 0 || initScreen == null
          ? const OnBoardingPage()
          : const HomePage(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
