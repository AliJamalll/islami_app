import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class CustomPrayTimes extends StatelessWidget {
  const CustomPrayTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 128,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [AppColor.PrimaryColor, AppColor.SecondryColor]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ASR',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                fontFamily: 'janna',
                color: AppColor.white),
          ),
          Text(
            '04:38',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                fontFamily: 'janna',
                color: AppColor.white),
          ),
          Text(
            'PM',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                fontFamily: 'janna',
                color: AppColor.white),
          )
        ],
      ),
    );
  }
}
