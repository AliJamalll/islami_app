import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class CustomAzkarWidget extends StatelessWidget {
  const CustomAzkarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: AppColor.PrimaryColor
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/bell-icon 1.png',fit: BoxFit.cover,
                height: 150,
                width: 150,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Evening Azkar',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: 'janna',
                    color: AppColor.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
