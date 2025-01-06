import 'package:flutter/material.dart';
import 'package:islami/modules/hadith/hadith_details_view.dart';
import 'package:islami/modules/layout_view.dart';
import 'package:islami/modules/quran/quran_details_view.dart';
import 'package:islami/splash/splash_screen.dart';

import 'onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        OnboardingScreen.routeName : (context) => const OnboardingScreen(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) =>  QuranDetailsView(),
        HadithDetailsView.routeName : (context) => const  HadithDetailsView(),

      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
