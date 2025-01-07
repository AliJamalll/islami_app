import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_color.dart';

class CustomRadioList extends StatefulWidget {
  const CustomRadioList({super.key});

  @override
  State<CustomRadioList> createState() => _CustomRadioListState();
}

class _CustomRadioListState extends State<CustomRadioList> {
  bool isPlay = true;
  bool isListening = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      width: 390,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.PrimaryColor),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: isPlay
                  ? AssetImage(AppAssets.radioContainer2)
                  : AssetImage(AppAssets.radioContainer1),
              fit: BoxFit.fitWidth, // Adjust image scaling
              width: double.infinity, // Ensure it spans the width
            ),
          ),
          Positioned(
            left: 90,
            top: 20,
            child: Text(
              'Radio Ibrahim Al-Akdar',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: 'janna',
                  color: AppColor.SecondryColor),
            ),
          ),
          Positioned(
              bottom: -10,
              left: 150,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isPlay = !isPlay;
                        });
                      },
                      icon: isPlay
                          ? Icon(
                        Icons.pause,
                        size: 70,
                        color: AppColor.SecondryColor,
                      )
                          : Icon(
                        Icons.play_arrow_rounded,
                        size: 70,
                        color: AppColor.SecondryColor,
                      ))
                ],
              )),
          Positioned(
              bottom: 4,
              left: 220,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isListening = !isListening;
                        });
                      },
                      icon: isListening ? Icon(
                        Icons.volume_off,
                        size: 40,
                        color: AppColor.SecondryColor,
                      ) : Icon(
                        Icons.volume_up,
                        size: 40,
                        color: AppColor.SecondryColor,
                      )
                  )
                ],
              ))
        ],
      ),
    );
  }
}
