import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';

class SibhaView extends StatelessWidget {
  const SibhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppAssets.tasbihScreen,
              ),
              fit: BoxFit.cover
          )
      ),
    );
  }
}
