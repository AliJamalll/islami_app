import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.quranScreen,
          ),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
