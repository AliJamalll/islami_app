import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/modules/layout_view.dart';

import '../onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushNamed(OnboardingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Image.asset(
      'assets/images/Splash Screen2.png',
      fit: BoxFit.cover,
      height: mediaQuery.height,
      width: mediaQuery.width,
    );
  }
}
