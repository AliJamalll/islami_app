import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';

import '../../core/theme/app_color.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key,required this.imagePath,required this.isSelected});

  final bool isSelected;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),

        color: isSelected ? AppColor.SecondryColor.withOpacity(0.6) : null, // Fixed opacity
      ),
      child: ImageIcon(
        AssetImage(
          imagePath
        )
      ),
    );
  }
}
