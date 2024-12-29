import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_color.dart';
import 'package:islami/onboarding_screen/widget/CustomOnBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = '/onboarding_screen';

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController(initialPage: 0);

  List<String> images = [
    AppAssets.welcome,
    AppAssets.mosce,
    AppAssets.quran,
    AppAssets.tsbih,
    AppAssets.mic
  ];

  List<String> titles = [
    'Welcome To Islmi App',
    'Welcome To Islami',
    'Reading the Quran',
    'Bearish',
    'Holy Quran Radio'
  ];

  List<String> desc = [
    '',
    'We Are Very Excited To Have You In Our Community',
    'Read, and your Lord is the Most Generous',
    'Praise the name of your Lord, the Most High',
    'You can listen to the Holy Quran Radio through the application for free and easily'
  ];

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    // Add listener to update selectedIndex on page change
    controller.addListener(() {
      setState(() {
        selectedIndex = controller.page?.round() ?? 0; // Update the selectedIndex
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.SecondryColor,
      body: Column(
        children: [
          SafeArea(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(AppAssets.islami),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return CustomOnBoarding(
                  image: images[index],
                  title: titles[index],
                  desc: desc[index],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(selectedIndex > 0)
                TextButton(
                  onPressed: () {
                    if (selectedIndex > 0) {
                      controller.animateToPage(
                        selectedIndex - 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColor.PrimaryColor),
                  ),
                ),
              Spacer(),
              SmoothPageIndicator(
                controller: controller,
                count: images.length,
                effect: SwapEffect(
                    dotColor: Colors.grey,
                    activeDotColor: AppColor.PrimaryColor),
              ),
              Spacer(),
              if (selectedIndex < images.length - 1)
              TextButton(
                onPressed: () {
                  if (selectedIndex < images.length - 1) {
                    controller.animateToPage(
                      selectedIndex + 1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColor.PrimaryColor),
                ),
              )
                else
                TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/LayoutView');
                },
               child: Text(
              'Finish',
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColor.PrimaryColor),
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

