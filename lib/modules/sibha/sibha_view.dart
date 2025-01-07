import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_color.dart';

import '../../core/constants/app_assets.dart';

class SibhaView extends StatefulWidget {
  const SibhaView({super.key});

  @override
  State<SibhaView> createState() => _SibhaViewState();
}



class _SibhaViewState extends State<SibhaView> {
   int counter = 0;
   double angle = 0.9;
  void rotateImage(){
    setState(() {
      angle += 0.9;
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       Image(
            image: AssetImage(
              AppAssets.tasbihScreen,
            ),
            fit: BoxFit.cover,
         width: double.infinity,
       ),
        SafeArea(
          child: Center(
            child: Column(
            children: [
              Image.asset(
                'assets/images/Logo_quran_view.png',
                width: 298,
                height: 129,
              ),
              SizedBox(height: 16,),
              Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'janna',
                fontWeight: FontWeight.w700,
                color: AppColor.white
              ),
              ),
              SizedBox(height: 16,),
              Stack(
                children: [
                  Center(
                    child: Image(image: AssetImage(
                        AppAssets.firstPartSibha
                    )
                    ),
                  ),
                  Positioned(
                    top: 180,
                    left: 130,
                    child: Text("سبحان الله",
                      style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'janna',
                          fontWeight: FontWeight.w700,
                          color: AppColor.white
                      ),
                    ),
                  ),
                  Positioned(
                    top: 260,
                    left: 190,
                    child: Text(
                      counter.toString(),
                      style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'janna',
                          fontWeight: FontWeight.w700,
                          color: AppColor.white
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: rotateImage,
                    child: Transform.rotate(
                      angle: angle,
                      child: Image(image: AssetImage(
                          AppAssets.secondPartSibha
                      ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
            ),
          ),
        ),
      ],
    );
  }
}
