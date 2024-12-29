import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';

class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppAssets.timeScreen,
              ),
              fit: BoxFit.cover
          )
      ),
    );
  }
}
