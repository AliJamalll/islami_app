import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class CustomOnBoarding extends StatelessWidget {
  CustomOnBoarding(
      {super.key, required this.title, required this.image, this.desc});

  String image;
  String title;
  String? desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: AppColor.PrimaryColor),
          ),
          SizedBox(height: 25),
          Expanded(
            child: Text(
              desc!,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: AppColor.PrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
