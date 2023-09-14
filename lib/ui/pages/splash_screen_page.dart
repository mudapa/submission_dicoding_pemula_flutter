import 'package:flutter/material.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'main_page.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Animated Splash Screen
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/logo.png',
      ),
      nextScreen: const MainPage(),
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      backgroundColor: Colors.white,
    );
  }
}
